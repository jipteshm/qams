<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<div class="login-container">


<%
	if(request.getAttribute("status") != null && request.getAttribute("status").equals("notRegistered")){
	%>
		<div class="alert error">
			 Dear user, this email or mobile is not registered with us. Please check email or mobile and try login again.
		</div>
	<%
	}
	%>
	
	
	
	<%
	if(request.getAttribute("status") != null && request.getAttribute("status").equals("passwordNotMatched")){
	%>
		<div class="alert error">
			 Dear user, your new password and confirm password are not matching, please enter same password in new password and confirm password field.
		</div>
	<%
	}
	%>
	
	<%
	if(request.getAttribute("status") != null && request.getAttribute("status").equals("error")){
	%>
		<div class="alert error">
			 Server error! Please try after sometime.
		</div>
	<%
	}
	%>



	<h2 class="align-center">Reset Your Password</h2>
	<form action="reset-password">
	  <div class="login-form">
	    <label for="uname"><b>Email / Mobile</b></label>
	    <input type="text" placeholder="Enter Email or Mobile" name="emailOrMobile" required>
	
	    <label for="psw"><b>New Password</b></label>
	    <input type="password" placeholder="Enter New Password" name="newPassword" required>
	    
	    <label for="psw"><b>Confirm New Password</b></label>
	    <input type="password" placeholder="Enter New Password Again" name="confirmNewPassword" required>
	        
	    <button type="submit">Submit</button>
	  </div>
	</form>
</div>