package com.assignment;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class servletcontroller
 */
@WebServlet("/servletcontroller")
public class servletcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public servletcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// read the "command" parameter
			String theCommand = request.getParameter("command");
			
			// if the command is missing, then default to listing products
			if (theCommand == null) {
				theCommand = "LIST";
			}
			
			// route to the appropriate method
			switch (theCommand) {
			
			case "LIST":
				login(request, response);
				break;
				
			case "wel":
				welcome(request, response);
				break;
				
			case "add":
				add(request, response);
				break;
			case "LOAD":
				update(request, response);
				break;
			case "upd":
				upd(request, response);
				break;
			case "delete":
				delete(request, response);
				break;
			case "logout":
				logout(request, response);
				break;
			}
				
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}
	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		welcomejava.getP().clear();
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int a=Integer.parseInt(request.getParameter("ProductId"));
	
		
		welcomejava.getP().removeIf(n->n.getProductId()==a);
		request.setAttribute("product_list",welcomejava.getP());
		request.getRequestDispatcher("Welcome.jsp").forward(request, response);
	
		
	}

	private void upd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int a=Integer.parseInt(request.getParameter("pid"));
		String b=request.getParameter("pname");
		String c=request.getParameter("pdesc");
		String d=request.getParameter("rel");
		
		welcomejava.getP().removeIf(n->n.getProductId()==a);
		welcomejava.getP().add(new product(a,b,c,d));
		
		request.setAttribute("product_list",welcomejava.getP());
		request.getRequestDispatcher("Welcome.jsp").forward(request, response);
	
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int a=Integer.parseInt(request.getParameter("ProductId"));
		product b=welcomejava.getP().stream().filter(n->n.getProductId()==a).findFirst().get();
		request.setAttribute("produ",b);
		request.getRequestDispatcher("update.jsp").forward(request, response);
		
		
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int a=Integer.parseInt(request.getParameter("pid"));
		String b=request.getParameter("pname");
		String c=request.getParameter("pdesc");
		String d=request.getParameter("rel");
		
		welcomejava.getP().add(new product(a,b,c,d));
		
		request.setAttribute("product_list",welcomejava.getP());
		request.getRequestDispatcher("Welcome.jsp").forward(request, response);
		
	}

	private void welcome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		request.setAttribute("product_list",welcomejava.getP());
		RequestDispatcher dispatcher = request.getRequestDispatcher("Welcome.jsp");
		dispatcher.forward(request, response);
	

	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a="please login here";
		request.setAttribute("product",a);
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}

	

}
