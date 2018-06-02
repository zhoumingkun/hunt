﻿<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>走进娄烦</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/resources/common.css">
<script
	src="${pageContext.request.contextPath}/static/js/jquery1.7/jQuery1.7.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/paging/paging.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/resources/common.js"></script>
</head>

<body>
	<!--头开始-->
	<%@ include file="../common/head.jsp"%>
	<!--导航结束-->
	<!-- 面包屑开始 -->
	<div class="breadcrumb">
		<p>
			<span class="breadcrumbIcon"
				style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon.png);"></span>
			<span>您当前所在位置:</span> <a href="../../index.html">首页</a> <span
				class="breadcrumbIcon2"
				style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon2.png);"></span>
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
				<p class="title"
					style="background-image:url(${pageContext.request.contextPath}/static/image/all/asideNavtitle.png);">
					<span>走进娄烦</span>
				</p>
				<ul>
					<li class="current"><a href="">娄烦概况</a></li>
					<li><a href="">娄烦旅游</a></li>
					<li><a href="">民俗文化</a></li>
					<li><a href="">名优特产 </a></li>
				</ul>
			</div>
			<div class="phone"
				style="background-image:url(${pageContext.request.contextPath}/static/image/all/phone.png);">
				<p>
					<span class="text">招商联系电话</span> <span class="number">0351-2509-223</span>
				</p>
			</div>
			<!-- 左边侧导航结束 -->
			<!-- 左边推荐开始 -->
			<div class="recommend">
				<p class="title"
					style="background-image:url(${pageContext.request.contextPath}/static/image/all/asideNavtitle.png);">
					<span>推荐项目</span>
				</p>
				<ul>

					<%
						ResultSet rs = st.executeQuery(
								"SELECT * FROM tbl_project where state = 2 ORDER BY createTime DESC LIMIT 6");
						while (rs.next()) {
					%>
					<li><a href=""><%=rs.getString("projectName") %></a></li>
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
			<p class="title active">
				<span>娄烦概况</span>
			</p>
			<p class="title">
				<span>娄烦旅游</span>
			</p>
			<p class="title">
				<span>民俗文化</span>
			</p>
			<p class="title">
				<span>名优特产</span>
			</p>
			<!-- 右边标题结束 -->
			<!-- 右边主体开始 -->
			<div class="main">
				<!-- 内容看着填吧 -->
				<!--娄烦概况开始-->
				<div class="survey common_content">
					<div class="survey_title">
						<div class="survey_title_img">
							<img
								src="${pageContext.request.contextPath}/static/image/resources/common2.jpg"
								alt="">
						</div>
						<p>山西省娄烦县</p>
					</div>
					<div class="survey_font">
						<p>娄烦县是山西省太原市下辖县，地理坐标为东经111°31′—112°02′，北纬37°51′—38°13′，地处太原市西北部、吕梁山腹地、汾河中上游，距省城太原97公里，东依古交，西邻方山，南毗交城，北连静乐，西北与岚县接壤，是集山区、老区、库区为一体的国家扶贫开发重点县，
							[1] 也是太原最重要的水源地和生态屏障。
							娄烦县属温带大陆性气候，总的特征是气候干旱，雨量较少，气温较低，风力较小，光照充足，湿热同季，分季节看：冬季漫长、干燥寒冷，夏季炎热、雨季集中，春季风多、升温较快，秋季短暂，天气凉爽。年平均风速2.5米/秒。日照总时数为2872.6小时。</p>
						<p>经济编辑概况 娄烦建县以后，1996年，娄烦生产总值33
							198万元，娄烦县娄烦县为1978年的17.3倍；工业总产值46
							315万元，为1978年的70.1倍；农林牧渔业总产值8033万元，为1978年的1.6倍；社会消费品零售总额6131万元，为1978年的5.4倍，扣除物价因素为1.3倍；地方财政收入1251万元，为1978年的29倍。
							2008年，娄烦县生产总值完成13亿元、同比增长7%，财政收入6.68亿元、同比增长66.3%；工业企业共投入技改和节能建设资金5.88亿元，万元工业增加值能耗同比下降7.8%。
							2012年6月，娄烦有煤矿8座，生产能力690万吨/年，有非煤矿山企业15家（含尖山铁矿），砖瓦粘土企业8家。铝钒土矿1家，设计能力10万吨；长石矿1家，设计生产能力0.5万吨；白云岩矿2家，设计生产能力14万吨；另有炼铁厂企业1家，30万立方米高炉。焦化厂3家，生产能力160万吨。
						</p>
						<p>娄烦建县以后，1996年，娄烦生产总值33 198万元，娄烦县娄烦县为1978年的17.3倍；工业总产值46
							315万元，为1978年的70.1倍；农林牧渔业总产值8033万元，为1978年的1.6倍；社会消费品零售总额6131万元，为1978年的5.4倍，扣除物价因素为1.3倍；地方财政收入1251万元，为1978年的29倍。</p>
						<p>2008年，娄烦县生产总值完成13亿元、同比增长7%，财政收入6.68亿元、同比增长66.3%；工业企业共投入技改和节能建设资金5.88亿元，万元工业增加值能耗同比下降7.8%。</p>
						<p>2012年6月，娄烦有煤矿8座，生产能力690万吨/年，有非煤矿山企业15家（含尖山铁矿），砖瓦粘土企业8家。铝钒土矿1家，设计能力10万吨；长石矿1家，设计生产能力0.5万吨；白云岩矿2家，设计生产能力14万吨；另有炼铁厂企业1家，30万立方米高炉。焦化厂3家，生产能力160万吨</p>
					</div>
				</div>
				<!--娄烦概况结束-->
				<!--娄烦旅游开始-->
				<ul class="common_content">
					<li><a href="details.html"> <img
							src="${pageContext.request.contextPath}/static/image/resources/common1.jpg"
							alt="" />
							<div class="main_font">
								<div class="main_title">
									<p>汾河水库</p>
								</div>
								<div class="main_font_content">
									<p>汾河水库位于山西省太原市西北娄烦县境内下静游村至下石家庄之间。南北长15公里，东西宽5公里，总面积32平方公里。、运城四个市及所辖18个工农业县区市调洪错峰重任</p>
								</div>
							</div>
					</a></li>
					<li><a href="details.html"> <img
							src="${pageContext.request.contextPath}/static/image/resources/common1.jpg"
							alt="" />
							<div class="main_font">
								<div class="main_title">
									<p>汾河水库</p>
								</div>
								<div class="main_font_content">
									<p>汾河水库位于山西省太原市西北娄烦县境内下静游村至下石家庄之间。南北长15公里，东西宽5公里，总面积32平方公里。、运城四个市及所辖18个工农业县区市调洪错峰重任</p>
								</div>
							</div>
					</a></li>
				</ul>
				<!--娄烦旅游结束-->
				<!--名俗文化开始-->
				<ul class="common_content">
					<li><a href="details.html"> <img
							src="${pageContext.request.contextPath}/static/image/resources/common3.jpg"
							alt="" />
							<div class="main_font">
								<div class="main_title">
									<p>做年饭</p>
								</div>
								<div class="main_font_content">
									<p>腊月二十前后，家家户户都要做年糕、摊黄儿（折饼）。腊月二十五、二十六、二十九这三天主要是生豆芽、捣钱钱（黄豆加水闷胀后捣成片片或碾碎，熬稀饭用）、炒油渣（胡麻籽或菜籽炒熟后磨成面，熬油渣饭用</p>
								</div>
							</div>
					</a></li>
					<li><a href="details.html"> <img
							src="${pageContext.request.contextPath}/static/image/resources/common3.jpg"
							alt="" />
							<div class="main_font">
								<div class="main_title">
									<p>大扫除</p>
								</div>
								<div class="main_font_content">
									<p>腊月二十四，打扫锅舍”，这一日，家家户户翻箱倒柜，扫窑掏炕，粉刷墙壁，抹洗家俱，一切破旧的东西都要清理出屋，意为弃旧。然后糊窗纸，剪窗花、贴年画、挂明镜，把室内装扮的焕然一新......</p>
								</div>
							</div>
					</a></li>
				</ul>
				<!--名俗文化开始-->
				<!--名优特产开始-->
				<ul class="common_content">
					<li><a href="details.html"> <img
							src="${pageContext.request.contextPath}/static/image/resources/common4.jpg"
							alt="" />
							<div class="main_font">
								<div class="main_title">
									<p>莜面面食</p>
								</div>
								<div class="main_font_content">
									<p>面粉洁白，含糖量少，是预防和治疗糖尿病的最佳食品。历来誉满三晋，名传皇家国府，曾为贡品之一。莜面不仅吃起来味美可口，而且含有多种营养成份，蛋白质占有很高比例，被专家鉴定为“粮中之王</p>
								</div>
							</div>
					</a></li>
					<li><a href="details.html"> <img
							src="${pageContext.request.contextPath}/static/image/resources/common4.jpg"
							alt="" />
							<div class="main_font">
								<div class="main_title">
									<p>晶乐”牌系列饮料</p>
								</div>
								<div class="main_font_content">
									<p>以娄烦无公害胡萝卜、西洋参及优质矿泉水为原料，生产“晶乐”牌胡萝卜饮料、“晶乐”牌纯净水等系列饮料。精选当地无公害胡萝卜新品种“八寸人参”，含胡萝卜汁30%，水果汁10%，分别有苹桔子等六种风............</p>
								</div>
							</div>
					</a></li>
				</ul>
				<!--名优特产结束-->
				<!-- 内容填充完毕 -->
			</div>
			<!-- 右边主体结束 -->
			<!-- 右边分页开始 -->
			<div class="pagingwrap"></div>
			<script>
				$('.pagingwrap').lemonPaging({
					'url' : "page1.php",//ajax请求地址
					'total' : 217,//总数据条数
					'page_size' : 10,//每页数据条数
					'pages' : 7,//分页可显示页码数量
					'pre_next' : 'true',//默认显示上一页下一页
					'searchable' : 'false',//默认带跳转输入框
					'successcallback' : function(data, current_page) {
						console.log(data, current_page);
					},//列表数据填充容器
					'errorcallback' : function(data, current_page) {
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
	<%@ include file="../common/foot.jsp"%>
	<!--脚结束-->

</body>

</html>