package com.stunningdeals.service;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;

import com.stunningdeals.config.DBConfig;
import com.stunningdeals.models.Offer;

public class AdminService {
	
	public ArrayList<Offer> getAllOffers(){
		
		Connection con = null;
		ArrayList<Offer> offers = new ArrayList<Offer>();
		try{
			con = DBConfig.getConnection();
			String query = " select * from Offers";
			PreparedStatement ps = con.prepareStatement(query);
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
