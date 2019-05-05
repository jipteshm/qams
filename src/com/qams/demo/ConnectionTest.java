package com.qams.demo;

import java.sql.Connection;
import java.sql.SQLException;

import com.qams.utils.ConnectionUtils;

public class ConnectionTest {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Connection conn = ConnectionUtils.getConnection();
		System.out.println(conn);
	}
}
