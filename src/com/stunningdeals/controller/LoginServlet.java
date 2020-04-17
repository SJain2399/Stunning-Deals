package com.stunningdeals.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stunningdeals.models.User;
import com.stunningdeals.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try{
			HttpSession session=request.getSession();
			UserService userService = new UserService();
			if(userService.verifyLogin(email, password)){
				String name = userService.getUserName(email);
				
		        session.setAttribute("name", name); 
		        session.setAttribute("email", email);
		        session.setAttribute("loggedIn", true);
		        RequestDispatcher rd = getServletContext().getRequestDispatcher("/MyDealsServlet");
		        rd.forward(request, response); 
			}
			else{
				//session.setAttribute("loggedIn", false);
				session.invalidate();
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}
