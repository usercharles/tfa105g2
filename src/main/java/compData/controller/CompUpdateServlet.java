package compData.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import compData.model.CompData;
import compData.model.CompDataDAO;
import compData.model.CompDataDAOInterface;
import compData.model.CompDataService;

@WebServlet("/secure/update.controller")
public class CompUpdateServlet  extends HttpServlet {
	
	private static final long serialVersionUID = 1L;


	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		Session sessionH = (Session) req.getAttribute("session");
		CompDataDAOInterface cddaoi = new CompDataDAO(sessionH);
		CompDataService cds = new CompDataService(cddaoi);
		HttpSession session = req.getSession();
		
		
//=========================================== Change Password Section Starts Here ============================================		
		String compAccount = (String)session.getAttribute("compAccount");
		String oldPass = req.getParameter("oldPass").trim();
		String newPass = req.getParameter("newPass").trim();
		String confirm = req.getParameter("confirm").trim();
				
		
		
		Map<String, String> errors = cds.getErrors();
		boolean trueOrFalse = cds.changePassword(compAccount, oldPass, newPass , confirm);
		if(trueOrFalse == false) {
			req.setAttribute("errors", errors);
			req.getRequestDispatcher("/ChangePasswordFailed.jsp").forward(req, res);
			return;
		}else {			 
			 session.setAttribute("changePasswordSucceed", "更改密碼成功");
			 String path = req.getContextPath();
				res.sendRedirect(path+"/ChangePasswordSucceed.jsp");
		}
		
//=========================================== Change Password Section Ends Here ============================================
		
		
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		this.doGet(req, res);
	}

}
