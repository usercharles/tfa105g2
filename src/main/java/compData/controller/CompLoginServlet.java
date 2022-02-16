
package compData.controller;

import java.io.IOException;
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
@WebServlet("/secure/login.controller")
public class CompLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	
	
	
	public void init() throws ServletException {
		
	}
	
	public void doGet(HttpServletRequest req , HttpServletResponse res)
			throws ServletException, IOException {
		
//		req.setCharacterEncoding("UTF-8");
		
/*	========================================	Login Section	================================================	*/
		
		Session sessionH = (Session) req.getAttribute("session");
		CompDataDAOInterface cddaoi = new CompDataDAO(sessionH);
		CompDataService cds = new CompDataService(cddaoi);
		
		String compAccount = req.getParameter("compAccount").trim();
		String password    = req.getParameter("password").trim();
		
		Map<String, String> errors = cds.getErrors();
	


		CompData cd = cds.login(compAccount, password);
		
		
		if(errors.size()!=0) {
				req.setAttribute("errors", errors);
				req.setAttribute("username", compAccount);
//				req.setAttribute("password", password);
				req.getRequestDispatcher("/login-failed.jsp").forward(req, res);
				return;
			}
		
		 else {
			HttpSession session = req.getSession();
			session.setAttribute("CompName", cd.getCompName());
			session.setAttribute("ChargePerson", cd.getChargePerson());
			session.setAttribute("CompPhone", cd.getCompPhone());
			session.setAttribute("email", cd.getEmail());
			session.setAttribute("compAccount", cd.getCompAccount());
			session.setAttribute("password", cd.getPassword());
			session.setAttribute("compNo", cd.getCompNO());
			session.setAttribute("Address", cd.getAddress());
			
			
			String path = req.getContextPath();
			res.sendRedirect(path+"/comp-login-register.jsp");
		}
/*============================================================================================================= */
				
	}
	
	
	public void doPost(HttpServletRequest req ,HttpServletResponse res ) 
			throws ServletException, IOException {
		this.doGet(req, res);
	}
	

}
