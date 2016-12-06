package ip.cynic.service.impl;

import java.util.List;

import ip.cynic.dao.CommentDao;
import ip.cynic.domain.Comment;
import ip.cynic.service.CommentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDao commentDao;
	
	@Override
	public List<Comment> findCommentByBlogId(Integer id) {
		return commentDao.findCommentByBlogId(id);
	}

}
