package ip.cynic.service;

import ip.cynic.domain.Blog;

import java.util.List;
import java.util.Map;

public interface BlogService {
	
	/**
	 * 根据日期将博客归档
	 * @return
	 */
	List<Blog> findBlogCountGroupByDate();

	/**
	 * 分页查找blog
	 * @param pageBean
	 * @return
	 */
	List<Blog> findBlogList(Map<String, Object> map);

	long getTotal(Map<String, Object> map);

	Blog findBlogById(Integer id);

	/**
	 * 更新blog点击数
	 * @param blog
	 */
	void updateClickHit(Blog blog);

	Blog getPrevious(Integer id);

	Blog getNext(Integer id);
}
