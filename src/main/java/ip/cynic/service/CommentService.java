package ip.cynic.service;

import ip.cynic.domain.Comment;

import java.util.List;

public interface CommentService {

	/**
	 * 查找blog里的评论集合
	 * @param id
	 * @return
	 */
	List<Comment> findCommentByBlogId(Integer id);

}
