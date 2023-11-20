<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<!-- Web Title & Favicon  -->
<title>Valley View Retreat</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- SEO Meta Tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="assets/img/favicon.svg">
<!-- Admin Fonts and Icons-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/remixicon.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!-- Bootstrap and Libraries CSS -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/animate.min.css">
<!-- Admin Style CSS -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/admin-style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body >
<div class="img-background">
	<div class="container-fuild">
		<div class="row justify-content-center">
			<div class="col-lg-5 mt-5">
				<div class="card cardSize">
					<!-- Logo -->
				 <div class="card-header text-center h2 text-primary">
<%-- 						<span><img src="${pageContext.servletContext.contextPath}/images/logo.jpeg" height="50" alt="Logo"></span>
 --%>					
 <span> VALLEY VIEW RETREAT</span></div>	 
					

					<div class="card-body p-4">
						<div class="text-center w-75 m-auto pb-4">
							<h4 class="text-dark-50 text-center mt-0 font-weight-bold">Login</h4>
						</div>

						<form
							action="${pageContext.servletContext.contextPath}/authenticate"
							method="post" enctype="multipart/form-data" name="loginform"
							id="loginform">
							<div class="form-group">
								<label for="userName">Email Address</label> <input
									class="form-control" type="text" id="userName" name="userName"
									maxlength="64" required="required">
							</div>

							<div class="form-group">
								<label for="password">Password</label>
								<div class="input-group" id="show_hide_password">
									<input type="password" id="password" name="password"
										maxlength="15" class="form-control" required="required">
								</div>
							</div>

							<div class="form-group">
								<div id="logincaptchadiv"></div>
								<span class="text-danger pt-4" id="errorMsg"></span>
							</div>

							<div class="form-group mb-0 offset-8 pt-4"">
								<button class="btn btn-primary btn-block py-2 col-12" type="submit" onclick="return validateCaptcha()">
									Log In</button>
								<div id="error_msg" class="text-danger pt-4"
									style="float: right; padding-right: 10px;">${errorMsg}</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--***-->
	<!-- Bootstrap JavaScript -->
	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <!--  Google captcha-->
	<script	src="https://www.google.com/recaptcha/api.js?onload=CaptchaCallback&render=explicit" async defer></script>
	
	<!--Password Show/Hide-->	
	<script>
		$(document)
				.ready(
						function() {
							$("#show_hide_password a")
									.on(
											'click',
											function(event) {
												event.preventDefault();
												if ($(
														'#show_hide_password input')
														.attr("type") == "text") {
													$(
															'#show_hide_password input')
															.attr('type',
																	'password');
													$('#show_hide_password i')
															.addClass(
																	"fa-eye-slash");
													$('#show_hide_password i')
															.removeClass(
																	"fa-eye");
												} else if ($(
														'#show_hide_password input')
														.attr("type") == "password") {
													$(
															'#show_hide_password input')
															.attr('type',
																	'text');
													$('#show_hide_password i')
															.removeClass(
																	"fa-eye-slash");
													$('#show_hide_password i')
															.addClass("fa-eye");
												}
											});
						});
		
		
		
		var CaptchaCallback = function() {
			grecaptcha.render('logincaptchadiv', {
				'sitekey' : $('#captcha_key').val()
			});
		};

		function validateCaptcha() {
			$("#errorMsg").html("");
			var emailId = $('#email').val();
			var password = $('#password').val();
			var response = grecaptcha.getResponse();

			if (emailId === null || emailId == '') {
				$("#errorMsg").removeClass("d-none");
				$("#errorMsg")
						.html(
								"<div class='text-danger' id='success-alert' style='margin-bottom: 0px;margin-top: 10px;'><i class='fa fa-warning'> </i> Email Address is required.</div>");
				return false;
			} else if (password === null || password == '') {
				$("#errorMsg").removeClass("d-none");
				$("#errorMsg")
						.html(
								"<div class='text-danger' id='success-alert' style='margin-bottom: 0px;margin-top: 10px;'><i class='fa fa-warning'> </i> Password is required.</div>");
				return false;
			} else if (response.length == 0) {
				$("#errorMsg").removeClass("d-none");
				$("#errorMsg").html("Please select captcha.");
				return false;
			}
		}
	</script>
	</div>
	
</body>
<style>
	.img-background{
	background-image: url(../images/home-slider3.jpg);
	   background-size: cover; 
	        min-height: 900px;
	        margin-top:0px
	    

	}.cardSize{
	height: 450px;
	}
	</style>
</html>