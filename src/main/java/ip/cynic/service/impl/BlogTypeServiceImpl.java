package ip.cynic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ip.cynic.dao.BlogTypeDao;
import ip.cynic.domain.BlogType;
import ip.cynic.service.BlogTypeService;

@Service("blogTypeService")
public class BlogTypeServiceImpl implements BlogTypeService {

	@Autowired
	private BlogTypeDao blogTypeDao;
	
	public List<BlogType> findBlogCountByType() {
		return blogTypeDao.findBlogCountByType();
	}

}
