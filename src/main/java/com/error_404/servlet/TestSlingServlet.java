package com.error_404.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.sling.api.servlets.SlingAllMethodsServlet;


/**
 * Servlet implementation class TestSlingServlet
 */

public class TestSlingServlet extends SlingAllMethodsServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see SlingAllMethodsServlet#SlingAllMethodsServlet()
     */
    public TestSlingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#service(ServletRequest request, ServletResponse response)
	 */
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().write("4656");
	}

}
