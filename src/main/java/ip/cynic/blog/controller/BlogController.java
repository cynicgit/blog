package ip.cynic.blog.controller;

import ip.cynic.domain.Blog;
import ip.cynic.domain.Comment;
import ip.cynic.service.BlogService;
import ip.cynic.service.CommentService;
import ip.cynic.utils.StringUtil;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/blog")
public class BlogController {

	@Autowired
	BlogService blogService;
	
	@Autowired
	CommentService commentService;
	
	
	@RequestMapping("/articles/{id}")
	public ModelAndView articles(@PathVariable("id") Integer id, HttpServletRequest request) {
		ModelAndView model = new ModelAndView("mainTemp");
		Blog blog = blogService.findBlogById(id);
		model.addObject("blog", blog);
		model.addObject("mainPage", "foreground/blog/view.jsp");
		blog.setClickHit(blog.getClickHit() + 1);
		
		String keyword = blog.getKeyword();
		if(!StringUtil.isEmpty(keyword)) {
			String[] keywords = keyword.split(" ");
			model.addObject("keyword", StringUtil.filterWhite(Arrays.asList(keywords)));
		} else {
			model.addObject("keyword", null);
		}
		
		//更新点击数
		blog.setClickHit(blog.getClickHit() + 1);
		blogService.updateClickHit(blog);
		
		model.addObject("pageTitle", blog.getTitle() + "-Cynic");
		model.addObject("pageCode", getPreviousnAndNext(blogService.getPrevious(id)
				,blogService.getNext(id),request.getServletContext().getContextPath()));
		
		// 查询评论
		List<Comment> comments = commentService.findCommentByBlogId(blog.getId());
		model.addObject("comments", comments);
		
		return model;
	}
	
	/**
	 * 获取上一篇，下一篇blog
	 * @param previous
	 * @param next
	 * @param webProject web项目名
	 * @return 
	 */
	private String getPreviousnAndNext(Blog previous, Blog next, String webProject) {
		StringBuffer sb = new StringBuffer();  
		if(previous == null) {
			sb.append("<p>上一篇: 没有了");
		} else { 
			sb.append("<p>上一篇: <a href='").append(webProject).append("/blog/articles/")
				.append(previous.getId()).append(".html'>").append(previous.getTitle())
				.append("</a></p>");
		}
		if(next == null) {
			sb.append("<p>下一篇: 没有了"); 
		} else {
			sb.append("<p>下一篇: <a href='").append(webProject).append("/blog/articles/")
			.append(next.getId()).append(".html'>").append(next.getTitle())
			.append("</a></p>");
		}
		
		return sb.toString();
	}
	
	
}
