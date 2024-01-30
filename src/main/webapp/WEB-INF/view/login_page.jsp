<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<!-- <link rel="stylesheet" href="WEB-INF/css/login_css.css"> -->
<style>
.divider:after, .divider:before {
	content: "";
	flex: 1;
	height: 1px;
	background: #eee;
}

.h-custom {
	height: calc(100% - 73px);
}

@media ( max-width : 450px) {
	.h-custom {
		height: 100%;
	}
}
</style>
<title>Login Page!</title>
</head>
<body>
	<div class="container">
		<div class="container mt-10 text-center">
			<h3>Login Page</h3>
		</div>
		<!--bootstrap code for login page   -->
		<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form action="login" method="post">
          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0"></p>
          </div>

          <!-- Email input -->
         <!--  <div class="form-outline mb-4">
            <input type="email" 
            		id="form3Example3" 
            		class="form-control form-control-lg"
              		placeholder="Enter a valid email address"
              		name="email" />
            <label class="form-label" for="form3Example3">Email address</label>
          </div> -->
           <div class="form-outline mb-4">
            <input type="text" 
            		id="form3Example3" 
            		class="form-control form-control-lg"
              		placeholder="Enter a valid username"
              		name="username" />
            <label class="form-label" for="form3Example3">UserName</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password"
            		id="form3Example4" 
            		class="form-control form-control-lg"
              		placeholder="Enter password"
              		name="password" />
            <label class="form-label" for="form3Example4">Password</label>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="http://localhost:8080/NoteTaker/signup_page"
                class="link-danger" style="color:red;">Register</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2020. All rights reserved.
    </div>
    <!-- Copyright -->


  </div>
</section>



	<!-- end of bootstrap loin page -->
	</div>

</body>
</html>