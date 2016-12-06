package ip.cynic.service;

import ip.cynic.domain.BlogType;

import java.util.List;

public interface BlogTypeService {
	
	/**
	 * 根据博客类别归档
	 * @return
	 */
	List<BlogType> findBlogCountByType();
	
}
