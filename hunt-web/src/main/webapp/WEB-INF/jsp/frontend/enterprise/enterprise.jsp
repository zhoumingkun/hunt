﻿<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>娄烦招商引资-企业展示</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/enterpriseDisplay/enterpriseDisplay.css">
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
            <a href="${pageContext.request.contextPath}/frontend/enterprise/enterprise" class="current">企业展示</a>
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
                    <span>企业展示</span>
                </p>
                <ul>
                    <li class="current">
                        <a href="${pageContext.request.contextPath}/frontend/enterprise/enterprise">热门企业</a>
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
        </div>
    <!-- 左边结束 -->
    <!-- 右边开始 -->
        <div class="right">
    <!-- 右边标题开始 -->
            <p class="title">
                <span>热门企业</span>
            </p>
    <!-- 右边标题结束 -->
    <!-- 右边主体开始 -->
            <div class="main">
    <!-- 内容看着填吧 -->
                <div class="option">
                    <div class="left">
                        <p class="title">行业</p>
                        <a class="current" href="javascript:;">全部</a>                       
                    </div>
                    <div class="right">
                        <a href="javascript:;">农、林、牧、渔业</a>
                        <a href="javascript:;">采棚业</a>
                        <a href="javascript:;">制造业</a>
                        <a href="javascript:;">建筑业</a>
                        <a href="javascript:;">交通运输</a>
                        <a href="javascript:;">房地产业</a>
                        <a href="javascript:;">金融</a>
                        <a href="javascript:;">建筑</a>
                        <a href="javascript:;">教育行业</a>
                        <a href="javascript:;">卫生行业</a>
                        <a href="javascript:;">互联网行业</a>
                        <a href="javascript:;">其他行业</a>
                    </div>
                </div>
                <div class="items">
                    <ul id="contents" class="cards">
                    </ul>
                </div>
    <!-- 内容填充完毕 -->
            </div>
    <!-- 右边主体结束 -->
    <!-- 右边分页开始 -->
            <div class="pagingwrap">
                
            </div>
             <script>
             window.onload = function(){
	            $('.pagingwrap').lemonPaging({
	             'url':"${pageContext.request.contextPath}/frontend/enterprise/data?state=2&trade="+"",//ajax请求地址为空时不发送ajax
	             /* 'total':217,//总数据条数*/
	             'page_size':10,//每页数据条数
	             'pages':7,//分页可显示页码数量 
	             'pre_next':'true',//默认显示上一页下一页
	             'searchable':'false',//默认带跳转输入框
	             'successcallback':function(data,current_page){
	                 var str = '';
	                 $("#content").empty();
	                 $.each(data.rows,function(i,enterprise){
	                	 var path =  "${pageContext.request.contextPath}/frontend/enterprise/details?id="+enterprise.id;
						 str+='<li><a href="'+path+'"> <div class="img" style="background-image:url(${pageContext.request.contextPath}'+enterprise.image+');"></div><div class="content">'+
						 '<p class="title">'+enterprise.enterpriseName+'</p><p class="text">'+enterprise.enterpriseContent+'</p></div></a></li>'      
	                 })
	                $("#contents").html(str);
	             },//列表数据填充容器
	             'errorcallback':function(data,current_page){
	                 console.log(data,current_page);
	             },//列表数据填充容器
	            })
             }
            $(function(){
            	$('.option div a').on('click',function(){
            		var trade = $(this).html().trim().toString();
            		$('.pagingwrap').lemonPaging({
       	             'url':"${pageContext.request.contextPath}/frontend/enterprise/data?state=2&trade="+encodeURI(encodeURI(trade))+"",//ajax请求地址为空时不发送ajax
       	             /* 'total':217,//总数据条数*/
       	             'page_size':10,//每页数据条数
       	             'pages':7,//分页可显示页码数量 
       	             'pre_next':'true',//默认显示上一页下一页
       	             'searchable':'false',//默认带跳转输入框
       	             'successcallback':function(data,current_page){
       	                 console.log(data,current_page);
       	                 var str = '';
       	                 $("#content").empty();
       	                 $.each(data.rows,function(i,enterprise){
       	                	 var path =  "${pageContext.request.contextPath}/frontend/enterprise/details?id="+enterprise.id;
       						 str+='<li><a href="'+path+'"> <div class="img" style="background-image:url(${pageContext.request.contextPath}'+enterprise.image+');"></div><div class="content">'+
       						 '<p class="title">'+enterprise.enterpriseName+'</p><p class="text">'+enterprise.enterpriseContent+'</p></div></a></li>'      
       	                 })
       	                $("#contents").html(str);
       	             },//列表数据填充容器
       	             'errorcallback':function(data,current_page){
       	                 console.log(data,current_page);
       	             },//列表数据填充容器
       	            })
            	});
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