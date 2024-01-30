<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="WEB-INF/css/main.css" />
<%@include file="WEB-INF/view/all_js_css.jsp" %>

<title>NoteTaker</title>
</head>
<body>
	<div class="container">
	<div class="container mt-1">
		<%@include file="WEB-INF/view/navbar.jsp"%>
	</div>
		<br>
		<h3>This is Home Page</h3>
		<!-- <a href="http://localhost:8080/NoteTaker/add_notes">Add Notes</a> -->

<div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
  <ol class="carousel-indicators " >
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active" ></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style="height:400px; background-repeat: no-repeat;
            background-size: contain;
            border: 0.25rem solid grey;">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://www.notta.ai/pictures/zoho-notebook-homepage.png"
       alt="First slide">
    </div>
    <div class="carousel-item" >
      <img class="d-block w-100" src="https://static.wingify.com/gcp/uploads/sites/3/2013/08/Feature-image_How-to-Use-Image-Carousels-the-Right-Way.png"
       alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://d25yuvogekh0nj.cloudfront.net/2020/11/mw1920_How-to-Create-Image-Carousels-_-Sliders-_And-Why-They_re-Awesome_-facebook.png"
       alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br>
	<div class="container m-3 p-3 text-center">
			<!--<a href="http://localhost:8080/NoteTaker/"><button class="btn btn-success">Back To Home</button></a>
			<a href="http://localhost:8080/NoteTaker/add_notes"><button class="btn btn-success">Back To AddNotes</button></a> -->
			<a href="http://localhost:8080/NoteTaker/show_notes" class="btn btn-primary">ShowNote</a>
			<a href="http://localhost:8080/NoteTaker/add_notes" class="btn btn-success">AddNote</a>
		</div>	
</div>
</body>
</html>