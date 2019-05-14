<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

 <script src="script/login.js"></script> 

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
	
	
	<%
	if(request.getAttribute("status") != null && request.getAttribute("status").equals("notRegistered")){
	%>
		<div class="alert error">
			 Dear user, you are not registered with us. Please register first and try login again.
		</div>
	<%
	}
	%>
	
	
	<%
	if(request.getParameter("status") != null && request.getParameter("status").equals("notRegistered")){
	%>
		<div class="alert error">
			 Dear user, you are not registered with us. Please register first and try login again.
		</div>
	<%
	}
	%>
	
	
	<%
	if(request.getAttribute("status") != null && request.getAttribute("status").equals("invalidPassword")){
	%>
		<div class="alert error">
			 Dear user, you have entered an incorrect password. please enter correct password and try again Or else you can click on forgot password to recover your password.
		</div>
	<%
	}
	%>
	
	<%
	if(request.getAttribute("status") != null && request.getAttribute("status").equals("passwordUpdated")){
	%>
		<div class="alert success">
			Congratulations! Your password has been updated! Please login with your new password.
		</div>
	<%
	}
	%>
	
	<h2 class="align-center">Login</h2>
	<form action="doLogin" onsubmit="return validateLogin();" name="loginForm">
	
	  <div class="login-form">
	    <label for="uname"><b>Email / Mobile</b></label>
	    <input id="emailOrMobile" type="text" placeholder="Enter Email or Mobile" name="emailOrMobile" >
	    <div id="emailOrMobileError" class="errorMsg" style="display: none;"></div>
	
	    <label for="psw"><b>Password</b></label>
	    <input id="password" type="password" placeholder="Enter Password" name="password" >
	    <div id="passwordError" class="errorMsg" style="display: none;"></div>
	        
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