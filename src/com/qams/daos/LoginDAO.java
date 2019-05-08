package com.qams.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.qams.models.User;
import com.qams.servlets.DoLoginServlet.LoginStatus;
import com.qams.utils.ConnectionUtils;

public class LoginDAO {
	
	
	public User checkUser(String emailOrMobile, String passwordHash) {
		User user = null;
		try {
			Connection con = ConnectionUtils.getConnection();
 			PreparedStatement ps = con.prepareStatement("SELECT id, firstName, lastName, email, mobile, passwordHash FROM User "
 					+ "	WHERE email = ? OR mobile = ? ");
			ps.setString(1, emailOrMobile);
			ps.setString(2, emailOrMobile);
			
			ResultSet resultSet = ps.executeQuery();
			
			boolean resultExists = resultSet.next();
			
			if(resultExists) {
				user = new User();
				String dbFirstName = null;
				String dbLastName = null;
				String dbPasswordHash = null;
				String dbEmail = null;
				String dbMobile = null;
				int userId = 0;
				
				 userId = resultSet.getInt("id");
				 dbFirstName = resultSet.getString("firstName");
				 dbLastName = resultSet.getString("lastName");
				 dbPasswordHash = resultSet.getString("passwordHash");
				 dbEmail = resultSet.getString("lastName");
				 dbMobile = resultSet.getString("mobile");
				 
				 if(!dbPasswordHash.equals(passwordHash)) {
					user.setLoginStatus(LoginStatus.PASSWORD_MISMATCH);
				 }else {
					 user.setFirstName(dbFirstName);
					 user.setLastName(dbLastName);
					 user.setEmail(dbEmail);
					 user.setMobile(dbMobile);
					 user.setId(userId);
					 user.setLoginStatus(LoginStatus.LOGIN_SUCCESS);
				 }
				 
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}

}
