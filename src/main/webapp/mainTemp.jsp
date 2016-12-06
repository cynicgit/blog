<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap3/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/blog.css">
	<script src="${pageContext.request.contextPath }/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
	<script src="${pageContext.request.contextPath }/static/bootstrap3/js/bootstrap.min.js"></script>
	<title>cynic</title>
	
	<style type="text/css">
		body {
			padding-top: 10px;
			padding-bottom: 40px;
		}
	
	</style>
	
  </head>
  <body>
  		<div class="container">
  			<jsp:include page="/foreground/common/head.jsp"/>
  			<jsp:include page="/foreground/common/menu.jsp"/>
  			
  			<div class="row">
			  <div class="col-md-9">
			  	<jsp:include page="${mainPage }"/>
			  </div>
			  <div class="col-md-3">
				<jsp:include page="/foreground/common/right.jsp"/>				  
			  </div>  
			</div>
  			
  			
  		</div>
  		<jsp:include page="/foreground/common/foot.jsp"/>
  </body>
</html>
