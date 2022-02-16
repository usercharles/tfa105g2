package orderDetail.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import hibernate.HibernateUtil;

public class OrderDetailDAO implements OrderDetailDAOInterface {
	
	private Session session ;
	public OrderDetailDAO(Session session) {
		this.session = session ;
	}
	
	public Session getSession() {
		return this.session;
	}
	
	public static void main(String[] args) {
		SessionFactory sf = hibernate.HibernateUtil.getSessionfactory();
		Session session = sf.getCurrentSession();
		Transaction tx = session.beginTransaction();
		
		
		
		OrderDetailDAOInterface oddaoi = new OrderDetailDAO(session);
		oddaoi.select(1);
		
		
		tx.commit();
		session.close();
		sf.close();
	}
	
	

	@Override
	public OrderDetail select(Integer orderNo) {
		Session session = this.getSession();
		
		OrderDetail orderDetail = session.get(OrderDetail.class, orderNo);
		return orderDetail;
	}

	@Override
	public List<OrderDetail> selectATon() {
		return null;
	}

	@Override
	public OrderDetail insert(OrderDetail orderDetail) {
		Session session = this.getSession();
		
		if(orderDetail!=null && orderDetail.getOrderNo()!=null) {
			session.save(orderDetail);
			System.out.println("Insert成功");
			
		}else {
			System.out.println("請檢查輸入內容");
		}
		
		return orderDetail;		
	}

	@Override
	public boolean delete(Integer orderNo) {
	Session session = this.getSession();
		
		String hql = "From OrderDetail where orderNo = :orderNo";
		
		OrderDetail orderDetail = (OrderDetail) session.createQuery(hql,OrderDetail.class).setParameter("orderNo",orderNo).uniqueResult();
		
		if(orderNo != null && orderDetail!=null) {
			session.delete(orderDetail);
			System.out.println("刪除成功");
			return true ;
			
		}else {
			System.out.println("請檢查輸入內容");
		}
		
		return false;
	}

	@Override
	public boolean update(OrderDetail orderDetail) {
		Session session = this.getSession();
		
		String hql = "From OrderDetail where orderNo =:orderNO";
		
		OrderDetail od = (OrderDetail) session.createQuery(hql,OrderDetail.class).setParameter("orderNo", orderDetail.getOrderNo()).uniqueResult();
		if(od!=null) {
			od.setCompNO(orderDetail.getCompNO());
			od.setProdNo(orderDetail.getProdNo());
			od.setProdName(orderDetail.getProdName());
			od.setProdPrice(orderDetail.getProdPrice());
			od.setProdAmount(orderDetail.getProdAmount());
		}else {
			System.out.println("Wrong Account");
		}
		
		if(od.getCompNO()!=null && od.getProdNo()!=null && od.getOrderNo()!=null ) {
			session.save(od);
			System.out.println("Update success");
			return true;
		}else {
			System.out.println("Somethings wrong with your input");
		}
		return false;
	}

}
