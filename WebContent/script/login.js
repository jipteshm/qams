/**
 * Used to validate the fields of login page using javascript
 */

function validateLogin(){
	
	// getting the element by form name and element name
	var emailMobile = document.forms["loginForm"]["emailOrMobile"].value;
	
	// getting the element value from id
	var password = document.getElementById("password").value;
	
	var isEmailMobileError = false;
	var isPasswordError = false;
	if(emailMobile == null || emailMobile == ""){
		document.getElementById("emailOrMobileError").innerHTML = "Please enter your login email or mobile";
		isEmailMobileError = true;
	}
	
	if(password == null || password == ""){
		document.getElementById("passwordError").innerHTML = "Please enter your password";
		isPasswordError = true;
	}
	
	if(!isEmailMobileError){
		if(isNaN(emailMobile)){
			if(isValidEmail(emailMobile))
				isEmailMobileError = false;
			else{
				document.getElementById("emailOrMobileError").innerHTML = "Please enter a valid email";
				isEmailMobileError = true;
			}
		}else{
			if (isValidMobile(emailMobile)) {
				// value is ok, use it
				isEmailMobileError = false;
			} else {
				document.getElementById("emailOrMobileError").innerHTML = "You have entered an invalid mobile number, it must be ten digits and should start with [6, 7, 8 or 9] only";
				isEmailMobileError = true;
			}
		}
		
	}
	
	if(isEmailMobileError || isPasswordError){
		if(isEmailMobileError){
			document.getElementById("emailOrMobileError").style.display = "block";
		}
		if(isPasswordError){
			document.getElementById("passwordError").style.display = "block";
		}
		return false;
	}
	return true;
}


function isValidEmail(email) {
	return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)
}

function isValidMobile(mobile) {
	return /^[6789]\d{9}$/.test(mobile)
}