package ip.cynic.dao;

import ip.cynic.domain.BlogType;

import java.util.List;


public interface BlogTypeDao {

	/**
	 * 根据博客类别归档
	 * @return
	 */
	List<BlogType> findBlogCountByType();
	
	BlogType fingTypeById(int typeID);
	
}
