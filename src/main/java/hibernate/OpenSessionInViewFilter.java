package hibernate;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

@WebFilter(
		urlPatterns = {"/*"}
)
public class OpenSessionInViewFilter implements Filter {
		
	private SessionFactory sf ;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		 request.setCharacterEncoding("UTF-8");
		
		sf = (SessionFactory) request.getServletContext().getAttribute("sessionFactory");
		request.setAttribute("session", sf.getCurrentSession());
		
	
		try {
			this.sf.getCurrentSession().beginTransaction();
			chain.doFilter(request, response);
			this.sf.getCurrentSession().getTransaction().commit();
			this.sf.getCurrentSession().close();
			
			
			
		} catch (Exception e) {
			this.sf.getCurrentSession().getTransaction().rollback();
			e.printStackTrace();
		}
	}
	@Override
	public void destroy() {

	}
}
