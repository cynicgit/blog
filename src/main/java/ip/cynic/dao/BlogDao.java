package ip.cynic.dao;

import ip.cynic.domain.Blog;

import java.util.List;
import java.util.Map;


public interface BlogDao {

	/**
	 * 根据日期将博客归档
	 * @return
	 */
	List<Blog> findBlogCountGroupByDate();

	/**
	 * 分页查找blog
	 * @param map
	 * @return
	 */
	List<Blog> findBlogList(Map<String, Object> map);

	/**
	 * 根据条件查询总数
	 * @param map
	 * @return
	 */
	long getTotal(Map<String, Object> map);

	Blog findBlogById(Integer id);

	/**
	 * 更新blog点击数
	 * @param blog
	 */
	void updateClickHit(Blog blog);

	/**
	 * 获取上一篇文章
	 * @param id
	 * @return
	 */
	Blog getPrevious(Integer id);

	/**
	 * 获取下一篇
	 * @param id
	 * @return
	 */
	Blog getNext(Integer id);
	
}
