<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home - Infinity</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="/WEB-INF/cssfolder/style1.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style type="text/css">
<%@include  file ="/WEB-INF/cssfolder/style1.css"  %>
<%@include  file ="/WEB-INF/cssfolder/navbar.css"  %>

</style>

</head>

<body>
	<div class="container1" id="container1">
	
		<!-- Navbar1 -->
		<div class="item item1">
			<%@include file="Component/navbar1.jsp" %>
		</div>		
		<!-- 2ndnavbar -->
		<div class="item item2 mt-5">
		   <%@include file="Component/navbar2.jsp" %>		   
	    </div>
	    
		<!-- carousel start -->
		<div class="item item2 mt-5">
			<div id="carouselExampleInterval" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" data-bs-interval="1500">
						<img style="height: 470px;" src="resources/projectImg/Diamond-web-banner-4.jpeg"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img style="height: 470px;" src="resources/projectImg/Homepage-banner-1.webp"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img style="height: 470px;" src="resources/projectImg/beautiful-wedding-panoramic-banner.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5 class="display-1 fs-1 text-capitalize">
								<b>Leave a little Sparkle Where You Go...</b>
							</h5>
							<p class="mt-5  text-uppercase"></p>
						</div>
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img style="height: 470px;" src="resources/projectImg/1X.jpg"
							class="d-block w-100" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5 class="display-1 fs-1 text-capitalize">
								<b>Leave a little Sparkle Where You Go...</b>
							</h5>
							<p class="mt-5  text-uppercase"></p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleInterval" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
				crossorigin="anonymous"></script>

			<!-- carousel end -->

		</div>
		<!-- ring -->
		<div class="item item4">
		   <div>
			<img
				src="https://www.tanishq.co.in/on/demandware.static/-/Library-Sites-TanishqSharedLibrary/default/dwd9a3b5d2/Line-Design.svg"
				alt="">
		   </div>
		</div>


		<!-- grid of 4 -->
		<div class="item item5  mt-5">
			<a href="fring"> <img class="img1" src="resources/projectImg/ring.webp"
				alt=""></a>
			<!-- style="height: 300px; width: 560px;" -->
		</div>

		<div class="item item6 mt-5">
			<a href="earring.html"> <img class="img1"
				src="resources/projectImg/Grid-banner-earring.webp" alt=""></a>
		</div>

		<div class="item item7 ">
			<a href="mangalsutra.html"> <img class="img1"
				src="resources/projectImg/mangalsutra collection.webp" alt=""></a>
		</div>

		<div class="item item8">
			<a href="fbracelets"> <img class="img1"
				src="resources/projectImg/bracelet collwctiom.webp" alt=""></a>
		</div>
		<!-- svg -->
		<div class="item item9">
			 <!-- <img
				src="https://www.tanishq.co.in/on/demandware.static/-/Library-Sites-TanishqSharedLibrary/default/dwd9a3b5d2/Line-Design.svg"
				alt=""> -->
		</div>

		<!-- all categories -->

		<div class="item item10 mt-5">
				<a href="ring.html"><img class=" rounded-circle"
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;" src="resources/projectImg/ring category.webp" alt=""></a>
				<h5 class="fw-normal dtag">
					<b>Rings</b>
				</h5></a>
			
		</div>
		<div class="item item11 mt-5 ">
			<a href="bangles.html"><img
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;" src="resources/projectImg/bangles.webp" alt="">
				<h5 class="fw-normal dtag">
					<b>Bangles</b>
				</h5></a>
		</div>
		<div class="item item12 mt-5 ">
			<a href="pendant.html"> <img
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;" src="resources/projectImg/pendant.webp" alt="">
				<h5 class="fw-normal dtag">
					<b>Pendant</b>
				</h5></a>
		</div>
		<div class="item item13 mt-5">
			<a href="earring.html"><img
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;"
				src="resources/projectImg/eArring category.webp" alt="">
				<h5 class="fw-normal dtag">
					<b>Earring</b>
					</h2></a>
		</div>

		<div class="item item14 mt-3 ">
			<a href="necklace.html"><img
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;" src="resources/projectImg/necklace cate.webp"
				alt="">
				<h5 class="fw-normal dtag">
					<b>necklaces</b>
				</h5></a>
		</div>
		<div class="item item15 mt-3 ">
			<a href="braclet.html"><img
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;" src="resources/projectImg/braclet cat.webp"
				alt="">
				<h5 class="fw-normal dtag">
					<b>Braclet</b>
				</h5></a>
		</div>
		<div class="item item16 mt-3 ">
			<a href="nosepin.html"><img
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;" src="resources/projectImg/nosepin cat.webp"
				alt="">
				<h5 class="fw-normal dtag">
					<b>nose pins</b>
				</h5></a>
		</div>
		<div class="item item17 mt-3 ">
			<a href="mangalsutra.html"><img
				class="bd-placeholder-img rounded-circle"
				style="height: 140px; width: 140px;" src="resources/projectImg/mangalsutra category.webp" alt=""></a>
			<h5 class="fw-normal dtag">
				<b>Mangalsutra</b>
			</h5>
		</div>

		<!-- all cateogry end -->

		<!-- our glamour -->
		<div class="item item18 mt-5">
			<img class="img-glamour" style="height: 300px; width: 560px;"
				src="resources/projectImg/glamour.webp" alt="">
		</div>

		<div class="item item19 mt-5">
			<img class="img-glamour" style="height: 300px; width: 560px;"
				src="resources/projectImg/Grid-banner-earring.webp" alt="">
		</div>
		<!-- our glamour ennd -->
		<div class="item item20 ">
			<img
				src="https://www.tanishq.co.in/on/demandware.static/-/Library-Sites-TanishqSharedLibrary/default/dwd9a3b5d2/Line-Design.svg"
				alt="">
		</div>
		<!-- gift session -->
		<div class="item item21 mt-5">
			<!-- gift session Strat -->
			<div class="container text-center mt-5">
				<div class="wrap animate pop">
					<div class="overlay">
						<div class="overlay-content animate slide-left delay-2">
							<h1 class="animate slide-left pop delay-4">#GiftOfChoice</h1>
							<p class="animate slide-left pop delay-5" style="color: white;">
							<h1>
								<b> Breathtaking gift for Your Loved one</b>
							</h1>
							</p>
							<a href="fgift" >Explore more</a>
						</div>
						<div class="image-content animate slide delay-8"></div>

					</div>
					<div class="text">
						<p>
							<img class="inset" src="resources/projectImg/gift box.webp" alt="" /> Let our
							pieces be Your New Love Language !
						</p>
						<p>Make Every Occasion memorable with perfect gift for Your
							Loved one!</p>
						<p>Every piece of our art come With Promise of Trust And Loved</p>
						<p>Every piece tells a story...it’s a treasure chest that
							holds stories, memories, and precious moments. Jewelry are
							designed to evoke the emotions and memories associated with these
							cherished items.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer Start -->
	<div class="item item22">
	 <%@include file="Component/footer.jsp" %>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
		
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
	<script>
		<%@include file="/WEB-INF/jsfolder/script.js"%>
	</script>
</body>

</html>