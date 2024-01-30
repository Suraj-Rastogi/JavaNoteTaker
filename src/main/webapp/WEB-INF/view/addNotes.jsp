<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>Add Notes!</title>
</head>
<body>
	<div class="container">
		<div class="container mt-1">
			<%@include file="navbar.jsp"%>
		</div>
		<br>
		<h3>Please fill the note form!</h3>
		<br>
		<form action="saveNotes" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" id="title" aria-describedby="titleHelp"
					name="title" placeholder="Enter Title here"> <small
					id="titleHelp" class="form-text text-muted">please choose
					an appropriate title for notes.</small>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter Content..."
					class="form-control" name="content" style="height: 300px;"></textarea>
			</div>
			<div class="container mb-4 mt-4 text-center">
				<a href="http://localhost:8080/NoteTaker/" class="btn btn-primary">Back</a>
				<button type="submit" class="btn btn-success">Submit</button>
			</div>

		</form>

	</div>
</body>
</html>