package service.model;

import java.util.List;

public interface ServiceDAOInterface {
	public abstract ServiceBean select(Integer id);

	public abstract ServiceBean insert(ServiceBean ServiceBean);

	public abstract ServiceBean update(ServiceBean ServiceBean);

	public abstract List<ServiceBean> select();

	public abstract boolean delete(Integer id);

}
