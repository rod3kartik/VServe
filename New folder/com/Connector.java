package com;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
static Connection con;
static
{
	try {
		Class.forName("com.mysql.jdbc.Driver");
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vserve","root","");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
}
}


