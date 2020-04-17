package com.stunningdeals.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
    private static String url= "jdbc:mysql://192.168.111.3:3306/st_deals";
	private static String uname = "user";
	private static String pass = "Shruti@123";
	 
	public static Connection getConnection() {
        Connection conn = null;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, uname, pass);
        }
        catch(Exception e){
        	 throw new RuntimeException("Failed to obtain database connection.", e);
        }
        return conn;
	} 

}
