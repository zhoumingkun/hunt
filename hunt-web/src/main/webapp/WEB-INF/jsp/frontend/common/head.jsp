<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">

<head>
 <%--    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery1.7/jQuery1.7.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/js/swiper/swiper-3.4.2.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/swiper/swiper-3.4.2.jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/index/index.js"></script>
 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.hunt.model.entity.*"%>
 </head>
<body>
<%  
 //连接MySQL数据库   
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    String url="jdbc:mysql://localhost:3306/hunt";  
    String user="root";  
    String password="root";  
    Connection conn = DriverManager.getConnection(url, user, password);  
    Statement st = conn.createStatement();  
      
 %>
 <script type="text/javascript">
	$(function() {
		// 处理导航的class="current"
		var module = $('#module-name').val();
		$('.nav li').removeClass('current');
		$('#nav-' + module).addClass('current');
		console.log(module);
	});
</script>
<!-- 使用隐藏的input，存储模块名，以使导航的class="current"正确显示 -->
<input type="hidden" id="module-name" value="${module}" />
<!--头开始-->
    <div class="hearder_box">
        <div class="hearder">
            <div class="hearder_img">
                <a href="index.html"><img src="${pageContext.request.contextPath}/static/image/all/logo.png" alt="" /></a>
            </div>
            <div class="hearder_input">
                <div class="hearder_input_font">
                    <p class="oth">
                        <a href="">招商项目</a>
                    </p>
                    <p class="oth">
                        <a href="">招商政策</a>
                    </p>
                    <p class="oth">
                        <a href="">招商活动</a>
                    </p>
                </div>
                <div class="hearder_input_box">
                    <input type="text" placeholder="请输入项目名称" />
                    <p class="oth">
                        <a href="">搜索</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!--头结束-->
    <!--导航开始-->
    <div class="nav_box">
        <div class="nev_back"> </div>
        <ul class="nav">
            <li id="nav-index">
                <a href="${pageContext.request.contextPath}/frontend/index"><span>网站首页</span></a>
            </li>
            <li id="nav-summarize">
                <a href="${pageContext.request.contextPath}/frontend/summarize/common"><span>走进娄烦</span></a>
            </li>
            <li id="nav-policy">
                <a href="${pageContext.request.contextPath}/frontend/policy/policy"><span>招商政策</span></a>
            </li>
            <li id="nav-project">
                <a href="${pageContext.request.contextPath}/frontend/project/project"><span>招商项目</span></a>
            </li>
            <li id="nav-activity">
                <a href="${pageContext.request.contextPath}/frontend/activity/activity"><span>招商活动</span></a>
            </li>
            <li id="nav-news">
                <a href="${pageContext.request.contextPath}/frontend/news/news"><span>新闻动态</span></a>
            </li>
            <li id="nav-enterprise">
                <a href="${pageContext.request.contextPath}/frontend/enterprise/enterprise"><span>企业展示</span></a>
            </li>
            <li id="nav-guide">
                <a href="${pageContext.request.contextPath}/frontend/guide/guide"><span>投资指南</span></a>
            </li>
            <li id="nav-contactUs">
                <a href="${pageContext.request.contextPath}/frontend/contactUs/contactUs"><span>联系我们</span></a>
            </li>
        </ul>

    </div>
    <!--导航结束-->
</body>
</html>