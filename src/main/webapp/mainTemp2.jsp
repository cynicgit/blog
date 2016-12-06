<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>现代浏览器博物馆</title>
    <link href="${pageContext.request.contextPath }/static/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/static/css/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/staticjs/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath }/staticjs/respond.min.js"></script>
    <![endif]-->

    <style>

        body {
            padding-top: 50px;
            padding-bottom: 40px;
            color: #5a5a5a;
        }

        /* 轮播广告 */

        .carousel {
            height: 500px;
            margin-bottom: 60px;
        }

        .carousel .item {
            height: 500px;
            background-color: #000;
        }

        .carousel .item img {
            width: 100%;
        }

        .carousel-caption {
            z-index: 10;
        }

        .carousel-caption p {
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 1.8;
        }

        /* 简介 */

        .summary {
            padding-right: 15px;
            padding-left: 15px;
        }

        .summary .col-md-4 {
            margin-bottom: 20px;
/*             text-align: center; */
        }
		
		.col-md-9 a {
			text-decoration:none;
			color: #333;
		}
		.col-md-9 a:HOVER {
			color: #2a6496;
		}

        /* 特性 */

        .feature-divider {
            margin: 40px 0;
        }

        .feature {
            padding: 30px 0;
        }

        .feature-heading {
            font-size: 50px;
            color: #2a6496;
        }

        .feature-heading .text-muted {
            font-size: 28px;
        }

        /* 响应式布局 */

        @media (max-width: 768px) {

            .summary {
                padding-right: 3px;
                padding-left: 3px;
            }

            .carousel {
                height: 300px;
                margin-bottom: 30px;
            }

            .carousel .item {
                height: 300px;
            }

            .carousel img {
                min-height: 300px;
            }

            .carousel-caption p {
                font-size: 16px;
                line-height: 1.4;
            }

            .feature-heading {
                font-size: 34px;
            }

            .feature-heading .text-muted {
                font-size: 22px;
            }
        }

        @media (min-width: 992px) {
            .feature-heading {
                margin-top: 120px;
            }
        }
    </style>

</head>
  <body>
 			<jsp:include page="/foreground2/common/head.jsp"/>
 			<jsp:include page="/foreground2/common/carousel.jsp"/>
  		<div class="container summary">
  			
  			<div id="summary-container" class="raw">
  			
			  	<jsp:include page="/foreground2/blog/list.jsp"/>
			  
				<jsp:include page="/foreground2/common/right.jsp"/>				  
			   
  			</div>
		</div>
  			
  		<jsp:include page="/foreground/common/foot.jsp"/>
  		
  		
  		<script src="${pageContext.request.contextPath }/static/js/jquery-1.11.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/static/js/bootstrap.min.js"></script>
		<script>
    $(function () {
        $('#ad-carousel').carousel();
        $('#menu-nav .navbar-collapse a').click(function (e) {
            var href = $(this).attr('href');
            var tabId = $(this).attr('data-tab');
            if ('#' !== href) {
                e.preventDefault();
                $(document).scrollTop($(href).offset().top - 70);
                if (tabId) {
                    $('#feature-tab a[href=#' + tabId + ']').tab('show');
                }
            }
        });
		
		$('#jian').click(function (e){
			e.preventDefault();
			$(document).scrollTop($("#summary-container").offset().top - 70);
			//$(this).parent().siblings().attr("class", "");
			//$(this).parent().attr("class", "active");
		});
		
		$('#nav-ul li').click(function(){
			$(this).siblings().attr("class", "");
			$(this).attr("class", "active");
		});
    });
</script>
  </body>
</html>
