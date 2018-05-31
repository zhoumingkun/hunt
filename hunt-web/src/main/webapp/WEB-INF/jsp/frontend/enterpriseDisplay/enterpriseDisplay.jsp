<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
            <a href="../../index.html">首页</a>
            <span class="breadcrumbIcon2" style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon2.png);"></span>
            <a href="javascript:;" class="current">企业展示</a>
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
                        <a href="javascript:;">热门企业</a>
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
            <div class="recommend">
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
            </div>
    <!-- 左边推荐结束 -->
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
                        <a class="current" href="">全部</a>                       
                    </div>
                    <div class="right">
                        <a href="">农、林、牧、渔业</a>
                        <a href="">采棚业</a>
                        <a href="">制造业</a>
                        <a href="">建筑业</a>
                        <a href="">交通运输</a>
                        <a href="">房地产业</a>
                        <a href="">金融</a>
                        <a href="">建筑</a>
                        <a href="">教育行业</a>
                        <a href="">卫生行业</a>
                        <a href="">互联网行业</a>
                        <a href="">其他行业</a>
                    </div>
                </div>
                <div class="items">
                    <ul class="cards">
                        <li>
                            <a href="">
                                <div class="img" style="background-image:url(${pageContext.request.contextPath}/static/image/mock/card1.png);"></div>
                                <div class="content">
                                    <p class="title">娄烦县煤炭运销公司</p>
                                    <p class="text">汾河水库位于山西省太原市西北娄烦县境内下静游村至下石家庄之间。南北长15公里，东西宽5公里，总面积32平方公里。、运城四个市及所辖18个工农业县区市调洪错峰重任</p>
                                </div>
                            </a>
                        </li>    
                        <li>
                            <a href="">
                                <div class="img" style="background-image:url(${pageContext.request.contextPath}/static/image/mock/card2.png);"></div>
                                <div class="content">
                                    <p class="title">娄烦新开元矿业有限公司</p>
                                    <p class="text">汾河水库位于山西省太原市西北娄烦县境内下静游村至下石家庄之间。南北长15公里，东西宽5公里，总面积32平方公里。、运城四个市及所辖18个工农业县区市调洪错峰重任</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img" style="background-image:url(${pageContext.request.contextPath}/static/image/mock/card3.png);"></div>
                                <div class="content">
                                    <p class="title">娄烦鸿业热力有限公司</p>
                                    <p class="text">鸿业热力公司是一个民营企业，隶属于鸿业房地产开发有限公司。根据县委、县政府建成“生态环保县”的总体要求。总经理秦存明自愿筹集资金，彻底解决县城集中供热问题。创造一个碧水蓝天，优美和谐的环境。 </p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img" style="background-image:url(${pageContext.request.contextPath}/static/image/mock/card1.png);"></div>
                                <div class="content">
                                    <p class="title">娄烦县煤炭运销公司</p>
                                    <p class="text">汾河水库位于山西省太原市西北娄烦县境内下静游村至下石家庄之间。南北长15公里，东西宽5公里，总面积32平方公里。、运城四个市及所辖18个工农业县区市调洪错峰重任</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="img" style="background-image:url(${pageContext.request.contextPath}/static/image/mock/card2.png);"></div>
                                <div class="content">
                                    <p class="title">娄烦新开元矿业有限公司</p>
                                    <p class="text">汾河水库位于山西省太原市西北娄烦县境内下静游村至下石家庄之间。南北长15公里，东西宽5公里，总面积32平方公里。、运城四个市及所辖18个工农业县区市调洪错峰重任</p>
                                </div> 
                            </a>
                        </li>
                    </ul>
                </div>
    <!-- 内容填充完毕 -->
            </div>
    <!-- 右边主体结束 -->
    <!-- 右边分页开始 -->
            <div class="pagingwrap">
                
            </div>
            <script>
                $('.pagingwrap').lemonPaging({
                 'url':"",//ajax请求地址为空时不发送ajax
                 'total':217,//总数据条数
                 'page_size':10,//每页数据条数
                 'pages':7,//分页可显示页码数量
                 'pre_next':'true',//默认显示上一页下一页
                 'searchable':'false',//默认带跳转输入框
                 'successcallback':function(data,current_page){
                     console.log(data,current_page);
                 },//列表数据填充容器
                 'errorcallback':function(data,current_page){
                     console.log(data,current_page);
                 },//列表数据填充容器
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