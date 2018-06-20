<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>娄烦招商引资-新闻动态</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery1.7/jQuery1.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/paging/paging.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/project/project.css">
    <script src="${pageContext.request.contextPath}/static/js/project/project.js"></script>
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
            <a href="${pageContext.request.contextPath}/frontend/project/project" class="current">招商项目</a>
        </p>
    </div>
    <!-- 面包屑结束 -->
    <!-- 身体容器开始 -->
    <div class="mainwrap">
        <!-- 左边开始 -->
        <div class="left">
            <!-- 左边侧导航开始 -->
            <div class="asideNav">
                <p class="title" style="background-image:url(${pageContext.request.contextPath}/static/image/all/asideNavtitle.png);">
                    <span>招商项目</span>
                </p>
                <ul>
                <c:if test="${type == 1 }">
						<li class="current"><a href="javascript:;">工业类</a></li>
						<li><a href="javascript:;">农业类</a></li>
						<li><a href="javascript:;">商贸物流类</a></li>
						<li><a href="javascript:;">文化旅游类</a></li>
						<li><a href="javascript:;">金融及交通类设施</a></li>
						<li><a href="javascript:;">城市公用设施</a></li>
				</c:if>
				<c:if test="${type == 2 }">
						<li><a href="javascript:;">工业类</a></li>
						<li class="current"><a href="javascript:;">农业类</a></li>
						<li><a href="javascript:;">商贸物流类</a></li>
						<li><a href="javascript:;">文化旅游类</a></li>
						<li><a href="javascript:;">金融及交通类设施</a></li>
						<li><a href="javascript:;">城市公用设施</a></li>
				</c:if>
				<c:if test="${type == 3 }">
						<li><a href="javascript:;">工业类</a></li>
						<li><a href="javascript:;">农业类</a></li>
						<li class="current"><a href="javascript:;">商贸物流类</a></li>
						<li><a href="javascript:;">文化旅游类</a></li>
						<li><a href="javascript:;">金融及交通类设施</a></li>
						<li><a href="javascript:;">城市公用设施</a></li>
				</c:if>
				<c:if test="${type == 4 }">
						<li><a href="javascript:;">工业类</a></li>
						<li><a href="javascript:;">农业类</a></li>
						<li><a href="javascript:;">商贸物流类</a></li>
						<li class="current"><a href="javascript:;">文化旅游类</a></li>
						<li><a href="javascript:;">金融及交通类设施</a></li>
						<li><a href="javascript:;">城市公用设施</a></li>
				</c:if>
				<c:if test="${type == 5 }">
						<li><a href="javascript:;">工业类</a></li>
						<li><a href="javascript:;">农业类</a></li>
						<li><a href="javascript:;">商贸物流类</a></li>
						<li><a href="javascript:;">文化旅游类</a></li>
						<li class="current"><a href="javascript:;">金融及交通类设施</a></li>
						<li><a href="javascript:;">城市公用设施</a></li>
				</c:if>
				<c:if test="${type == 6 }">
						<li><a href="javascript:;">工业类</a></li>
						<li><a href="javascript:;">农业类</a></li>
						<li><a href="javascript:;">商贸物流类</a></li>
						<li><a href="javascript:;">文化旅游类</a></li>
						<li><a href="javascript:;">金融及交通类设施</a></li>
						<li class="current"><a href="javascript:;">城市公用设施</a></li>
				</c:if>
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
            <p class="title active">
                <span>工业类</span>
            </p>
            <p class="title">
                <span>农业类</span>
            </p>
            <p class="title">
                <span>商贸物流类</span>
            </p>
            <p class="title">
                <span>文化旅游类</span>
            </p>
            <p class="title">
                <span>金融及交通类设施</span>
            </p>
            <p class="title">
                <span>城市公用设施</span>
            </p>
            <!-- 右边标题结束 -->
            <!-- 右边主体开始 -->
            
            <div class="main">
                <!-- 内容看着填吧 -->
                <ul id="content">
                </ul>
                <!-- 内容填充完毕 -->
            </div>
            
            <!-- 右边主体结束 -->
            <!-- 右边分页开始 -->
            <div class="pagingwrap">

            </div>
            <script>
            window.onload = function(){
	                var type = ${type };
	                var path = "${pageContext.request.contextPath}/frontend/project/data?state=1&state2=2&state3=3&type="+type;
	                $('.pagingwrap').lemonPaging({
	                    'url': path,//ajax请求地址
	                    /* 'total': 217,//总数据条数 */
	                    'page_size': 10,//每页数据条数
	                    'pages': 7,//分页可显示页码数量
	                    'pre_next': 'true',//默认显示上一页下一页
	                    'searchable': 'false',//默认带跳转输入框
	                    'successcallback': function (data, current_page) {
	                        var str ='';
	                        $.each(data.rows,function(i,project){
	                         var path = "${pageContext.request.contextPath}/frontend/project/details?id="+project.id+"&type="+project.type;
	                         str+='<li><a href="'+path+'">'+project.projectName+'</a></li>'
	                        });
	                        $("#content").html(str);
	                    },//列表数据填充容器
	                    'errorcallback': function (data, current_page) {
	                        console.log(data, current_page);
	                    },//列表数据填充容器
	                });
            	}
            $(function(){
            	var flag=true;
            	$('.asideNav ul li').on('click',function(){
            		if(!flag){
            			return
            		}
            		flag=false
            		var type = $(this).find('a').html().trim().toString();
            		console.log(type)
            		var A = null;
            		if(type == '工业类'){
            			A = 1;
            		}else if(type == '农业类'){
            			A = 2;
            		}else if(type == '商贸物流类'){
            			A = 3;
            		}else if(type == '文化旅游类'){
            			A = 4;
            		}else if(type == '金融及交通类设施'){
            			A = 5;
            		}else if(type == '城市公用设施'){
            			A = 6;
            		}
            		$('.pagingwrap').lemonPaging({
                        'url': "${pageContext.request.contextPath}/frontend/project/data?state=1&state2=2&state3=3&type="+A,//ajax请求地址
                        /* 'total': 217,//总数据条数 */
                        'page_size': 10,//每页数据条数
                        'pages': 7,//分页可显示页码数量
                        'pre_next': 'true',//默认显示上一页下一页
                        'searchable': 'false',//默认带跳转输入框
                        'successcallback': function (data, current_page) {
                            var str ='';
                            $.each(data.rows,function(i,project){
                             var path = "${pageContext.request.contextPath}/frontend/project/details?id="+project.id+"&type="+project.type;
                             str+='<li><a href="'+path+'">'+project.projectName+'</a></li>'
                            });
                            $("#content").html(str);
                            console.log(64654)
                            flag=true;
                        },//列表数据填充容器
                        'errorcallback': function (data, current_page) {
                            console.log(data, current_page);
                        },//列表数据填充容器
                    });
            		
            	});
            });
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