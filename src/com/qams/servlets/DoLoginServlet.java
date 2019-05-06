package com.qams.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qams.daos.LoginDAO;

public class DoLoginServlet extends HttpServlet{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		LoginDAO loginDAO = new LoginDAO();
		boolean emailExists = loginDAO.checkUserEmail(userId);
		
		
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/views/login.jsp");
        
		dispatcher.forward(request, response);
        
   }

}
