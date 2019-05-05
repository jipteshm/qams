package com.qams.demo;

import java.sql.Connection;
import java.sql.SQLException;

import com.qams.utils.ConnectionUtils;

public class Demo {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Connection conn = ConnectionUtils.getMySQLConnection();
		System.out.println(conn);
	}
}
