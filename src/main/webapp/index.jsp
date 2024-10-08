
<%
if (session.getAttribute("name") == null) {
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Coming Soon</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
	<video class="bg-video" playsinline="playsinline" autoplay="autoplay"
		muted="muted" loop="loop">
		<source src="assets/mp4/bg.mp4" type="video/mp4" />
	</video>
	<div class="masthead">
		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1 mb-4">My Website is Coming Soon</h1>
				<p class="mb-5">I am working hard to finish the development of
					this site. Sign up below to receive updates and to be notified when
					we launch!</p>
				<form id="contactForm" data-sb-form-api-token="API_TOKEN">

					<div class="row input-group-newsletter">
						<div class="col">
							<input class="form-control" id="email" type="email"
								placeholder="Enter email address..."
								aria-label="Enter email address..."
								data-sb-validations="required,email" />
						</div>
						<div class="col-auto">
							<button class="btn btn-primary disabled" id="submitButton"
								type="submit">Notify Me!</button>
						</div>
					</div>
					<div class="invalid-feedback mt-2"
						data-sb-feedback="email:required">An email is required.</div>
					<div class="invalid-feedback mt-2" data-sb-feedback="email:email">Email
						is not valid.</div>

					<div class="d-none" id="submitSuccessMessage">
						<div class="text-center mb-3 mt-2">
							<div class="fw-bolder">Form submission successful!</div>
							To activate this form, sign up at <br /> <a
								href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
						</div>
					</div>

					<div class="d-none" id="submitErrorMessage">
						<div class="text-center text-danger mb-3 mt-2">Error sending
							message!</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="social-icons">
		<div
			class="d-flex flex-row flex-lg-row justify-content-center align-items-center h-0 mt-0 mt-lg-0 ">
			<h1 class="fst-italic lh-1 mb-0">
				Hello,
				<%=session.getAttribute("name")%></h1>
			<a class="btn btn-dark m-3" href="Logout"><i
				class="fa fa-sign-out" aria-hidden="true"></i></a>
		</div>
		<div class="position-absolute top-50 start-100 translate-middle">

			<a class="btn btn-dark m-3"
				href="https://discordapp.com/users/586373273160253453"><i
				class="fa-brands fa-discord"></i></a> <a class="btn btn-dark m-3"
				href="https://github.com/Thejaswi4183"><i class="fa-brands fa-github"></i></a> <a
				class="btn btn-dark m-3" href="https://www.linkedin.com/in/thejaswi-s-165b0a256/"><i class="fa-brands fa-linkedin-in"></i></a>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	<script src="js/scripts.js"></script>

	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
