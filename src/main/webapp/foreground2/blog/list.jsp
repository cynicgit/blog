<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="col-md-9">
	<div class="panel panel-default">
		<div class="panel-heading">
			<span class="glyphicon glyphicon-list"></span> 博客
		</div>
		<div class="panel-body">
			<c:forEach items="${blogs}" var="blog">
				<h2>
					<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html">${blog.title }</a>
				</h2>
				<p>
					<a href="${pageContext.request.contextPath}/blog/articles/${blog.id}.html"> <span class="text-muted">${blog.summary }...</span></a>
				</p>
				<span class="pull-right text-muted">
					<small>
					     <fmt:formatDate value="${blog.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/> 阅读(${blog.clickHit }) 评论(${blog.replyHit }) 
				    </small>
				</span>
				<hr class="feature-divider">
			</c:forEach>
		</div>
	</div>
	<div>
		<nav>
			<ul class="pagination pagination-sm">${pageCode }
			</ul>
		</nav>
	</div>
</div>

