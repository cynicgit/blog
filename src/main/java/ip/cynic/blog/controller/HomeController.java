package ip.cynic.blog.controller;

import ip.cynic.domain.Blog;
import ip.cynic.domain.PageBean;
import ip.cynic.domain.User;
import ip.cynic.service.BlogService;
import ip.cynic.service.UserService;
import ip.cynic.utils.PageUtil;
import ip.cynic.utils.StringUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	BlogService blogService;
	@Autowired
	UserService userService;
	

	@RequestMapping("/home")
	public ModelAndView home(@RequestParam(value = "page", required = false) String page, 
			@RequestParam(value = "typeId", required = false) String typeId,
			@RequestParam(value = "releaseDateStr", required = false) String releaseDateStr,
			HttpServletRequest request) {
		ModelAndView model = new ModelAndView("mainTemp2");
		if (page == null) {
			page = "1";
		}
		PageBean pageBean = new PageBean(Integer.parseInt(page), 10);
		Map<String, Object> map = new HashMap<>();
		map.put("start", pageBean.getStart());
		map.put("pageSize", pageBean.getPageSize());
		map.put("typeId", typeId);
		map.put("releaseDateStr", releaseDateStr);
		StringBuffer sb = new StringBuffer();
		if(StringUtil.isNotEmpty(typeId)) {
			sb.append("typeId=").append(typeId).append("&");
		}
		if(StringUtil.isNotEmpty(releaseDateStr)) {
			sb.append("releaseDateStr=").append(releaseDateStr).append("&");
		}
		List<Blog> blogs = blogService.findBlogList(map);
		
		
		model.addObject("pageCode", PageUtil.genPagination(request.getContextPath()+"/home.html", 
				blogService.getTotal(map), Integer.parseInt(page), 10, sb.toString()));
		model.addObject("blogs", blogs);
		model.addObject("mainPage", "foreground2/blog/list.jsp");
		return model;
	}
	
	@RequestMapping("/user")
	public ModelAndView user() {
		ModelAndView model = new ModelAndView("mainTemp");
		model.addObject("mainPage", "foreground/blog/user.jsp");
		User user = userService.findUser();
		model.addObject("user", user);
		model.addObject("title", "关于博主");
		return model;
	}
	
	
	@RequestMapping("/download")
	public ModelAndView download() {
		ModelAndView model = new ModelAndView("mainTemp");
		model.addObject("mainPage", "foreground/blog/download.jsp");
		model.addObject("title", "源码下载");
		return model;
	}
	
	
	
}
