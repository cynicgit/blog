package ip.cynic.service.impl;


import ip.cynic.dao.BlogDao;
import ip.cynic.domain.Blog;
import ip.cynic.service.BlogService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("blogService")
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogDao blogDao;
	
	public List<Blog> findBlogCountGroupByDate() {
		return blogDao.findBlogCountGroupByDate();
	}

	public List<Blog> findBlogList(Map<String, Object> map) {
		return blogDao.findBlogList(map);
	}

	@Override
	public long getTotal(Map<String, Object> map) {
		return blogDao.getTotal(map);
	}

	@Override
	public Blog findBlogById(Integer id) {
		return blogDao.findBlogById(id);
	}

	@Override
	public void updateClickHit(Blog blog) {
		blogDao.updateClickHit(blog);
	}

	@Override
	public Blog getPrevious(Integer id) {
		return blogDao.getPrevious(id);
	}

	@Override
	public Blog getNext(Integer id) {
		return blogDao.getNext(id);
	}

}
