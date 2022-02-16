package compData.model;

import java.util.List;

public interface CompDataDAOInterface {
	
	public abstract CompData select(String compAccount );
	
	public abstract List<CompData> selectATon();
	
	public abstract CompData insert(CompData compData);
	
	public abstract boolean delete(String compAccount);
 
	public abstract boolean update(CompData compData);
}
