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
import com.stunningdeals.service.LoginService;
import com.stunningdeals.service.RegistrationService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try{
			
			LoginService loginService = new LoginService();
			if(loginService.verifyLogin(email, password)){
				
				HttpSession session=request.getSession();
				String name = loginService.getUserName(email);
				
		        session.setAttribute("name", name); 
		        session.setAttribute("email", email);
		        session.setAttribute("loggedIn", true);
				RequestDispatcher rd=request.getRequestDispatcher("login-successful.jsp");
				rd.forward(request, response); 
			}
			else{
				RequestDispatcher rd=request.getRequestDispatcher("login-unsuccessful.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}
