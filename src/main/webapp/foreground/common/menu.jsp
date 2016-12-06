<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
				      <a class="navbar-brand" href="${pageContext.request.contextPath }/home.html"><font color="black"><strong>首页</strong></font></a>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="${pageContext.request.contextPath }/user.html"><font color="black"><strong>关于博主</strong></font></a></li>
				        <li><a href="${pageContext.request.contextPath }/download.html"><font color="black"><strong>源码下载</strong></font></a></li>
				       
				      </ul>
				      <form class="navbar-form navbar-right" role="search">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="请输入关键字搜索">
				        </div>
				        <button type="submit" class="btn btn-default">搜索</button>
				      </form>
				    </div>
				  </div>
				</nav>
 			</div>
 		</div>
