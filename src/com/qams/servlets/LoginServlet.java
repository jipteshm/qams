package com.qams.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qams.daos.LoginDAO;
import com.qams.models.User;
import com.qams.utils.MD5Util;

public class LoginServlet extends HttpServlet{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public enum LoginStatus{
		NOT_REGISTERED, PASSWORD_MISMATCH, LOGIN_SUCCESS, LOGIN_ERROR 
	}

	@Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
		
		String emailOrMobile = request.getParameter("emailOrMobile");
		String password = request.getParameter("password");

		LoginDAO loginDAO = new LoginDAO();
		
		String passwordHash = MD5Util.getMD5Signature(password);
		
		User user = loginDAO.checkUser(emailOrMobile, passwordHash);
		
		String statusPage = null;
		
		if(user == null) {
			 statusPage = "login?status=notRegistered";
		}else {
			if(user.getLoginStatus().equals(LoginStatus.PASSWORD_MISMATCH)) {
				request.setAttribute("status", "invalidPassword");
				statusPage = "/views/login.jsp";
			}else if (user.getLoginStatus().equals(LoginStatus.LOGIN_SUCCESS)) {
				HttpSession session = request.getSession();
				session.setAttribute("userId", user.getId());
				session.setAttribute("firstName", user.getFirstName());
				statusPage = "/views/home.jsp";
			}
		}
		
		//RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher(statusPage);
		//dispatcher.forward(request, response);
		response.sendRedirect(statusPage);
        
   }

}
