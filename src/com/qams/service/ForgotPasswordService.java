package com.qams.service;

import com.qams.daos.ForgotPasswordDAO;
import com.qams.utils.MD5Util;

public class ForgotPasswordService {
	
	
	public ForgotPasswordDAO forgotPasswordDAO;
	
	
	public enum ForgotPasswordStatus{
		NOT_REGISTERED, CONFIRM_PASSWORD_DO_NOTMATCH, PASSWORD_UPDATED, ERROR
	}
	
	public ForgotPasswordStatus resetPassword(String emailOrMobile, String password, String confirmPassword) {
		
		
		boolean userExists = getForgotPasswordDAO().checkUserExists(emailOrMobile);
		
		if(!userExists)
			return ForgotPasswordStatus.NOT_REGISTERED;
		else if(!password.equals(confirmPassword))
			return ForgotPasswordStatus.CONFIRM_PASSWORD_DO_NOTMATCH;
		
		
		String passwordHash = MD5Util.getMD5Signature(password);
		
		boolean isUpdated = getForgotPasswordDAO().updatePassword(emailOrMobile, passwordHash);
		
		if(isUpdated) {
			return ForgotPasswordStatus.PASSWORD_UPDATED;
		}
		
		
		return ForgotPasswordStatus.ERROR;
		
	}
	
	
	public ForgotPasswordDAO getForgotPasswordDAO() {
		if(forgotPasswordDAO == null)
			return new ForgotPasswordDAO();
		else 
			return forgotPasswordDAO;
	}
	
	
	

}
