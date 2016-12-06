package ip.cynic.dao;

import ip.cynic.domain.Comment;

import java.util.List;

public interface CommentDao {

	/**
	 * 查找blog里的评论集合
	 * @param id
	 * @return
	 */
	List<Comment> findCommentByBlogId(Integer id);

}
