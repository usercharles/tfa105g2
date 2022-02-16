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



@WebServlet("/secure/editprofile.controller")
public class CompEditProfileServelt extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		
			Session sessionH = (Session) req.getAttribute("session");
			CompDataDAOInterface cddaoi = new CompDataDAO(sessionH);
			CompDataService cds = new CompDataService(cddaoi);
			HttpSession session = req.getSession();
			Map<String , String> errors = cds.getErrors();
			
			
			String compAccount      = (String) session.getAttribute("compAccount");
			String password         = (String) session.getAttribute("password");
			String editCompName     = req.getParameter("editCompName").trim();
			String editChargePerson = req.getParameter("editChargePerson").trim();
			String editEmail        = req.getParameter("editEmail").trim();
			String editCompPhone    = req.getParameter("editCompPhone").trim();
			String editAddress      = req.getParameter("editAddress").trim();
			
			CompData cd = new CompData();
			cd.setCompAccount(compAccount);
			cd.setPassword(password);
			cd.setCompName(editCompName);
			cd.setChargePerson(editChargePerson);
			cd.setEmail(editEmail);
			cd.setCompPhone(editCompPhone);
			cd.setAddress(editAddress);
			
			boolean succeedOrNot = cds.editPersonalProfile(cd);
			
			if(succeedOrNot == false) {
				req.setAttribute("CompName", editCompName);
				req.setAttribute("ChargePerson", editChargePerson);
				req.setAttribute("email", editEmail);
				req.setAttribute("CompPhone", editCompPhone);
				req.setAttribute("Address", editAddress);
				req.setAttribute("errors", errors);
				req.getRequestDispatcher("/EditFailed.jsp").forward(req, res);
				
				return;
			}else {
				session.setAttribute("EditPersonalProfileSucceed", "編輯帳戶資訊成功");
				 String path = req.getContextPath();
					res.sendRedirect(path+"/EditSucceed.jsp");
			}
			
			
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException{
		this.doGet(req, res);
	}

}
