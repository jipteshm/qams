<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<div class="login-container">

	<%
	if(request.getParameter("registerStatus") != null){
	%>
		<div class="alert success">
		 Hello <strong><%= request.getParameter("firstName") %>!</strong> you have registered successfully. Please login with the same email/mobile and password.
		</div>
	<%
	}
	%>
	<h2 class="align-center">Ask Your Question Here</h2>
	<form action="">
	
	  <div class="login-form">
	    <label for="uname"><b>Question Title</b></label>
	    <input type="text" placeholder="Enter the Title of the Question" name="uname" required>
	
	    <label for="psw"><b>Description</b></label>
	    <textarea placeholder="Enter Description of the question" name="psw" class="question-description" required></textarea>
	        
	    <button type="submit">Post Question</button>
	  </div>

	</form>
</div>