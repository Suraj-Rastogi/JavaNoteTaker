<%@page isELIgnored="false"%>
<%@page import="com.todo.Helper.SessionProvider"%>
<%@page import="com.todo.Entity.Notes"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes!</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<div class="container mt-1">
			<%@include file="navbar.jsp"%>
		</div>
		<%-- <%@include file="navbar.jsp"%> --%>
		<br>
		<div class="container">
			<h3>All Notes</h3>
			<div class="text-center">
				<a href="http://localhost:8080/NoteTaker/" class="btn btn-primary">Home</a>
				<a href="http://localhost:8080/NoteTaker/add_notes"
					class="btn btn-success">AddNote</a>
			</div>
		</div>


		<div class="row">
			<div class="col-12">
				<%
				Session s = SessionProvider.getFactory().openSession();
				String hbi = "FROM Notes N ORDER BY N.addedDate DESC";
				Query q = s.createQuery(hbi);
				List<Notes> list = q.list();
				/* out.println("list length is :"+list.size()); */
				System.out.println("length is :" + list.size());
				for (Notes note : list) {
					System.out.println("id :" + note.getId() + " and Title :" + note.getTitle());
				%>
				<div class="card mt-3 " style="width: 90%;  border: 2px solid red;">
					<!-- <img class="card-img-top pl-2 pt-2" style="max-width: 300px;"
						src="/WEB-INF/img/sticky-note.png" alt="Card image"> -->
					<img class="card-img-top pl-2 pt-2" style="max-width: 50px;"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_M6SzMy82SMHPAcWvpDIZoTiPKYXvhxnswA&usqp=CAU" alt="Card image">
					<div class="card-body">
						<h5 class="card-title">
							<b><%=note.getTitle()%></b>
						</h5>
						<p class="card-text"><%=note.getContent()%></p>
						<h7 class="card-text"> <b>created date:<%=note.getAddedDate()%></b></h7>
						<div class="container mt-2">
							<a
								href="http://localhost:8080/NoteTaker/editNote?note_id=<%=note.getId()%>"
								class="btn btn-primary">Edit</a> <a
								href="http://localhost:8080/NoteTaker/deleteNote?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>
				<%
				/*  out.println(note.getId()+" : "+note.getTitle()+" : "+note.getContent()+"<br>"); */
				}
				s.close();
				%>
			</div>
		</div>
		<div class="container m-3 p-3 text-center">
			<!--<a href="http://localhost:8080/NoteTaker/"><button class="btn btn-success">Back To Home</button></a>
			<a href="http://localhost:8080/NoteTaker/add_notes"><button class="btn btn-success">Back To AddNotes</button></a> -->
			<a href="http://localhost:8080/NoteTaker/" class="btn btn-primary">Home</a>
			<a href="http://localhost:8080/NoteTaker/add_notes"
				class="btn btn-success">AddNote</a>
		</div>

		<%-- <h3>Id is :${notes.id }</h3>
		<h3>Notes Title is :</h3><h1> ${notes.title}</h1>
		<p>Note Content is :${notes.content} </p>
		<h3>Created Date is :${notes.addedDate } </h3> --%>
	</div>
</body>
</html>