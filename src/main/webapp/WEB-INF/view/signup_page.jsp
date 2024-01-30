<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>SignUp Page</title>
</head>
<body>
	<div class="container text-center">
		<!-- 	<div class="container text-center">
			<h3>User Registration Page</h3>
		</div> -->
		<!--bootstrap signup page -->
		<section class="vh-100" style="background-color: #eee;">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-lg-12 col-xl-11">
						<div class="card text-black" style="border-radius: 25px;">
							<div class="card-body p-md-5">
								<div class="row justify-content-center">
									<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

										<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign
											up</p>

										<form action="saveUser" method="post" class="mx-1 mx-md-4">

											<div class="form-group">
											<label for="username">User Name</label>
												 <input type="text"
													class="form-control" id="title"
													aria-describedby="titleHelp" 
													name="username"
													placeholder="Enter username here"> <small
													id="titleHelp" class="form-text text-muted">please
													choose an appropriate username.</small>
											</div>

											<div class="form-group">
											<label for="email">User Email</label>
												 <input type="email"
													class="form-control" id="email"
													aria-describedby="titleHelp" 
													name="email"
													placeholder="Enter email id here"> <small
													id="titleHelp" class="form-text text-muted">email should contains @gmail.com or other domain.</small>
											</div>

											<div class="form-group">
											<label for="password">Password</label>
												 <input type="password"
													class="form-control" id="password"
													aria-describedby="titleHelp" 
													name="password"
													placeholder="Enter password here"> <small
													id="titleHelp" class="form-text text-muted">please
													choose a strong password contains atleat 8 characters.</small>
											</div>
											<div class="form-group">
											<label for="contact">Mobile Number</label>
												 <input type="text"
													class="form-control" id="password"
													aria-describedby="titleHelp" 
													name="contact"
													placeholder="Enter contact here">
											</div>
											<div class="form-group">
											<label for="high_education">Highest Education</label>
												 <input type="text"
													class="form-control" id="high_education"
													aria-describedby="titleHelp" 
													name="high_education"
													placeholder="Enter highest education here"> 
											</div>
											<div class="form-group">
											<label for="area_of_interest">Area of Interest</label>
												 <input type="text"
													class="form-control" id="area_of_interest"
													aria-describedby="titleHelp" 
													name="area_of_interest"
													placeholder="Enter area_of_interest here"> 
													
											</div>
											<!-- <div class="container text-center">
												<h6>Address Details</h6>
											</div>
											<div class="form-group">
											<label for="password">Flat Number</label>
												 <input type="text"
													class="form-control" id="platno"
													aria-describedby="titleHelp" 
													name="platno"placeholder="Enter flat number here">
											<label for="password">Street</label>
												 <input type="text"
													class="form-control" id="street"
													aria-describedby="titleHelp" 
													name="street" placeholder="Enter street here">
											<label for="password">LandMark</label>
												 <input type="text"
													class="form-control" id="landmark"
													aria-describedby="titleHelp" 
													name="landmark"placeholder="Enter landmark here">
											<label for="password">Pincode</label>
												 <input type="text"
													class="form-control" id="pincode"
													aria-describedby="titleHelp" 
													name="pincode"placeholder="Enter pincode here"> 
											<label for="password">City</label>
												 <input type="text"
													class="form-control" id="city"
													aria-describedby="titleHelp" 
													name="city"placeholder="Enter city here"> 
											<label for="password">State</label>
												 <input type="text"
													class="form-control" id="state"
													aria-describedby="titleHelp" 
													name="state"placeholder="Enter state here"> 
											<label for="password">Country</label>
												 <input type="text"
													class="form-control" id="Country"
													aria-describedby="titleHelp" 
													name="Country" placeholder="Enter country here"> 
																						
											</div> -->

											<div class="container mb-4 mt-4 text-center">
												<a href="http://localhost:8080/NoteTaker/login_page"
													class="btn btn-primary">Login</a>
												<button type="submit" class="btn btn-success">Register</button>
											</div>

										</form>

									</div>
									<div
										class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

										<img
											src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
											class="img-fluid" alt="Sample image">

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- end bootstrap signup page  -->
	</div>
</body>
</html>