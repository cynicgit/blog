package ip.cynic.dao;

import ip.cynic.domain.Link;

import java.util.List;

public interface LinkDao {

	List<Link> findAllLink();
	
}
