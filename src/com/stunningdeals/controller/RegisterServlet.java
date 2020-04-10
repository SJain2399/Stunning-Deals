package com.stunningdeals.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stunningdeals.models.User;
import com.stunningdeals.service.RegistrationService;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("confirm_password");
		
		if (!password.equals(confirm_password)){
			System.out.println("password doesn't match");
			RequestDispatcher rd=request.getRequestDispatcher("registration-error.jsp");
			rd.forward(request, response);  
		}
		User user = new User(name, email, password);
		System.out.print(user);
		try{
			new RegistrationService().register(user);
			RequestDispatcher rd=request.getRequestDispatcher("registration-successful.jsp");
			request.setAttribute(name, name);
			rd.forward(request, response); 
		}
		catch(Exception e){
			System.out.println(e);
		}
		
	}

}
