
<%@page isELIgnored="false"%>

<!-- navbar start -->
<nav class="navbar" id="navbar"
	style="background-color: rgb(243, 216, 243);">
	<div class="container-fluid">
		<a class="navbar-brand" href="fhome"> <img
			src="resources/projectImg/ss-letter-lion-royal-.jpg" alt="Logo"
			width="70px" height="50px" class="d-inline-block align-text-center ">
			Infinity
		</a>
		<!-- search -->
		<form class="d-flex" id="Search" role="search">
			<form class="d-flex" role="search">
				<input type="search" class="Search form-control mx-auto text-center"
					placeholder="Search for gold jewellery diamond jewellery and more...."
					aria-label="Search" aria-describedby="button-addon2">
				<button class="btn btn-outline-secondary" type="submit">Search</button>
			</form>


			<a href="flogin" id="p1"> <img
				src="resources/projectImg/user-solid.svg" alt="" width="50"
				height="20" class="d-flex"> Account
			</a> <a href="viewProducts" id="p1"> <img
				src="resources/projectImg/gem-regular.svg" alt="" width="50"
				height="20" class="d-flex"> Shoping
			</a>
			<div id="p1" data-bs-toggle="modal" data-bs-target="#cartModal">
				<img src="resources/projectImg/cart-shopping-solid.svg" alt=""
					width="50" height="20" class="">
				<div>
					Cart <span id="cart-items">(0)</span>
				</div>
			</div>
			<!-- <a href="#" id="p1"> <img
				src="resources/projectImg/heart-solid.svg" alt="" width="50"
				height="20" class="d-flex"> Wishlist
			</a> -->
	</div>
</nav>

<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cartModal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="cartModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog model-lg">
		<div class="modal-content">
			<div class="modal-header" style="background-color: rgb(192, 178, 192)  ;">
				<h5 class="modal-title" id="exampleModalLabel" >My Cart</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">

				<div id="cart-body"></div>
					
			</div>
			<div class="modal-footer" style="background-color: rgb(192, 178, 192)  ;">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary" id="checkout-btn">Checkout</button>
				<button class="btn btn-danger" onclick="removeAll()">RemoveAll</button>
				
			</div>
		</div>
	</div>
</div>

<!-- <script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script> -->
<script>
	
<%@include file="/WEB-INF/jsfolder/script.js"%>

</script>
