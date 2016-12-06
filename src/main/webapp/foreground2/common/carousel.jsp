<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 广告轮播 -->
<div id="ad-carousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#ad-carousel" data-slide-to="1"></li>
        <li data-target="#ad-carousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="${pageContext.request.contextPath }/static/images/1.jpg" alt="1 slide">

<!--            描述 <div class="container">
                <div class="carousel-caption">
                    <h1>Chrome</h1>

                    <p>Google Chrome，又称Google浏览器，是一个由Google（谷歌）公司开发的网页浏览器。</p>

                    <p><a class="btn btn-lg btn-primary" href="http://www.google.cn/intl/zh-CN/chrome/browser/"
                          role="button" target="_blank">点我下载</a></p>
                </div>
            </div> -->
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath }/static/images/2.jpg" alt="2 slide">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath }/static/images/3.jpg" alt="3 slide">
        </div>
    
        
    </div>
    <a class="left carousel-control" href="#ad-carousel" data-slide="prev"><span
            class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#ad-carousel" data-slide="next"><span
            class="glyphicon glyphicon-chevron-right"></span></a>
</div>
