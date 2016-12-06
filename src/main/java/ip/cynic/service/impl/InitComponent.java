package ip.cynic.service.impl;

import java.util.List;

import ip.cynic.domain.Blog;
import ip.cynic.domain.BlogType;
import ip.cynic.domain.Link;
import ip.cynic.service.BlogService;
import ip.cynic.service.BlogTypeService;
import ip.cynic.service.LinkService;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * 服务器启动时 初始化数据 放入ServletContext域中
 * @author cynic
 *
 */
@Component
public class InitComponent implements ServletContextListener,ApplicationContextAware {

	private static ApplicationContext applicationContext;
	
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.applicationContext = applicationContext;
		
	}

	public void contextDestroyed(ServletContextEvent servletContextEvent) {
		
	}

	public void contextInitialized(ServletContextEvent servletContextEvent) {
		ServletContext servletContext = servletContextEvent.getServletContext();
		//查找友情链接
		LinkService linkService = (LinkService) applicationContext.getBean("linkService");
		List<Link> links = linkService.findAllLink();
		servletContext.setAttribute("linkList", links);
		//根据博客类别归档
		BlogTypeService blogTypeService = (BlogTypeService) applicationContext.getBean("blogTypeService");
		List<BlogType> blogTypes = blogTypeService.findBlogCountByType();
		servletContext.setAttribute("blogTypes", blogTypes);
		//根据博客日期归档
		BlogService blogService = (BlogService) applicationContext.getBean("blogService");
		List<Blog> blogsByDate = blogService.findBlogCountGroupByDate();
		servletContext.setAttribute("blogsByDate", blogsByDate);
		
	}

}
