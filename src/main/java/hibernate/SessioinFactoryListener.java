package hibernate;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.hibernate.SessionFactory;

@WebListener
public class SessioinFactoryListener implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		sce.getServletContext().setAttribute("sessionFactory", HibernateUtil.getSessionfactory());
	}
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		if((SessionFactory) sce.getServletContext().getAttribute("sessionFactory")!=null)
		HibernateUtil.closeSessionFactory();
	}
}
