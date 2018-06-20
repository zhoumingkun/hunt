<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>娄烦招商引资-搜索结果</title>
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
            <a href="${pageContext.request.contextPath}/frontend/search/search" class="current">搜索结果</a>
        </p>
    </div>
    <!-- 面包屑结束 -->
    <!-- 身体容器开始 -->
    <div class="mainwrap">  
    <!-- 左边开始 -->
        <div class="left">
    <!-- 左边侧导航开始 -->
           <!--  <div class="asideNav">
                <p class="title"  style="background-image:url(../../image/all/asideNavtitle.png);">
                    <span>招商政策</span>
                </p>
            </div> -->
                <div class="phone" style="background-image:url(${pageContext.request.contextPath}/static/image/all/phone.png);">
                    <p>
                        <span class="text">招商联系电话</span>
                        <span class="number">0351-2509-223</span>
                    </p>
                </div>
    <!-- 左边侧导航结束 -->  
    <!-- 左边推荐开始 -->
            <div class="recommend">
                <p class="title" style="background-image:url(${pageContext.request.contextPath}/static/image/all/asideNavtitle.png);">
                    <span>推荐项目</span>
                </p>
                <ul >
    				<%
 						ResultSet rs = st
 								.executeQuery("SELECT * FROM tbl_project where state = 2 ORDER BY createTime DESC LIMIT 10");
  						while (rs.next()) {
  					%>
						<li>
						<a href="${pageContext.request.contextPath}/frontend/project/details?id=<%=rs.getInt("id") %>&type=<%=rs.getInt("type") %>""><%=rs.getString("projectName")%></a>
						</li>
  					<%
  						}
  					%>
				</ul>
            </div>
    <!-- 左边推荐结束 -->
        </div>
     <!-- 左边结束 -->
    <!-- 右边开始 -->
        <div class="right">
      <!-- 右边标题开始 -->
            <p class="title">
                <span>搜索结果</span>
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
           /*  console.log(${projectName}); */
            var projectName ="${projectName}";
            $('.pagingwrap').lemonPaging({
                'url':"${pageContext.request.contextPath}/frontend/project/findByName?state=1&state2=2&state3=3&projectName="+encodeURI(encodeURI(projectName)),//ajax请求地址为空时不发送ajax
                /* 'total':217,//总数据条数*/
                'page_size':10,//每页数据条数
                'pages':7,//分页可显示页码数量 
                'pre_next':'true',//默认显示上一页下一页
                'searchable':'false',//默认带跳转输入框
                'successcallback':function(data,current_page){
                    console.log(data,current_page);
                    var str = '';
                    $("#content").empty();
                    $.each(data.rows,function(i,project){
                    	 console.log(data.rows);
                   	 var path =  "${pageContext.request.contextPath}/frontend/project/details?id="+project.id+"&type="+project.type;
                   	 str+='<li><a href="'+path+'">'+project.projectName+'</a><span class="updatatime">'+project.createTime+'</span></li>';
                    })
                    console.log(str);
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