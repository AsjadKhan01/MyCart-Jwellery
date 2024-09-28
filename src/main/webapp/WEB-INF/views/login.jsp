<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style type="text/css">
    <%@include file="/WEB-INF/cssfolder/login.css" %>
</style>
<title>Login - Infinity</title>
<body>
	<div class="maindiv">

		<div class="cont">
			<form action="loginProcess" method="get">
				<div class="form sign-in">

					<h2>Log In</h2>
					<label> <span>Email Address</span> <input type="email"
						name="uemail">
					</label> <label> <span>Password</span> <input type="password"
						name="upassword">
					</label>
					<button class="submit" type="submit">Log In</button>

					<!-- <div class="social-media">
						<ul>
							<li><a href="fhome">Home</a></li>
							<li><img src="images/facebook.png"></li>
							<li><img src="images/twitter.png"></li>
							<li><img src="images/linkedin.png"></li>
							<li><img src="images/instagram.png"></li>
						</ul>
					</div> -->
				</div>
			</form>

			<div class="sub-cont">
				<div class="img">
					<div class="img-text m-up">
						<h1>New here?</h1>
						<%@include file="/WEB-INF/views/Component/message.jsp"%>
						<p>sign up and discover</p>
					</div>
					<div class="img-text m-in">
						<h1>One of us?</h1>

						<p>just sign in</p>
					</div>
					<div class="img-btn">
						<span class="m-up">Sign Up</span> <span class="m-in">Log In</span>
					</div>
				</div>
				<form action="signupProcess" method="post">
					<div class="form sign-up">
						<h2>Sign Up</h2>
						<label> <span>Name</span> <input type="text"
							name="userName" required="required">
						</label> <label> <span>Email</span> <input type="email"
							name="userEmail" required="required">
						</label> <label> <span>Password</span> <input type="password"
							name="userPassword" required="required">
						</label> <label> <span>Confirm Password</span> <input
							type="password" name="userPasswordC" required="required">
						</label>
						<button type="submit" class="submit">Sign Up Now</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		document.querySelector('.img-btn').addEventListener(
				'click',
				function() {
					document.querySelector('.cont').classList
							.toggle('s-signup')
				});
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>