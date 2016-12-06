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
 		<div class="row">
 			<div class="col-md-4">
 				<img alt="cynic" src="${pageContext.request.contextPath }/static/images/logo.png">
 			</div>
  			<div class="col-md-8">
  				<iframe style="float: right;" name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=2&num=3" width="440" height="70" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
  			</div>
 		</div>
 		
 		<div class="row" style="padding-top: 10px">
 			<div class="col-md-12">
 				<nav class="navbar navbar-default" role="navigation">
				  <div class="container-fluid">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#"><font color="black"><strong>首页</strong></font></a>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="#"><font color="black"><strong>关于博主</strong></font></a></li>
				        <li><a href="#"><font color="black"><strong>源码下载</strong></font></a></li>
				       
				      </ul>
				      <form class="navbar-form navbar-right" role="search">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="请输入关键字搜素">
				        </div>
				        <button type="submit" class="btn btn-default">搜素</button>
				      </form>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
 			</div>
 		</div>
 		
 		<div class="row">
 			<div class="col-md-9">
 				<div class="data_list">
		  		
			  		<div class="datas">
			  			<ul>
			  				<li style="margin-bottom: 30px">
			  					<span class="date"><a href="${pageContext.request.contextPath}/blog/articles/52.html">2016年02月15日</a></span>
							  	<span class="title"><a href="${pageContext.request.contextPath}/blog/articles/52.html">使用CXF开发WebService客户端</a></span>
							  	<span class="summary">摘要: 前面一讲开发了webservice服务器端接口，今天的话，我们来开发webservice客户端，让大家来体验下过程；首先建一个Maven项目，项目名字，WS_Client；然后我们要用CXF给我们提供的工具wsdl2java 来根据请求的url生成客户端代码；wsdl2java工具在CXF开发包里；开发下载地...</span>
							  	<span class="img">
							  		
								  		<a href="/blog/articles/52.html"><img src="${pageContext.request.contextPath}/static/userImages/a.jpg" alt="1455539511890048174.jpg"></a>
								  		&nbsp;&nbsp;
							  		
								  		<a href="/blog/articles/52.html"><img alt="QQ鎴浘20160215203213.jpg" src="${pageContext.request.contextPath}/static/userImages/b.jpg" title="1455539700734093102.jpg" width="667" height="264" style="width: 667px; height: 264px;"></a>
								  		&nbsp;&nbsp;
							  		
								  		<a href="/blog/articles/52.html"><img alt="QQ鎴浘20160215203317.jpg" src="${pageContext.request.contextPath}/static/userImages/c.jpg" title="1455539761187019902.jpg"></a>
								  		&nbsp;&nbsp;
							  		
							  	</span>
							  	<span class="info">发表于 2016-02-15 21:06 阅读(71) 评论(5) </span>
			  					
			  				</li>
			  				 <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  				
			  				<li style="margin-bottom: 30px">
			  					<span class="date"><a href="${pageContext.request.contextPath}/blog/articles/52.html">2016年02月15日</a></span>
							  	<span class="title"><a href="${pageContext.request.contextPath}/blog/articles/52.html">使用CXF开发WebService客户端</a></span>
							  	<span class="summary">摘要: 前面一讲开发了webservice服务器端接口，今天的话，我们来开发webservice客户端，让大家来体验下过程；首先建一个Maven项目，项目名字，WS_Client；然后我们要用CXF给我们提供的工具wsdl2java 来根据请求的url生成客户端代码；wsdl2java工具在CXF开发包里；开发下载地...</span>
							  	<span class="img">
							  		
								  		<a href="/blog/articles/52.html"><img src="${pageContext.request.contextPath}/static/userImages/a.jpg" alt="1455539511890048174.jpg"></a>
								  		&nbsp;&nbsp;
							  		
								  		<a href="/blog/articles/52.html"><img alt="QQ鎴浘20160215203213.jpg" src="${pageContext.request.contextPath}/static/userImages/b.jpg" title="1455539700734093102.jpg" width="667" height="264" style="width: 667px; height: 264px;"></a>
								  		&nbsp;&nbsp;
							  		
								  		<a href="/blog/articles/52.html"><img alt="QQ鎴浘20160215203317.jpg" src="${pageContext.request.contextPath}/static/userImages/c.jpg" title="1455539761187019902.jpg"></a>
								  		&nbsp;&nbsp;
							  		
							  	</span>
							  	<span class="info">发表于 2016-02-15 21:06 阅读(71) 评论(5) </span>
			  					
			  				</li>
			  				 <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  				
			  				
			  				<li style="margin-bottom: 30px">
			  					<span class="date"><a href="${pageContext.request.contextPath}/blog/articles/52.html">2016年02月15日</a></span>
							  	<span class="title"><a href="${pageContext.request.contextPath}/blog/articles/52.html">使用CXF开发WebService客户端</a></span>
							  	<span class="summary">摘要: 前面一讲开发了webservice服务器端接口，今天的话，我们来开发webservice客户端，让大家来体验下过程；首先建一个Maven项目，项目名字，WS_Client；然后我们要用CXF给我们提供的工具wsdl2java 来根据请求的url生成客户端代码；wsdl2java工具在CXF开发包里；开发下载地...</span>
							  	<span class="img">
							  		
								  		<a href="/blog/articles/52.html"><img src="${pageContext.request.contextPath}/static/userImages/a.jpg" alt="1455539511890048174.jpg"></a>
								  		&nbsp;&nbsp;
							  		
								  		<a href="/blog/articles/52.html"><img alt="QQ鎴浘20160215203213.jpg" src="${pageContext.request.contextPath}/static/userImages/b.jpg" title="1455539700734093102.jpg" width="667" height="264" style="width: 667px; height: 264px;"></a>
								  		&nbsp;&nbsp;
							  		
								  		<a href="/blog/articles/52.html"><img alt="QQ鎴浘20160215203317.jpg" src="${pageContext.request.contextPath}/static/userImages/c.jpg" title="1455539761187019902.jpg"></a>
								  		&nbsp;&nbsp;
							  		
							  	</span>
							  	<span class="info">发表于 2016-02-15 21:06 阅读(71) 评论(5) </span>
			  					
			  				</li>
			  				 <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  				
			  			</ul>
			  		</div>
 				</div>
 			</div>
 			<div class="col-md-3">
 				<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/byType_icon.png"/>
					按日志类别
				</div>
				<div class="datas">
					<ul>
						<c:forEach items="${blogTypes}" var="blogType">
							<li><span><a href="#">${blogType.typeName}(${blogType.blogCount})</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
	  		
	  		
	  		
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/byDate_icon.png"/>
					按日志日期
				</div>
				<div class="datas">
					<ul>
						
						<c:forEach items="${blogsByDate}" var="blog">
							<li><span><a href="#" target="_blank">${blog.releaseDateStr}(${blog.blogCount})</a></span></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/link_icon.png"/>
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
	  		
	  </div>
	</div>
 			
 			</div>
 		</div>
 	</div>
  </body>
</html>
