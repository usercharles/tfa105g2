package service.model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;

public class ServService {
	private ServiceDAO serviceDao;

	public ServService(ServiceDAO serviceDao) {
		this.serviceDao = serviceDao;
	}

	public static void main(String[] args) {
		SessionFactory sessionFactory = HibernateUtil.getSessionfactory();
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();

		ServService productService = new ServService(new ServiceDAO(sessionFactory));
		ServiceBean bean = new ServiceBean();
		bean.setTaskNo(1);
		List<ServiceBean> selects = productService.select(bean);
		System.out.println("selects=" + selects);

		transaction.commit();
		session.close();
		sessionFactory.close();
	}

	public List<ServiceBean> select(ServiceBean serviceBean) {
		List<ServiceBean> result = null;
		if (serviceBean != null && serviceBean.getTaskNo() != null && !serviceBean.getTaskNo().equals(0)) {
			ServiceBean temp = serviceDao.select(serviceBean.getTaskNo());
			if (temp != null) {
				result = new ArrayList<ServiceBean>();
				result.add(temp);
			}
		} else {
			result = serviceDao.select();
		}
		return result;
	}

	public ServiceBean Insert(ServiceBean serviceBean) {
		ServiceBean result = null;
		if (serviceBean != null && serviceBean.getTaskNo() != null) {
			result = serviceDao.insert(serviceBean);
		}
		return result;
	}

	public ServiceBean update(ServiceBean serviceBean) {
		ServiceBean result = null;
		if (serviceBean != null && serviceBean.getTaskNo() != null) {
			result = serviceDao.update(serviceBean);
		}
		return result;
	}

	public boolean delete(ServiceBean serviceBean) {
		boolean result = false;
		if (serviceBean != null && serviceBean.getTaskNo() != null) {
			result = serviceDao.delete(serviceBean.getTaskNo());
		}
		return result;
	}
}
