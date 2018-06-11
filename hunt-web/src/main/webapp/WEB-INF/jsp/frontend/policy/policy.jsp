﻿<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>娄烦招商引资-招商政策</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/newsInformation/newsInformation.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery1.7/jQuery1.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/paging/paging.js"></script>
    
</head>

<body>
    <!--头开始-->
    <%@ include file="../common/head.jsp" %>
    <!--导航结束-->   
    <!-- 面包屑开始 -->
    <div class="breadcrumb">
        <p>
            <span class="breadcrumbIcon" style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon.png);"></span>
            <span>您当前所在位置:</span>        
            <a href="${pageContext.request.contextPath}/frontend/index">首页</a>
            <span class="breadcrumbIcon2" style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon2.png);"></span>
            <a href="${pageContext.request.contextPath}/frontend/policy/policy" class="current">招商政策</a>
        </p>
    </div>
    <!-- 面包屑结束 -->
    <!-- 身体容器开始 -->
    <div class="mainwrap">  
    <!-- 左边开始 -->
        <div class="left">
    <!-- 左边侧导航开始 -->
            <div class="asideNav">
                <p class="title"  style="background-image:url(${pageContext.request.contextPath}/static/image/all/asideNavtitle.png);">
                    <span>招商政策</span>
                </p>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/frontend/news/news">新闻动态</a>
                    </li>
                    <li class="current">
                        <a href="${pageContext.request.contextPath}/frontend/policy/policy">招商政策</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/frontend/activity/activity">招商活动</a>
                    </li>
                     <li>
                        <a href="${pageContext.request.contextPath}/frontend/news/news?ids=4">网站公告</a>
                    </li>
                </ul>
            </div>
                <div class="phone" style="background-image:url(${pageContext.request.contextPath}/static/image/all/phone.png);">
                    <p>
                        <span class="text">招商联系电话</span>
                        <span class="number">0351-2509-223</span>
                    </p>
                </div>
    <!-- 左边侧导航结束 -->  
    <!-- 左边推荐开始 -->
            <!-- <div class="recommend">
                <p class="title" style="background-image:url(${pageContext.request.contextPath}/static/image/all/asideNavtitle.png);">
                    <span>推荐项目</span>
                </p>
                <ul>
                    <li>
                        <a href="">娄烦县开通大厦写字楼招商项目具体实施细则</a>
                    </li>
                    <li>
                        <a href="">小时贷关于近期平台系统充值</a>
                    </li>
                    <li>
                        <a href="">娄烦县开通大厦写字楼招商项目</a>
                    </li>
                    <li>
                        <a href="">娄烦县开通大厦写字楼招商项目</a>
                    </li>
                    <li>
                        <a href="">娄烦县开通大厦写字楼招商项目</a>
                    </li>
                    <li>
                        <a href="">娄烦县开通大厦写字楼招商项目</a>
                    </li>
                </ul>
            </div> -->
    <!-- 左边推荐结束 -->
        </div>
    <!-- 左边结束 -->
    <!-- 右边开始 -->
        <div class="right">
    <!-- 右边标题开始 -->
            <p class="title">
                <span>招商政策</span>
            </p>
    <!-- 右边标题结束 -->
    <!-- 右边主体开始 -->
            <div class="main">
                <ul id="content">
    <!-- 内容看着填吧 -->
                </ul>
    <!-- 内容填充完毕 -->
            </div>
    <!-- 右边主体结束 -->
    <!-- 右边分页开始 -->
            <div class="pagingwrap">
                
            </div>
            <script>
                $('.pagingwrap').lemonPaging({
                 'url':"${pageContext.request.contextPath}/frontend/policy/data?state=2",//ajax请求地址为空时不发送ajax
                 /* 'total':217,//总数据条数*/
                 'page_size':10,//每页数据条数
                 'pages':7,//分页可显示页码数量 
                 'pre_next':'true',//默认显示上一页下一页
                 'searchable':'false',//默认带跳转输入框
                 'successcallback':function(data,current_page){
                     console.log(data,current_page);
                     var str = '';
                     $("#content").empty();
                     $.each(data.rows,function(i,policy){
                    	 var path =  "${pageContext.request.contextPath}/frontend/policy/details?id="+policy.id;
                    	 str+='<li><a href="'+path+'">'+policy.policyName+'</a><span class="updatatime">'+policy.createTime+'</span></li>';
                     })
                    $("#content").html(str);
                 },//列表数据填充容器
                 'errorcallback':function(data,current_page){
                     console.log(data,current_page);
                 },//列表数据填充容器
                })
            </script>
    <!-- 右边分页结束 -->
        </div>
    <!-- 右边结束 -->
    </div>
    <!-- 身体容器结束 -->   
    <!--脚开始-->
    <%@ include file="../common/foot.jsp" %>
    <!--脚结束-->

</body>

</html>