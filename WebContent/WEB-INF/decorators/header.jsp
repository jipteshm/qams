<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div id="header-content" class="header">
	<h1>QAMS</h1>
  	<p>Question Answer Management System.</p>
</div> 
<div class="topnav">
  <a href="home">Dashboard</a>
  <a href="askquestion">Ask a Question</a>
 
   <%
	 if(session.getAttribute("userId") != null){
	 %>
  <a href="#">My Dashboard</a>
  <a href="#">My Quesions</a>
  <a href="#">My Answers</a>
  <a href="#">My Comments</a>
  <a href="#">My Favourite Questions</a>
 <%
	  }
	  %>
 
	 <%
	 if(session.getAttribute("userId") != null){
	 %>
		  <a href="logout" style="float:right">Logout</a>
		  <a href="register" style="float:right">Profile</a>
	  <%
	  }else{
	  %>
	   	<a href="register" style="float:right">Register</a>
		<a href="login" style="float:right">Login</a>
	  <%
	  }
	  %>
  
  
  
</div>