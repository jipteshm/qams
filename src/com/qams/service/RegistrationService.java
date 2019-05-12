package com.qams.service;

import com.qams.daos.RegistrationDAO;
import com.qams.models.User;

public class RegistrationService {
	
	RegistrationDAO registrationDAO;
	
	public boolean registerUser(User user) {
		int count = getRegisterDAO().createUser(user);
		if(count > 0)
			return true;
		else 
			return false;
	}
	
	public RegistrationDAO getRegisterDAO() {
		if(registrationDAO == null)
			return new RegistrationDAO();
		else 
			return registrationDAO;
	}
	
	
	
	

}
