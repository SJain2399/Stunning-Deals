package com.stunningdeals.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.stunningdeals.models.User;

public class RegistrationService {
	
	private static String url= "jdbc:mysql://192.168.111.3:3306/st_deals";
	private static String uname = "user";
	private static String pass = "Shruti@123";
	
	
	public static void register(User user) throws Exception{
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			String query = "INSERT INTO User(name, email, password) Values (?, ?, ?)" ;
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.executeUpdate();
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
