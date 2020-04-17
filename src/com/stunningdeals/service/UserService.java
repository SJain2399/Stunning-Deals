package com.stunningdeals.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import com.stunningdeals.config.DBConfig;
import com.stunningdeals.models.User;
import com.stunningdeals.models.Offer;

public class UserService {
	
	public boolean verifyLogin(String email, String password) throws Exception{
		
		boolean st = false;
		Connection con = null;
		try{
			con = DBConfig.getConnection();
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
		finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    //silent
                }
            }
		}
		return st;
	}
	
	public void register(User user) throws Exception{
		Connection con = null;
		try{
			con = DBConfig.getConnection();
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
		finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    //silent
                }
            }
		}
	}

	public String getUserName(String email){
		String name = null;
		Connection con = null;
		try{
			con = DBConfig.getConnection();
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
		finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    //silent
                }
            }
		}
		return name;
	}
	
	public ArrayList<Offer> getMyOffers(String email){
		Connection con = null;
		ArrayList<Offer> offers = new ArrayList<Offer>();
		try{
			con = DBConfig.getConnection();
			String query = " select * from Offers where email=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Offer offer = new Offer();
				   offer.setEmail(rs.getString("email"));
				   offer.setOfferName(rs.getString("offerName"));
				   offer.setOfferValidTo(rs.getDate("offerValidFrom"));
				   offer.setOfferValidFrom(rs.getDate("offerValidTo"));
				   offer.setOffer(rs.getString("offer"));
				   offer.setOfferSummary(rs.getString("offerSummary"));
				   Blob blob = rs.getBlob("offerBanner");
				   InputStream inputStream = blob.getBinaryStream();
	               ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	               byte[] buffer = new byte[4096];
	               int bytesRead = -1; 
	               while ((bytesRead = inputStream.read(buffer)) != -1) {
	                   outputStream.write(buffer, 0, bytesRead);                  
	               }           
	               byte[] imageBytes = outputStream.toByteArray();
	               String base64Image = Base64.getEncoder().encodeToString(imageBytes);
				   offer.setOfferBanner(base64Image);
				   Blob companyLogo= rs.getBlob("companyLogo");
				   InputStream inputStream1= companyLogo.getBinaryStream();
	               ByteArrayOutputStream outputStream1 = new ByteArrayOutputStream();
	               byte[] buffer1 = new byte[4096];
	               int bytesRead1 = -1; 
	               while ((bytesRead1 = inputStream1.read(buffer1)) != -1) {
	                   outputStream1.write(buffer1, 0, bytesRead1);                  
	               }           
	               byte[] imageBytes1 = outputStream1.toByteArray();
	               String base64Image1 = Base64.getEncoder().encodeToString(imageBytes1);
				   offer.setCompanyLogo(base64Image1);
				   offers.add(offer);
				}
	        
		}
		catch(Exception e){
			System.out.println(e);
		}
		finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    //silent
                }
            }
		}
		return offers;
	}
}
