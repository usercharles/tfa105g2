package service.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class ServiceDAO implements ServiceDAOInterface {
	private SessionFactory sessionFactory;

	public ServiceDAO(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public ServiceBean select(Integer taskNo) {
		if (taskNo != null) {
			return this.getSession().get(ServiceBean.class, taskNo);
		}
		return null;
	}

	@Override
	public List<ServiceBean> select() {
		return this.getSession().createQuery("FROM ServiceBean", ServiceBean.class).list();
	}

	@Override
	public ServiceBean insert(ServiceBean serviceBean) {
		if (serviceBean != null && serviceBean.getTaskNo() != null) {
			ServiceBean temp = this.getSession().get(ServiceBean.class, serviceBean.getTaskNo());
			if (temp == null) {
				this.getSession().save(serviceBean);
				return serviceBean;
			}
		}
		return null;
	}

	@Override
	public ServiceBean update(ServiceBean serviceBean) {
		if (serviceBean.getTaskNo() != null) {
			ServiceBean temp = this.getSession().get(ServiceBean.class, serviceBean.getTaskNo());
			if (temp != null) {
				temp.setReplyCode(serviceBean.getReplyCode());
				temp.setCustomerContent(serviceBean.getCustomerContent());
				temp.setReplyDateTime(serviceBean.getReplyDateTime());
				return temp;
			}
		}
		return null;
	}

	@Override
	public boolean delete(Integer taskNo) {
		if (taskNo != null) {
			ServiceBean temp = this.getSession().get(ServiceBean.class, taskNo);
			if (temp != null) {
				this.getSession().delete(temp);
				return true;
			}
		}
		return false;
	}
}
