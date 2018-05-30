<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>走进娄烦</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/resources/details.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery1.7/jQuery1.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/paging/paging.js"></script>
</head>

<body>
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
            <li>
                <a href="../../index.html"><span>网站首页</span></a>
            </li>
            <li class="current">
                <a href="../pages/resources/common.html"><span>走进娄烦</span></a>
            </li>
            <li>
                <a href="../pages/policy/policy.html"><span>招商政策</span></a>
            </li>
            <li>
                <a href="../pages/investment/show.html"><span>招商项目</span></a>
            </li>
            <li>
                <a href="../pages/investmentActivities/investmentActivities.html"><span>招商活动</span></a>
            </li>
            <li>
                <a href="../pages/newsInformation/newsInformation.html"><span>走进娄烦</span></a>
            </li>
            <li>
                <a href="../pages/enterpriseDisplay/enterpriseDisplay.html"><span>企业展示</span></a>
            </li>
            <li>
                <a href="../pages/investmentGuide/investmentGuide.html"><span>投资指南</span></a>
            </li>
            <li>
                <a href="../pages/contactUs/contactUs.html"><span>联系我们</span></a>
            </li>
        </ul>

    </div>
    <!--导航结束-->
    <!-- 面包屑开始 -->
    <div class="breadcrumb">
        <p>
            <span class="breadcrumbIcon" style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon.png);"></span>
            <span>您当前所在位置:</span>
            <a href="../../index.html">首页</a>
            <span class="breadcrumbIcon2" style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon2.png);"></span>
            <a href="javascript:;" class="current">走进娄烦</a>
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
                    <span>走进娄烦</span>
                </p>
                <ul>
                    <li >
                        <a href="common.html">娄烦概况</a>
                    </li>
                    <li class="current">
                        <a href="common.html">娄烦旅游</a>
                    </li>
                    <li>
                        <a href="common.html">民俗文化</a>
                    </li>
                    <li>
                        <a href="common.html">名优特产 </a>
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
                <span>娄烦旅游</span>
            </p>
            <!-- 右边标题结束 -->
            <!-- 右边主体开始 -->
            <div class="main">
                <!-- 内容看着填吧 -->
                <!-- 内容填充完毕 -->
            </div>
            <!-- 右边主体结束 -->
            <script>
                $('.pagingwrap').lemonPaging({
                    'url': "page1.php",//ajax请求地址
                    'total': 217,//总数据条数
                    'page_size': 10,//每页数据条数
                    'pages': 7,//分页可显示页码数量
                    'pre_next': 'true',//默认显示上一页下一页
                    'searchable': 'false',//默认带跳转输入框
                    'successcallback': function (data, current_page) {
                        console.log(data, current_page);
                    },//列表数据填充容器
                    'errorcallback': function (data, current_page) {
                        console.log(data, current_page);
                    },//列表数据填充容器
                });
            </script>
            <!-- 右边分页结束 -->
        </div>
        <!-- 右边结束 -->
    </div>
    <!-- 身体容器结束 -->
    <!--脚开始-->
    <div class="foot">
        <div class="foot1">
            <div class="foot_up">
                <ul class="foot_content">
                    <li class="about">
                        <p class="oth">CONTACT US</p>
                        <p class="call"><span>联系</span>我们</p>
                        <p class="youxiang phone">客服邮箱：tyshaixin@163.com</p>
                        <p class="phone">客服电话：0351-3530677</p>
                    </li>
                    <li class="about_font">
                        <div class="about_font_list">
                            <h1><a href="">网站首页</a></h1>
                            <p class="oth">
                                <a href="http://www.tyshaixinzichan.com/html/list-11-1.html">走进娄烦</a>
                            </p>
                            <p class="oth">
                                <a href="http://www.tyshaixinzichan.com/html/list-12-1.html">招商项目</a>
                            </p>
                        </div>
                        <div class="about_font_list">
                            <h1><a href="">走进娄烦</a></h1>
                            <p class="oth">
                                <a href="http://www.tyshaixinzichan.com/html/list-16-1.html">招商政策</a>
                            </p>
                            <p class="oth">
                                <a href="http://www.tyshaixinzichan.com/html/list-17-1.html">招商活动</a>
                            </p>
                        </div>
                        <div class="about_font_list">
                            <h1><a href="">企业展示</a></h1>
                            <p class="oth">
                                <a href="http://www.tyshaixinzichan.com/html/list-23-1.html">投资指南</a>
                            </p>
                            <p class="oth">
                                <a href="http://www.tyshaixinzichan.com/html/list-24-1.html">联系我们</a>
                            </p>
                        </div>
                    </li>
                    <li class="about_re">
                        <div class="about_re_top">
                            <img src="http://www.tyshaixinzichan.com/statics/images/my/reweima.png" alt="">
                            <img src="http://www.tyshaixinzichan.com/statics/images/my/reweima.png" alt="">
                        </div>

                        <div class="about_re_bottom">
                            <span>服务电话 : 400-088-8888</span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="footer_font">
                <p class="oth">晋ICP备12009102号 技术支持:山西硬汉网络科技有限公司 copyright(c)2006-2017 www.sxyczs.gov.cn 版权所有 娄烦县招商引资办</p>
            </div>
        </div>
    </div>
    <!--脚结束-->

</body>

</html>