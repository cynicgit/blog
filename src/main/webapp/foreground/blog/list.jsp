<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="data_list">	  		
	<div class="datas">
		<ul>
			<c:forEach items="${blogs}" var="blog">
			
			
			<li style="margin-bottom: 30px">
				<span class="date">
					<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">
						<fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy年MM月dd日"/> 
					</a>
				</span>
			  	<span class="title"><a href="${pageContext.request.contextPath}/blog/articles/${blog.id }.html">${blog.title }</a></span>
			  	<span class="summary">摘要: ${blog.summary }...</span>
			  	<span class="img">
				  		<a href="/blog/articles/${blog.id }"><img src="${pageContext.request.contextPath}/static/userImages/a.jpg" alt="1455539511890048174.jpg"></a>
				  		&nbsp;&nbsp;
			  		
				  		<a href="/blog/articles/${blog.id }"><img alt="QQ鎴浘20160215203213.jpg" src="${pageContext.request.contextPath}/static/userImages/b.jpg" title="1455539700734093102.jpg" width="667" height="264" style="width: 667px; height: 264px;"></a>
				  		&nbsp;&nbsp;
			  		
				  		<a href="/blog/articles/${blog.id }"><img alt="QQ鎴浘20160215203317.jpg" src="${pageContext.request.contextPath}/static/userImages/c.jpg" title="1455539761187019902.jpg"></a>
				  		&nbsp;&nbsp;
			  		
			  	</span>
			  	<span class="info">
			  		发表于 <fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/> 阅读(${blog.clickHit }) 评论(${blog.replyHit }) 
			  	</span>
				
			</li>
			 <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			
		</c:forEach>
		</ul>
	</div>
</div>
<div>
	<nav>
		<ul class="pagination pagination-sm">${pageCode }
		</ul>
	</nav>
</div>
