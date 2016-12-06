<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="data_list">	  		
	<div class="data_list_title">
	<img src="${pageContext.request.contextPath}/static/images/about_icon.png"/>
	关于博主</div>
	<div style="padding: 30px">
		${user.profile }
	</div>
</div>
