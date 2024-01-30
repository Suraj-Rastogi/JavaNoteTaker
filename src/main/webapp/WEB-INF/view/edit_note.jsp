<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>Edit Note Page!</title>
</head>
<body>

	<div class="container">
		<div class="container mt-1">
			<%@include file="navbar.jsp"%>
		</div><br>
		<h3>Edit Your Note</h3>
		<%-- <h1>Note detail is : ${note.getId() }</h1> --%>
		<br>
		<form action="updateNotes" method="post">
			<div class="form-group">
				<input value="${note.getId()}" name="id" type="hidden"> <label
					for="title">Note Title</label> <input type="text"
					class="form-control" id="title" aria-describedby="titleHelp"
					name="title" value="${note.getTitle() }"
					placeholder="Enter Title here"> <small id="titleHelp"
					class="form-text text-muted">please choose an appropriate
					title for notes.</small>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter Content..."
					class="form-control" name="content" style="height: 300px;">${note.getContent()}</textarea>
			</div>
			<div class="container mt-4 mb-4 text-center">
				<a href="http://localhost:8080/NoteTaker/show_notes"><button
						type="submit" class="btn btn-primary">Back</button></a>
				<button type="submit" class="btn btn-success">Update</button>
			</div>

		</form>
	</div>
</body>
</html>