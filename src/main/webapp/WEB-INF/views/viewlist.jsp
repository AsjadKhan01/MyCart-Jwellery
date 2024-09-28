<%@page import="com.helper.helper"%>
<%@page import="com.dao.CategoryDao"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Product"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.service.ProductService"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Category"%>
<%@page import="com.service.CategoryService"%>
<%@page isELIgnored="false"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Infinity - viewList</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="/WEB-INF/cssfolder/style1.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style type="text/css">
<%@include file="/WEB-INF/cssfolder/style1.css"%>
<%@include file="/WEB-INF/cssfolder/navbar.css"%>

</style>
<style type="text/css">

#logbtn{
   display: block; 
   margin: auto 0;
   width: 210px;
  height: 40px;
  border-radius: 30px;
  background-color: #e2e2e2;
  font-size: 15px;
  cursor: pointer;
  
}
#logbtn:hover{
  width: 220px;
  height: 40px;
  
}

#cartbtn{
   display: block; 
   margin: auto 0;
   width: 110px;
  height: 40px;
  border-radius: 30px;
  background-color: #e2e2e2;
  font-size: 15px;
  cursor: pointer;
  margin: 10px;
  color: black;
}
#cartbtn:hover{
  width: 120px;
  height: 40px;
  background: silver;
  
}
</style>
<body>
	<%@include file="Component/navbar1.jsp"%>
    <%@include file="/WEB-INF/views/Component/successMsg.jsp"%>
    
	<%
	 String cat = request.getParameter("category");
	
	CategoryDao cdao = new CategoryDao(FactoryProvider.getfFactory());
	List<Category> clist = cdao.getTitleAndId();

	ProductDao pdao = new ProductDao(FactoryProvider.getfFactory());

 	List<Product> plist = null;
 	
 	if(cat==null || cat.trim().equals("all")){
		plist = pdao.getAllProducts();
	}else{
		int cid = Integer.parseInt(cat.trim());
	    plist = pdao.getAllProductsById(cid);
	} 
	%>
	
	<div class="row mt-3">
		<!-- show categories -->

		<div class="col-md-2">

			<div class="d-grid gap-2">
                   <button class="btn btn-secondary active" id="logbtn" type="button">
                      <a href="viewProducts?category=all"><h5>All Categories</h5></a>
                   </button>
			<%
			for (Category c : clist) {
			%>
		     <a href="viewProducts?category=<%=c.getCategoryId()%>">
		         <button type="button" id="logbtn" class="btn btn-outline-secondary mt-2"><%=c.getCategoryTitle() %>
		         </button>
		     </a>
			<%
			}
			%>
            </div>
		</div>
		<!-- show products -->
		<div class="col-md-10">
			<div class="row row-cols-1 row-cols-md-4 g-4">
				<%
				for (Product p : plist) {
				%>
				<div class="col">

					<div class="card h-100 product-card" style="box-shadow: 2px 2px 5px;">
						<img src="resources/images/<%=p.getProductPicName() %>" style="max-height:250px; max-width:100%; width:auto; backgroung-image:cover;" class="card-img-top m-0" alt="product image"> 
						<div class="card-body">
							<h5 class="card-title"><%=p.getProductName() %></h5>
							<p style="text-decoration: line-through; color: red; margin: 0px;"><b> &#8377;</b><%=p.getProductPrice() %></p>
							<p style="margin: 0px"> <b>&#8377;</b><%=p.getPriceAfterApplyDiscount() %>/-   <span class="text-secondary discount-lable"><%=p.getProductDiscount() %>% off </span></p> 
							<hr>
							<p class="card-text" style="color:black;"><%=helper.get10Words(p.getProcuctDesc()) %></p>
							
						</div>
		                <div class="card-footer" style="background-color: rgb(192, 178, 192)  ;">
		                
		                <button type="button" id="cartbtn" class="btn btn-outline-secondary" onclick="add_to_cart('<%=p.getProductId()%>' , '<%=p.getProductName()%>' , '<%=p.getPriceAfterApplyDiscount()%>')">
		                Add to Cart</button>
		                
		                 	<%-- <form action="mycart">
		                <input type="hidden" name="cartid" value="<%=p.getProductId()%>">
		                 <button type="submit" id="cartbtn" class="btn btn-primary">
		                Add to Cart2</button>
		                </form> --%>
		                
		                <!-- <button type="button" id="cartbtn" class="btn btn-outline-primary"> -->
		                     
		                <!-- </button> -->
		              	</div>
		              	<%--  --%>
					</div>
				</div>
				<%
				}
				if(plist.size()==0){
					out.print("<h3 style='text-align:center;'>No Product Available this type of Category !!</h3>");
				}
				%>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
		
		<%-- <script>
		<%@include file="/WEB-INF/jsfolder/script.js"%>
		</script> --%>
</body>
</html>