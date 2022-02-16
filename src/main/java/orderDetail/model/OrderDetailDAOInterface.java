package orderDetail.model;

import java.util.List;


public interface OrderDetailDAOInterface {
		
		public abstract OrderDetail select(Integer orderNo );
		
		public abstract List<OrderDetail> selectATon();
		
		public abstract OrderDetail insert(OrderDetail orderDetail);
		
		public abstract boolean delete(Integer orderNo);
	 
		public abstract boolean update(OrderDetail orderDetail);
	
}
