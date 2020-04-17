package com.stunningdeals.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stunningdeals.models.Offer;
import com.stunningdeals.service.UserService;

//@WebServlet("/MyDealsServlet")
public class MyDealsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
 
    public MyDealsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		//check if user is logged in
    	if ((Boolean)session.getAttribute("loggedIn") == null){
    		System.out.print("redirected");
    		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
    	}
    	else{
			session.setAttribute("haveDeals", true);
			String email = (String) session.getAttribute("email");
    		UserService userService = new UserService();
    		ArrayList<Offer> offers = userService.getMyOffers(email);
    		request.setAttribute("offers", offers);
    		System.out.println(offers.size());
    		RequestDispatcher rd=request.getRequestDispatcher("login-successful.jsp");
			rd.forward(request, response); 
    	}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
