package com.qams.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qams.service.ForgotPasswordService;
import com.qams.service.ForgotPasswordService.ForgotPasswordStatus;

public class ForgotPasswordServlet extends HttpServlet{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {

		
		String emailOrMobile = request.getParameter("emailOrMobile");
		String newPassword = request.getParameter("newPassword");
		String confirmNewPassword = request.getParameter("confirmNewPassword");
		
		// 1. check email or mobile is already there in database or not
		// if exists -> check new password and conform password are same or not, error (not matching in else case)
			   // not exist -> throw error saying this email or mobile is not registered
		// update password (change to MD5 hash -> update the password of that user)
		
		ForgotPasswordService forgotPasswordService = new ForgotPasswordService();
		
		ForgotPasswordStatus resetPasswordStatus = forgotPasswordService.resetPassword(emailOrMobile, newPassword, confirmNewPassword);
		
		String targetPage = "";
		
		if(resetPasswordStatus == ForgotPasswordStatus.PASSWORD_UPDATED) {
			targetPage = "/views/login.jsp";
			request.setAttribute("status", "passwordUpdated");
			
		}else if(resetPasswordStatus == ForgotPasswordStatus.NOT_REGISTERED) {
			targetPage = "/views/forgotPassword.jsp";
			request.setAttribute("status", "notRegistered");
		}else if(resetPasswordStatus == ForgotPasswordStatus.CONFIRM_PASSWORD_DO_NOTMATCH) {
			targetPage = "/views/forgotPassword.jsp";
			request.setAttribute("status", "passwordNotMatched");
		}else if(resetPasswordStatus == ForgotPasswordStatus.ERROR) {
			targetPage = "/views/forgotPassword.jsp";
			request.setAttribute("status", "error");
		}
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher(targetPage);
        
		dispatcher.forward(request, response);
        
   }

}
