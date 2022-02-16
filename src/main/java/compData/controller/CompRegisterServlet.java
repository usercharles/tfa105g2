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

@WebServlet("/secure/register.controller")
public class CompRegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void init() throws ServletException {

	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		/*
		 * ======================================== Input Check Section
		 * =======================================
		 */

		Session sessionH = (Session) req.getAttribute("session");
		CompDataDAOInterface cddaoi = new CompDataDAO(sessionH);
		CompDataService cds = new CompDataService(cddaoi);

		String compAccount = req.getParameter("compAccount").trim();
		String compName = req.getParameter("compName").trim();
		String email = req.getParameter("email").trim();
		String chargePerson = req.getParameter("chargePerson").trim();
		String compPhone = req.getParameter("compPhone").trim();
		String password = req.getParameter("password").trim();
		String confirmPassword = req.getParameter("confirmPassword").trim();
		
		System.out.println(confirmPassword);

		Map<String, String> errors = cds.getErrors();
		CompData cd = new CompData();
		cd.setCompAccount(compAccount);
		cd.setCompName(compName);
		cd.setEmail(email);
		cd.setChargePerson(chargePerson);
		cd.setCompPhone(compPhone);
		cd.setPassword(password);
		
	

//========================================= End of Input Check Section ==================================================================		

		if(password.equals(confirmPassword)) {
			CompData result = cds.Register(cd);
			if (result == null) {
				req.setAttribute("errors", errors);
				req.setAttribute("compAccount", compAccount);
				req.setAttribute("compName", compName);
				req.setAttribute("email", email);
				req.setAttribute("chargePerson", chargePerson);
				req.setAttribute("compPhone", compPhone);
				req.getRequestDispatcher("/register-failed.jsp").forward(req, res);

			} else {
				
				HttpSession session = req.getSession();
				session.setAttribute("RegisterSucceed", "註冊成功");
				session.setAttribute("CompName",  cd.getCompName());
				session.setAttribute("ChargePerson", cd.getChargePerson());
				session.setAttribute("email", cd.getEmail());
				session.setAttribute("CompPhone", cd.getCompPhone());
				session.setAttribute("compAccount", cd.getCompAccount());
				String path = req.getContextPath();
				res.sendRedirect(path + "/comp-login-register.jsp");
			}
			
		}else {
			errors.put("password", "請檢察密碼輸入");
			req.setAttribute("errors", errors);
			req.setAttribute("compAccount", compAccount);
			req.setAttribute("compName", compName);
			req.setAttribute("email", email);
			req.setAttribute("chargePerson", chargePerson);
			req.setAttribute("compPhone", compPhone);
			req.getRequestDispatcher("/register-failed.jsp").forward(req, res);
			
		}
		
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		this.doGet(req, res);
	}

}
