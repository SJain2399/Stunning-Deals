package com.stunningdeals.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.stunningdeals.models.User;

public class LoginService {
	
	private static String url= "jdbc:mysql://192.168.111.3:3306/st_deals";
	private static String uname = "user";
	private static String pass = "Shruti@123";
	
	public static boolean verifyLogin(String email, String password) throws Exception{
		boolean st = false;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			String query = " select * from User where email=? and password=?" ;
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ps.executeQuery();
			ResultSet rs =ps.executeQuery();
			System.out.println(rs);
            st = rs.next();
            System.out.print(email + " " + password);
		}
		catch(Exception e){
			System.out.println(e);
		}
		return st;
	}

	public static String getUserName(String email){
		String name = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			String query = " select * from User where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.executeQuery();
			ResultSet rs =ps.executeQuery();
            rs.next();
            name = rs.getString("name");
            System.out.print(name);
		}
		catch(Exception e){
			System.out.println(e);
		}
		return name;
	}
}
