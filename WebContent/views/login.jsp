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
	<h2 class="align-center">Login</h2>
	<form action="">
	
	  <div class="login-form">
	    <label for="uname"><b>Username</b></label>
	    <input type="text" placeholder="Enter Username" name="uname" required>
	
	    <label for="psw"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="psw" required>
	        
	    <label>
	      <input type="checkbox" checked="checked" name="remember"> Remember me
	    </label>
	    
	    <button type="submit">Login</button>
	  </div>
	
	  <div class="button-container" style="background-color:#f1f1f1">
	    <a href="register">
	    	<button type="button" class="cancelbtn">Register</button>
	    </a>
	    <a href="forgot-password">
	    	<button type="button" class="cancelbtn">Forgot password?</button>
	    </a>
	     <a href="home">
	    	<button type="button" class="cancelbtn float-right">Cancel</button>
	    </a>
	  </div>
	</form>
</div>