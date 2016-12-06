<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="data_list">
	<div class="data_list_title">
		<img
			src="${pageContext.request.contextPath}/static/images/byType_icon.png" />
		按日志类别
	</div>
	<div class="datas">
		<ul>
			<c:forEach items="${blogTypes}" var="blogType">
				<li><span><a href="${pageContext.request.contextPath}/home.html?typeId=${blogType.id}">${blogType.typeName}(${blogType.blogCount})</a></span></li>
			</c:forEach>
		</ul>
	</div>
</div>



<div class="data_list">
	<div class="data_list_title">
		<img
			src="${pageContext.request.contextPath}/static/images/byDate_icon.png" />
		按日志日期
	</div>
	<div class="datas">
		<ul>

			<c:forEach items="${blogsByDate}" var="blog">
				<li><span><a href="${pageContext.request.contextPath}/home.html?releaseDateStr=${blog.releaseDateStr}" target="_blank">${blog.releaseDateStr}(${blog.blogCount})</a></span></li>
			</c:forEach>
		</ul>
	</div>
</div>

<div class="data_list">
	<div class="data_list_title">
		<img
			src="${pageContext.request.contextPath}/static/images/link_icon.png" />
		友情链接
	</div>
	<div class="datas">
		<ul>
			<c:forEach items="${linkList}" var="link">
				<li><span><a href="${link.url}" target="_blank">${link.urlName}</a></span></li>
			</c:forEach>
		</ul>
	</div>
</div>
