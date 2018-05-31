<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>娄烦招商引资</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery1.7/jQuery1.7.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/js/swiper/swiper-3.4.2.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/swiper/swiper-3.4.2.jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/index/index.js"></script>
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
            <li class="current">
                <a href="#"><span>网站首页</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/summarize"><span>走进娄烦</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/policy"><span>招商政策</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/project"><span>招商项目</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/activity"><span>招商活动</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/news"><span>新闻动态</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/enterprise"><span>企业展示</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/guide"><span>投资指南</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/frontend/index/contactUs"><span>联系我们</span></a>
            </li>
        </ul>

    </div>
    <!--导航结束-->
    <!--第一块开始-->
    <div class="news_content">
        <div class="news">
            <div class="news_only">
                <div class="left_news">
                    <div class="left_news_back">
                        <img src="${pageContext.request.contextPath}/static/image/index/news.png" alt="">
                    </div>
                </div>
                <div class="right_news">
                    <ul class="select_button">
                        <li class="active">
                            <p class="oth"><a href="">政务法规</a></p>
                        </li>
                        <li>
                            <p class="oth"><a href="">区县政策</a></p>
                        </li>
                        <li>
                            <p class="oth"><a href="">新闻动态</a></p>
                        </li>
                    </ul>
                    <div class="swiper-container" id="news">
                        <ul class="swiper-wrapper select_content ">
                            <li class="swiper-slide">
                                <ul>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市司法局党组书记、局长王永秋到市监狱检查指导工作</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市畜牧局开展全市基层防疫人员培训和资格考试</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">省人口计生委副主任丁福浩到我市督导人</p><span>2018-07-23</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">鹤壁市豫剧牛派艺术研究院成</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">浚县举办“泥咕咕”省级传承人带</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市畜牧局开展全市基层防疫人员培训和资格考试</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">鹤壁市律师协会圆满完成换届工作</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="swiper-slide">
                                <ul>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市司法局党组书记、局长王永秋到市监狱检查指导工作</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市畜牧局开展全市基层防疫人员培训和资格考试</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">省人口计生委副主任丁福浩到我市督导人</p><span>2018-07-23</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">鹤壁市豫剧牛派艺术研究院成</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">浚县举办“泥咕咕”省级传承人带</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市畜牧局开展全市基层防疫人员培训和资格考试</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">鹤壁市律师协会圆满完成换届工作</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="swiper-slide">
                                <ul>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市司法局党组书记、局长王永秋到市监狱检查指导工作</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市畜牧局开展全市基层防疫人员培训和资格考试</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">省人口计生委副主任丁福浩到我市督导人</p><span>2018-07-23</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">鹤壁市豫剧牛派艺术研究院成</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">浚县举办“泥咕咕”省级传承人带</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">市畜牧局开展全市基层防疫人员培训和资格考试</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                    <li><span class="cir"></span>
                                        <a href="">
                                            <div>
                                                <p class="oth">鹤壁市律师协会圆满完成换届工作</p><span>2018-07-23</span></div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="notice">
                <div class="notice_title">
                    <p class="oth">网站公告</p>
                    <span><a href=""></a></span>
                </div>
                <div class="notice_list">
                    <ul>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 粮都宾馆前，马路边的停车位，是粮</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 医院的专家如此上班</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 岳阳电业局电费收取单要让用电户明</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 关于解决就近缴纳电费问题的请求</p>
                            </a>
                        </li>
                        <li>
                            <a href=""> <span>·</span>
                                <p class="oth"> 雷锋山的电压何时可以稳定</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 为什么现在新修路段电路还要设电杆</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 粮都宾馆前，马路边的停车位，是粮</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 医院的专家如此上班 </p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span>·</span>
                                <p class="oth"> 岳阳电业局电费收取单要让用电户明</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!--第一块结束-->
    <!--第二块开始-->
    <div class="stress">
        <div class="stress_content">
            <div class="activity common">
                <div class="common_title">
                    <h3>招商活动</h3>
                    <span>Investment promotion activities</span>
                </div>
                <ul class="activity_list">
                    <li class="list_first">
                        <img src="${pageContext.request.contextPath}/static/image/index/activity_first.png" alt="">
                        <div class="first_content">
                            <p class="oth">娄烦县召开第五届招</p>
                            <div class="content_font">
                                <p>常万全说，近年来，两国领导人多次会晤，就深化务</p>
                                <span><a href="">[详情]</a></span>
                            </div>
                            <div class="content_time">
                                <img src="${pageContext.request.contextPath}/static/image/index/time.png" alt="">
                                <span>2015-11-23</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <spam class="cir"></spam>
                        <a href="">
                            <div>
                                <p class="oth">消防支队全面开展冬春安全检查</p>
                                <span>2018-07-23</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <spam class="cir"></spam>
                        <a href="">
                            <div>
                                <p class="oth">公安机关重拳打击非法开采</p>
                                <span>2018-07-23</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <spam class="cir"></spam>
                        <a href="">
                            <div>
                                <p class="oth">茄子河消防大队入工地查消防</p>
                                <span>2018-07-23</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <spam class="cir"></spam>
                        <a href="">
                            <div>
                                <p class="oth">交警整治违法摩托车</p>
                                <span>2018-07-23</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <spam class="cir"></spam>
                        <a href="">
                            <div>
                                <p class="oth">禁毒知识宣传进校园</p>
                                <span>2018-07-23</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <spam class="cir"></spam>
                        <a href="">
                            <div>
                                <p class="oth">茄子河消防大队入工地查消防</p>
                                <span>2018-07-23</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="project common">
                <div class="common_title">
                    <h3>重点项目</h3>
                </div>
                <ul class="project_list">
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">浚县举办“泥咕咕”省级传承人带</p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">鹤壁市豫剧牛派艺术研究院成 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">省人口计生委副主任丁福浩到我市督导人 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">市规划局窗口高效服务 为市通力门业有限公司 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">市畜牧局开展全市基层防疫人员培训和资格考试 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">市司法局党组书记、局长王永秋到市监狱检查指导工作 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">市司法局党组书记、局长王永秋到市监狱检查指导工作 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">市司法局党组书记、局长王永秋到市监狱检查指导工作 </p>
                            </div>
                        </a>
                    </li>
                    <li><span class="cir"></span>
                        <a href="">
                            <div>
                                <p class="oth">市司法局党组书记、局长王永秋到市监狱检查指导工作 </p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="pass common">
                <div class="common_title">
                    <h3>快速通道</h3>
                    <span>Fast track</span>
                </div>
                <div class="pass_list">
                    <ul class="pass_list_only">
                        <li>
                            <a href=""><img src="${pageContext.request.contextPath}/static/image/index/fast1.png" alt=""></a>
                        </li>
                        <li>
                            <a href=""><img src="${pageContext.request.contextPath}/static/image/index/fast2.png" alt=""></a>
                        </li>
                        <li>
                            <a href=""><img src="${pageContext.request.contextPath}/static/image/index/fast3.png" alt=""></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--第二块结束-->
    <!--中间图片开始-->
    <div class="center_pic">
        <div class="pic">
            <img src="${pageContext.request.contextPath}/static/image/index/center.png" alt="">
        </div>
    </div>
    <!--中间图片结束-->
    <!--招商项目开始-->
    <div class="investment">
        <div class="investment_only">
            <div class="investment_title">
                <p class="oth">招商项目</p>
            </div>
            <ul class="investment_list">
                <li>
                    <div class="common_title">
                        <h3>工业类项目</h3>
                    </div>
                    <ul class="list_only">
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产10万吨人造板工业面粉项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="common_title">
                        <h3>农业类项目</h3>
                    </div>
                    <ul class="list_only">
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产10万吨人造板工业面粉项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="common_title">
                        <h3>商贸物流类项目</h3>
                    </div>
                    <ul class="list_only">
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产10万吨人造板工业面粉项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="common_title">
                        <h3>文化旅游类项目</h3>
                    </div>
                    <ul class="list_only">
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产10万吨人造板工业面粉项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="common_title">
                        <h3>金融及交通设施项目</h3>
                    </div>
                    <ul class="list_only">
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产10万吨人造板工业面粉项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="common_title">
                        <h3>城市公用设施项目</h3>
                    </div>
                    <ul class="list_only">
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产10万吨人造板工业面粉项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产50吨9a羟基雄烯二酮(9a-OHAD项目</p>
                            </a>
                        </li>
                        <li><span class="cir"></span>
                            <a href="">
                                <p class="oth">年产30万吨MS木塑新材料</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--招商项目结束-->
    <!--本市名企开始-->
    <div class="enterprise">
        <div class="enterprise_content">
            <div class="enterprise_title">
                <p>本市名企</p>
            </div>
            <div class="enterprise_more">
                <p><a href="">更多</a></p>
            </div>
            <div class="swiper-container enterprise_list">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <ul>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise1.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise2.png" alt="">
                                    <p class="oth">山西东湖醋厂</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise3.png" alt="">
                                    <p class="oth">海信资产管理有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise4.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise5.png" alt="">
                                    <p class="oth">海信资产管理有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise6.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="swiper-slide">
                        <ul>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise1.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise2.png" alt="">
                                    <p class="oth">山西东湖醋厂</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise3.png" alt="">
                                    <p class="oth">海信资产管理有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise4.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise5.png" alt="">
                                    <p class="oth">海信资产管理有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise6.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="swiper-slide">
                        <ul>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise1.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise2.png" alt="">
                                    <p class="oth">山西东湖醋厂</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise3.png" alt="">
                                    <p class="oth">海信资产管理有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise4.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise5.png" alt="">
                                    <p class="oth">海信资产管理有限公司</p>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/static/image/index/enterprise6.png" alt="">
                                    <p class="oth">山西硬汉网络科技有限公司</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--本市名企结束-->
    <!--友情链接开始-->
    <div class="friendship_box">
        <div class="friendship">
            <div class="friendship_title">
                <p>友情链接</p>
            </div>
            <ul class="friendship_list">
                <li>
                    <p>
                        <a href="">清许县商务厅</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">阳曲县商务厅</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">太原海信资产有限管理公司</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="http://www.ityyedu.com">山西硬汉网络科技有限公司</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">有信实业有限公司</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">阳曲县商务厅</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">太原海信资产有限管理公司</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">清许县商务厅</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">阳曲县商务厅</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">有信实业有限公司</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="http://www.ityyedu.com">山西硬汉网络科技有限公司</a>
                    </p>
                </li>
                <li>
                    <p>
                        <a href="">阳曲县商务厅</a>
                    </p>
                </li>
            </ul>
        </div>
    </div>
    <!--友情链接结束-->
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
                            <h1><a href="">新闻动态</a></h1>
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