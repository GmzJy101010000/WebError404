package com.error_404.servlet;

import java.io.IOException;
import java.lang.annotation.Retention;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.sling.api.servlets.SlingAllMethodsServlet;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class error_404_servlet
 */

public class error_404_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public error_404_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final Map<String, String> mailtoken=new HashMap<String, String>();
	//String url=request.getParameter("test2");
	//response.getWriter().write("server");
	JSONArray hArray=JSONArray.fromString(request.getParameter("formData"));
	for(int i=0;i<hArray.length();i++){
	
		JSONObject jsonObject=new JSONObject(hArray.getString(i));		
		String key=jsonObject.getString("name");
		String value=jsonObject.getString("value");
		mailtoken.put(key, value);
		
	}
	System.out.println(mailtoken.size());
	System.out.println(mailtoken.get("name"));
	System.out.println(mailtoken.get("email"));
	System.out.println(mailtoken.get("r"));
//	System.out.println(url);
//	if(url.indexOf("1")>0){
//		request.getRequestDispatcher("/404/e1.jsp").forward(request, response);
//	}
//	else{
//		request.getRequestDispatcher("/404/e2.jsp").forward(request, response);
//	}
//	
	response.getWriter().write("khkhj");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

class sdfsd extends SlingAllMethodsServlet{
	
	
}
