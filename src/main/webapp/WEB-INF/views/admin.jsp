<%@page import="java.util.Map"%>
<%@page import="com.helper.helper"%>
<%@page import="org.hibernate.boot.model.source.internal.hbm.Helper"%>
<%@page import="com.model.Category" %>
<%@page import="com.dao.CategoryDao"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.service.CategoryService"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin</title>
<style type="text/css">

#logbtn{
   display: block; 
   margin: auto 0;
   width: 260px;
  height: 40px;
  border-radius: 30px;
  background-color: #e2e2e2;
  font-size: 15px;
  cursor: pointer;
  
}
#logbtn:hover{
  width: 270px;
  height: 40px;
  
}

#subbtn{
   display: block; 
   margin: auto 0;
   width: 150px;
  height: 40px;
  border-radius: 30px;
  background-color: #e2e2e2;
  font-size: 15px;
  cursor: pointer;
  margin: 10px;
  color: black;
}
#subbtn:hover{
  width: 220px;
  height: 40px;
  background: silver;
  
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
	<% 
	CategoryDao cdao = new CategoryDao(FactoryProvider.getfFactory());
    List<Category> list = cdao.getTitleAndId();
    
    //getting Count
    Map<String,Long> m = helper.getCounts(FactoryProvider.getfFactory());
	%>
	
<body style="background-color: #e2e2e2;">

<!-- top navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
       <!-- offcanvas button   -->
      
      <a class="navbar-brand me-auto ms-lg-0 ms-3 text-uppercase fw-bold" href="#" ><h2>Infinity</h2></a>
      
     
      <div class="collapse navbar-collapse" id="topNavBar" id="navbarSupportedContent">
          <div class="input-group my-3 my-lg-0">
            
            
          <ul class="navbar-nav mL-auto">

            <a class="nav-link active" aria-current="page" href="fhome">
              <button id="logbtn" type="button"> ${username} : <b>logout</b></button>
            </a>
          </ul>
      </div>
    </div>
  </nav> 
  <!-- navbar end -->

  
  
  <main class="mt-5 pt-3">
  <div class="container-fluid mt-4">
    <div class="row">
      <div class="col-md-12">
       
      </div>
    </div>
    <div class=" row">
      <div class="col-md-4 mb-3">
        <div class="card bg-primary text-white  text-center text-center hr">
          <div class="card-body py-5">
            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="56" fill="currentColor" class="bi bi-people-fill p-0" viewBox="0 0 16 16">
              <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5.784 6A2.24 2.24 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.3 6.3 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
            </svg>
            </div>
             <div class="card-body  text-center text-white p-0"><h3><%=m.get("userCount") %></h3></div>
            <div class="card-body  text-center text-white p-0"><h3>Users</h3></div>
          <div class="card-footer d-flex">
            <!-- View Details -->
            <span class="ms-auto">
              <i class="bi bi-chevron-right"></i>
            </span>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-3">
        <div class="card bg-warning text-white ">
          <div class="card-body text-center py-5"><svg xmlns="http://www.w3.org/2000/svg" width="70" height="56" fill="currentColor" class="bi bi-terminal-plus p-0" viewBox="0 0 16 16">
            <path d="M2 3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h5.5a.5.5 0 0 1 0 1H2a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h11a2 2 0 0 1 2 2v4a.5.5 0 0 1-1 0V4a1 1 0 0 0-1-1z"/>
            <path d="M3.146 5.146a.5.5 0 0 1 .708 0L5.177 6.47a.75.75 0 0 1 0 1.06L3.854 8.854a.5.5 0 1 1-.708-.708L4.293 7 3.146 5.854a.5.5 0 0 1 0-.708M5.5 9a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H6a.5.5 0 0 1-.5-.5M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 0 0 1 0v-1h1a.5.5 0 0 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
          </svg></div>
           <div class="card-body  text-center text-white p-0"><h3><%=m.get("productCount") %></h3></div>
           <div class="card-body  text-center text-white p-0"><h3>Products</h3></div>
          <div class="card-footer d-flex">
            <!-- View Details -->
            <span class="ms-auto">
              <i class="bi bi-chevron-right"></i>
            </span>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-3">
        <div class="card bg-success text-white h-100">
          <div class="card-body text-center py-5">
          <svg xmlns="http://www.w3.org/2000/svg" width="56" height="56" fill="currentColor" class="bi bi-tags-fill p-0" viewBox="0 0 16 16">
            <path d="M2 2a1 1 0 0 1 1-1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 2 6.586zm3.5 4a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3"/>
            <path d="M1.293 7.793A1 1 0 0 1 1 7.086V2a1 1 0 0 0-1 1v4.586a1 1 0 0 0 .293.707l7 7a1 1 0 0 0 1.414 0l.043-.043z"/>
          </svg>
          </div>
          <div class="card-body  text-center text-white p-0"><h3><%=list.size() %></h3></div>
           <div class="card-body  text-center text-white p-0"><h3>Category</h3></div>

          <div class="card-footer d-flex">
            <!-- View Details -->
            <span class="ms-auto">
              <i class="bi bi-chevron-right"></i>
            </span>
          </div>
        </div>
      </div>
      <!-- <div class="col-md-3 mb-3">
        <div class="card bg-danger text-white h-100">
          <div class="card-body  text-center">Danger Card</div>
          <div class="card-footer d-flex">
            View Details
            <span class="ms-auto">
              <i class="bi bi-chevron-right"></i>
            </span>
          </div>
        </div>
      </div>
    </div> -->
   <!--  -->
