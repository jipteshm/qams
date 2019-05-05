<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<div class="login-container">
	<h2 class="align-center">Register Here</h2>
	<form action="registration">
	
	  <div class="login-form">
	    <label for="firstname"><b>First Name</b></label>
	    <input type="text" placeholder="Enter First Name" name="firstname" required>
	    
	    <label for="lastname"><b>Last Name</b></label>
	    <input type="text" placeholder="Enter Last Name [Optional]" name="lastname">
	
	    <label for="email"><b>Email</b></label>
	    <input type="text" placeholder="Enter Your Email" name="email" required>
	    
	    <label for="mobile"><b>Mobile</b></label>
	    <input type="text" placeholder="Enter Your Mobile Number" name="mobile" required>
	    
	    <label for="pwd"><b>Password</b></label>
	    <input type="text" placeholder="Enter a Strong Password" name="password" required>
	        
	    <button type="submit">Register</button>
	   
	  </div>
	
	  <div class="button-container" style="background-color:#f1f1f1">
	     <span class="psw">Already Registered? <a href="login">Login</a></span>
	  </div>
	</form>
</div>