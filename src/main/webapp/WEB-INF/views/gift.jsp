<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="cssfolder/navbar.css">
  <link rel="stylesheet" href="cssfolder/gift.css">
  <title>Gift - Infinity</title>
  <style type="text/css">
       <%@include  file ="/WEB-INF/cssfolder/gift.css"  %>
  </style>
</head>

<body>

  <body>
    <div class="container1 m-1 p-1">
      <div class="item item1">
        <!-- navbar strat -->
        <nav class="navbar" id="navbar" style="background-color: rgb(243, 216, 243)  ;">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">
                <img src="resources/projectImg/ss-letter-lion-royal-.jpg" alt="Logo" width="70px" height="50px"
                  class="d-inline-block align-text-center ">
               <b>Infinity</b> 
              </a>
              <!-- search -->
              <form class="d-flex" id="Search" role="search">
                <form class="d-flex" role="search">
                  <input type="search" class="Search form-control mx-auto text-center"
                    placeholder="Search for gold jewellery diamond jewellery and more...." aria-label="Search"
                    aria-describedby="button-addon2">
                  <button class="btn btn-outline-secondary" type="submit">Search</button>
                </form>
               
    
                <a href="#" id="p1">
                  <img src="resources/projectImg/user-solid.svg" alt="" width="50" height="20" class="d-flex">
                  Account
                </a>
                <a href="#" id="p1">
                  <img src="resources/projectImg/gem-regular.svg" alt="" width="50" height="20" class="d-flex">
                  Diamond
                </a>
                <a href="#" id="p1">
                  <img src="resources/projectImg/cart-shopping-solid.svg" alt="" width="50" height="20" class="d-flex">
                  Cart
                </a>
                <!-- <a href="#" id="p1">
                  <img src="image/heart-solid.svg" alt="" width="50" height="20" class="d-flex">
                  Wishlist
                </a> -->
            </div>
          </nav>
        </div>
        
      
      <div class="item item2">
        <!-- 2ndnavbar -->
        <div class="item item2 mt-5">
            <div class="dropdown d-flex ml-10">
              
      
              <a class="btn  dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
               All jewellery
              </a>
      
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
               
                <li><a class="dropdown-item" href="earring.html">Earrings</a></li>
                <li><a class="dropdown-item" href="pendant.html">pendant</a></li>
                <li><a class="dropdown-item" href="necklace.html">necklace</a></li>
                <li><a class="dropdown-item" href="ring.html">Finger Ring</a></li>
                <li><a class="dropdown-item" href="mangalsutra.html">Mangalsutra</a></li>
              </ul>
      
              
              <a class="btn btn- dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                Diamond
              </a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
              <a class="btn btn- dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                Gold
              </a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
              <a class="btn btn- dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                Collection
              </a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="mangalsutra.html">mangalsutra</a></li>
                <li><a class="dropdown-item" href="braclet.html">bracelet</a></li>
                <li><a class="dropdown-item" href="pendant.html">pendant</a></li>
                <li><a class="dropdown-item" href="bangles.html">bangles</a></li>
                <li><a class="dropdown-item" href="ring.html">Ring</a></li>
                <li><a class="dropdown-item" href="necklace.html">necklace</a></li>
              </ul>
              <a class="btn btn- dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                Gifting
              </a>
      
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="ring.html">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
              <a class="btn btn- dropdown-toggle" href="ring.html" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                Rings
              </a>
      
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="ring.html">couple Ring</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
              <a class="btn btn- dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                aria-expanded="false">
                Earrings
              </a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="earring.html">daimond earring</a></li>
                <li><a class="dropdown-item" href="gold.html">gold earring</a></li>
              </ul>
      <!-- 
              <a href="index.html" id="p1">
                Home
              </a> -->
              <a class="btn dropdown-toggle" href="index.html" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
              aria-expanded="false">
              Home
            </a>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <li><a class="dropdown-item" href="index.html">home</a></li>
            </ul>
            </div>
          </div>

      </div>
      <div class="item item3">
        <div class="card" style="width: 100%; height: 100%;">
          <img src="resources/projectImg/Rings/headerbannerdesktop.webp" class="card-img-top" alt="...">
        </div>
      </div>
      <div class="item item4">
        <div class="card" style="width: 100%;">
            <a href="fring">
          <img  style="height: 300px;" src="resources/projectImg/Rings/ring3.jpg" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">engagement Gifts</p></a>
          </div>
        </div>
      </div>
      <div class="item item5">
        <div class="card" style="width: 100%;">
            <a href="fearring">
          <img src="resources/projectImg/Rings/giftsformom.webp" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">Gift for mom</p></a>
          </div>
        </div>
      </div>
      <div class="item item6">
        <div class="card" style="width: 100%;">
            <a href="pendant.html">
          <img style="height: 300px;" src="resources/projectImg/Rings/pendant.jpg" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">Gift for her</p></a>
          </div>
        </div>
      </div>
      <div class="item item7">
        <div class="card" style="width: 100%;">
            <a href="bangles.html">
          <img src="resources/projectImg/Rings/giftsformom.webp" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">Birthday And Anniversary</p></a>
          </div>
        </div>
      </div>
      <div class="item item8">
        <div class="card" style="width: 100%;">
            <a href="braclet.html">
          <img src="resources/projectImg/Rings/bracletttt.jpg" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">Gift for yourself</p></a>
          </div>
        </div>
      </div>
      <div class="item item9">
        <div class="card" style="width: 100%;">
            <a href="necklace.html">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTebd5nQJZJVnQwh6RcPx6a9V_pWmPPzDn_vA&usqp=CAU" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">necklace for loved one</p></a>
          </div>
        </div>
      </div>
      <div class="item item10">
        <div class="card" style="width: 100%;">
          <img src="resources/projectImg/Rings/giftsfordad.webp" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">Birthday And Anniversary</p>
          </div>
        </div>
      </div>
      <div class="item item11">
        <div class="card" style="width: 100%;">
          <img src="resources/projectImg/Rings/giftsfordad.webp" class="card-img-top" alt="...">
          <div class="card-body"><hr>
            <p class="card-text">Birthday And Anniversary</p>
          </div>
        </div>
      </div>
      
      
      
        
      <div class="item item13">

        <div class="container2">
            <footer class="footer py-5">
              <div class="row">
                <div class="col-6 col-md-2 mb-3">
                  <h5>Userful Link</h5>
                  <ul class="nav flex-column">
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
                  </ul>
                </div>
      
                <div class="col-6 col-md-2 mb-3">
                  <h5>Information</h5>
                  <ul class="nav flex-column">
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">career</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">blogs</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">contact</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
                  </ul>
                </div>
      
                <div class="col-6 col-md-2 mb-3">
                  <h5>Contact us</h5>
                  <ul class="nav flex-column">
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
                  </ul>
                </div>
      
                <div class="col-md-5 offset-md-1 mb-3">
                  <form>
                    <h5>Subscribe to our newsletter</h5>
                    <p>Monthly digest of what's new and exciting from us.</p>
                    <div class="d-flex flex-column flex-sm-row w-100 gap-2">
                      <label for="newsletter1" class="visually-hidden">Email address</label>
                      <input id="newsletter1" type="text" class="form-control" placeholder="Email address">
                      <button class="btn btn-primary" type="button">Subscribe</button>
                    </div>
                  </form>
                </div>
              </div>
      
              <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
                <p>&copy; 2022 Company, Inc. All rights reserved.</p>
                <ul class="list-unstyled d-flex">
                  <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24">
                        <use xlink:href="#twitter" />
                      </svg></a></li>
                  <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24">
                        <use xlink:href="#instagram" />
                      </svg></a></li>
                  <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24">
                        <use xlink:href="#facebook" />
                      </svg></a></li>
                </ul>
              </div>
            </footer>
          </div>
      
      
        </div>
      </div>
      
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>

</html>