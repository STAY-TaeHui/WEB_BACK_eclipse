package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class selectdb
 */
@WebServlet("/Select.do")
public class selectdb extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private empDAO dao;
   
    public selectdb() {
        super();
        dao = new empDAO();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String column = request.getParameter("column");
		int where = Integer.parseInt(request.getParameter("where"));
		System.out.print(column + " "+ where);
		dao.executeQuery(column, where);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
