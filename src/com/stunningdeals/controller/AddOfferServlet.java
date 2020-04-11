package com.stunningdeals.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
// upload file's size up to 16MB
public class AddOfferServlet extends HttpServlet {
   
	private static final long serialVersionUID = 1L;

	private static final int BUFFER_SIZE = 4096;
    
    // database connection settings
    
    private static String url= "jdbc:mysql://192.168.111.3:3306/st_deals";
	private static String uname = "user";
	private static String pass = "Shruti@123";
	 
	private Connection getConnection() {
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
   

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	HttpSession session = request.getSession();
    	
    	//check if user is logged in
    	if (!(Boolean)session.getAttribute("loggedIn")){
    		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
    	}
    	
		String email = (String) session.getAttribute("email");
        //get values of form fields
        String offerName = request.getParameter("offerName");
        String offerValidFromStr = request.getParameter("offerValidFrom");
        String offerValidToStr = request.getParameter("offerValidTo");
        String offer = request.getParameter("offer");
        String offerSummary = request.getParameter("offerSummary");
       
        InputStream inputStream = null; // input stream of the upload file , it obtains the upload file part in this multipart request
        Part filePart = request.getPart("offerBanner");
        
        System.out.println(offerName + " " + offerValidFromStr + " " + offerValidToStr);
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            /* Obtains input stream of the upload file,
       		the InputStream will point to a stream that contains the contents of the file*/
            
            inputStream = filePart.getInputStream();
        }
        
        DateConverter dc = new DateConverter();
        Date offerValidFrom = null, offerValidTo = null;
		try {
			offerValidFrom = dc.convertStringToSqlDate(offerValidFromStr);
			offerValidTo = dc.convertStringToSqlDate(offerValidToStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
       
		String message = null;
        Connection conn = null; // connection to the database
        try {
            // connects to the database
            conn = getConnection();
            // constructs SQL statement
            String sql = "INSERT INTO offers (email, offerName, offerValidFrom, offerValidTo, offer, offerSummary, offerBanner ) "
            		+ "values (?, ?, ?, ?, ?, ?, ?)";
            
            //Using a PreparedStatement to save the file
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, offerName);
            ps.setDate(3, offerValidFrom);
            ps.setDate(4, offerValidTo);
            ps.setString(5, offer);
            ps.setString(6, offerSummary);
            if (inputStream != null) {
                ps.setBlob(7, inputStream);
            }
            //sends the statement to the database server
            int row = ps.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
            
            /* retriving file from database
            String filepath = "E:/projects/images";
            //Obtaining the file from database using a second statement
            String sql1 = "SELECT photo FROM contacts WHERE first_name=? AND last_name=?";
            PreparedStatement pstmtSelect = conn.prepareStatement(sql1);
            pstmtSelect.setString(1, firstName);
            pstmtSelect.setString(2, lastName);
            ResultSet result = pstmtSelect.executeQuery();
            if (result.next()) {
                Blob blob = result.getBlob("photo");
                InputStream inputStream1 = blob.getBinaryStream();
                OutputStream outputStream = new FileOutputStream(filepath);
                int bytesRead = -1;
                byte[] buffer = new byte[BUFFER_SIZE];
                while ((bytesRead = inputStream1.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                inputStream1.close();
                outputStream.close();
                
                System.out.println("File saved");
            } */
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    //silent
                }
            }
            // sets the message in request scope
            request.setAttribute("message", message);

            // forwards to the message page
            getServletContext().getRequestDispatcher("/login-successful.jsp")
                .include(request, response);
        }
    }
}