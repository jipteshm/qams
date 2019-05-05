<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<div class="login-container">
	<h2 class="align-center">Register Here</h2>
	<form action="">
	
	  <div class="login-form">
	    <label for="uname"><b>First Name</b></label>
	    <input type="text" placeholder="Enter First Name" name="uname" required>
	    
	    <label for="uname"><b>Last Name</b></label>
	    <input type="text" placeholder="Enter Last Name" name="uname" required>
	
	    <label for="psw"><b>Email</b></label>
	    <input type="password" placeholder="Enter Your Email" name="psw" required>
	    
	    <label for="psw"><b>Mobile</b></label>
	    <input type="password" placeholder="Enter Your Mobile Number" name="psw" required>
	        
	    <button type="submit">Register</button>
	    <label>
	      <input type="checkbox" checked="checked" name="remember"> Remember me
	    </label>
	  </div>
	
	  <div class="button-container" style="background-color:#f1f1f1">
	    <button type="button" class="cancelbtn">Cancel</button>
	    <span class="psw">Forgot <a href="#">password?</a></span>
	  </div>
	</form>
</div>