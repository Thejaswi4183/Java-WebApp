<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	<input type="hidden" id="agree"
		value="<%=request.getAttribute("agree")%>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>

						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" required="required" /> <label
									for="agree-term" class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>


							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" onclick=term() />
							</div>
							<script type=text/javascript>
								function term() {
									var agree = document
											.getElementById("agree-term").checked;
									if (!agree) {
										swal(
												"Error!",
												"Please accept the Terms and Conditions",
												"error");
									}
								}
							</script>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sign up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type=text/javascript>
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("Congrats!", "Account Created Successfully", "success");
		} else if (status == "failed") {
			swal("Sorry!", "Failed to create Accouunt", "error");
		} else if (status == "invalidName") {
			swal("Error!", "Please Enter Name", "error");
		} else if (status == "invalidEmail") {
			swal("Error!", "Please Enter Email", "error");
		} else if (status == "invalidUpwd") {
			swal("Error!", "Please Enter Password", "error");
		} else if (status == "invalidConfirmPassword") {
			swal("Error!", "Passwords do not match", "error");
		} else if (status == "invalidMobile") {
			swal("Error!", "Please Enter Mobile Number", "error");
		} else if (status == "invalidMobileLength") {
			swal("Error!", "Mobile Number must me 10 digits", "error");
		}
	</script>
</body>
</html>