<!-- offcanvas button  -->

<!-- <div class="col-md-3 mb-3">
  <div class="card bg-danger text-white h-100">
    <div class="card-body py-5">Danger Card</div>
    <div class="card-footer d-flex">
      View Details
      <span class="ms-auto">
        <i class="bi bi-chevron-right"></i>
      </span>
    </div>
  </div>
</div>
</div> -->


    <div class="row">
      <div class="col-6 mt-4"  data-bs-toggle="modal"
				data-bs-target="#catModal">
        <div class="card">
          <div class="card bg-danger text-white text-center h-100">
          <!-- <div class="card-body text-center h-100"> -->
            <div class="container" data-bs-toggle="modal"
              data-bs-target="#add-categories-modal">
              <svg xmlns="http://www.w3.org/2000/svg" width="60" height="130" fill="currentColor" class="bi bi-building-fill-add" viewBox="0 0 16 16">
                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
              </svg>
            </div>
            <h5>click here</h5>
            <h4>Add categories</h1>
            <div class="card-footer d-flex">
            <!-- View Details -->
            <span class="ms-auto">
              <i class="bi bi-chevron-right"></i>
            </span>
          </div>
          </div>
        </div>
      </div>

      <div class="col-6 mt-4"  data-bs-toggle="modal"
				data-bs-target="#proModal">
        <div class="card" >
          <div class="card bg-info text-white text-center h-100">
            <div class="container">
              <svg xmlns="http://www.w3.org/2000/svg" width="60" height="130" fill="currentColor" class="bi bi-table" viewBox="0 0 16 16">
                <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm15 2h-4v3h4zm0 4h-4v3h4zm0 4h-4v3h3a1 1 0 0 0 1-1zm-5 3v-3H6v3zm-5 0v-3H1v2a1 1 0 0 0 1 1zm-4-4h4V8H1zm0-4h4V4H1zm5-3v3h4V4zm4 4H6v3h4z"/>
              </svg>
            </div>
            <h5>click here</h5>
            <h4>Add product</h1>
            <div class="card-footer d-flex">
            <!-- View Details -->
            <span class="ms-auto">
              <i class="bi bi-chevron-right"></i>
            </span>
          </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  

<!-- <div class="col-md-6 md-4" data-bs-toggle="modal"
				data-bs-target="#proModal"> -->
	<!-- Button trigger modal -->
	<!-- <button type="button" class="btn btn-primary mt-5"
			data-bs-toggle="modal" data-bs-target="#exampleModal">Launch
			demo modal</button> -->
<!-- -------------------------------------------------------------------------------------------- -->

	<!-- Modal Category Start -->
	<div class="modal fade" id="catModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header"  style="background-color: rgb(192, 178, 192)  ;">
					<h5 class="modal-title" id="exampleModalLabel">Add Category of
						Product</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="catagoryProcess" method="post">
						<div class="form-group">
							<input type="text" class="form-control" name="categoryTitle"
								placeholder="Enter categories tittle" required="required">
						</div>
						<div class="form-group mt-2">
							<textarea class="form-control" rows="" cols=""
								placeholder="Enter category describtion"
								name="categoryDescription" required="required"></textarea>
						</div>
						<div class="container mt-2">
							<button class="btn btn-outline-success" id="subbtn">Add categories</button>
							<button type="submit" class="btn btn-secondary" id="subbtn"
								data-bs-dismiss="modal">Close</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Model Category End -->

	<!-- Model Product Start -->
	<div class="modal fade" id="proModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="background-color: rgb(192, 178, 192)  ;">
					<h5 class="modal-title" id="exampleModalLabel" >Add Product</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<!-- Product Form -->
					<form action="productProcess" method="post"
						enctype="multipart/form-data">
						<div class="mb-3">
							<input type="text" placeholder="Product Name" name="pname"
								class="form-control" required="required">
						</div>
						<div class="mb-3">
							<input type="text" placeholder="Description" name="pdescription"
								class="form-control" required="required">
						</div>
						<div class="mb-3">
							<input type="number" placeholder="Prize" name="pprice"
								class="form-control" required="required">
						</div>
						<div class="mb-3">
							<input type="number" placeholder="Discount" name="pdiscount"
								class="form-control" required="required">
						</div>
						<div class="mb-3">
							<input type="number" placeholder="Quantity" name="pquantity"
								class="form-control" required="required">
						</div>

						<div class="mb-3">
							<label class="form-label" id="">Category</label> <select
								name="pcat" class="form-control">
								<%
								for(Category c : list){
	                             %>
								<option value="<%=c.getCategoryId()%>"><%=c.getCategoryTitle() %></option>
								<%
								}
								%>
							</select>
						</div>
						<div class="mb-3">
							<label for="formFile" class="form-label">Select Your
								Image</label> <input class="form-control" name="ppic" type="file"
								id="exampleFile">
						</div>
						<button type="submit" id="subbtn" class="btn btn-primary">Add Product</button>
						<button type="reset" id="subbtn" class="btn btn-primary">Reset</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Model Product End -->

</body>
</html>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</html>