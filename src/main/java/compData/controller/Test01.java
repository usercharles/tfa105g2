package compData.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test01
 */
@WebServlet("/Test01")
public class Test01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");
		// 誇domain
        res.addHeader("Access-Control-Allow-Origin","*");
        
        String name = req.getParameter("userName");
        System.out.println(name);
        PrintWriter out = res.getWriter();
        out.print(name);
	}

}
