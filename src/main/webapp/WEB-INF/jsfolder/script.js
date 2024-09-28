
function add_to_cart(pid,pname,pprice)
{	
		console.log(pid , pname , pprice);

	let cart = localStorage.getItem("cart");
	
	
	if(cart ==null){
		//no cart yet
		let products = [];
		let product ={productId : pid, productQuantity : 1 ,productName : pname,productPrice : pprice}
		products.push(product);
		localStorage.setItem("cart", JSON.stringify(products));
		console.log("Product is Added for the first Time");
		
	}else{
		//cart is already present
		let pCart = JSON.parse(cart);
		
		let oldProduct = pCart.find((item) => item.productId == pid);
		
		if(oldProduct)
		{
			//we have to increase the quantity
			oldProduct.productQuantity = oldProduct.productQuantity + 1;
			pCart.map((item)=>{
				
				if(item.productId == oldProduct.productId){
					item.productQuantity = oldProduct.productQuantity;
				}
			})
			localStorage.setItem("cart" , JSON.stringify(pCart));
			console.log("Product Quantity is Inreased");

		}else
		{
			//we have add the product
			let product =
			{productId : pid, productQuantity : 1 ,productName : pname,productPrice : pprice}
			pCart.push(product);
			localStorage.setItem("cart" , JSON.stringify(pCart));
			console.log("Product is Added");
		}
	}	
		update_cart();

}

//update cart

function update_cart()
{
	let cartString = localStorage.getItem("cart");
	let cart = JSON.parse(cartString);
	
	if(cart == null || cart.length == 0)
	{
		//there is no available in cart
		console.log("Cart is Empty !!");
		
		document.getElementById("cart-items").innerHTML="(0)";
	    document.getElementById("cart-body").innerHTML="<h3>Cart does,t have any item !!</h3>";
		document.getElementById("checkout-btn").disabled=true;

/*		$(.cart-items).html('(0)');
		$(.cart-body).html("<h1>Cart does,t have any item !!</h1>");
		$(.checkout-btn).addClass('disabled');*/
	}
	else{
		//there is some in cart to show
		console.log(cart); 
		console.log("hello there is somtimg to show you");
		document.getElementById("cart-items").innerHTML= "("+cart.length+")";
		
		let table = `
		
		  <table class="table">
		    <thead class="thread-light">
		      <tr>
		        <td>Item name</td>
		        <td>Price</td>
		        <td>Quantity</td>
		        <td>Total Price</td>
		        <td>Action</td>
		      </tr>
		    </thead>
		`;
		
		cart.map((item)=>{
			let x = JSON.stringify(item.productId);
			console.log("P-Name "+x);
			
			table+=`
			  <tr>
			  <td>${item.productName}</td>
			  <td>${item.productQuantity}</td>
			  <td>${item.product}</td>
			  <td>${item.productPrice * item.productQuantity}</td>
			  <td>${"*"}</td>
			  </tr>
			`
		})
		
		table = table + `</table>`
	    document.getElementById("cart-body").innerHTML=table;

	}
}
function removeAll(){localStorage.clear();}

update_cart();	
