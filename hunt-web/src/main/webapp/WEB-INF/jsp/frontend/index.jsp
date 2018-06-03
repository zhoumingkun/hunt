<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>娄烦招商引资</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/index/index.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery1.7/jQuery1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/static/js/swiper/swiper-3.4.2.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/swiper/swiper-3.4.2.jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/index/index.js"></script>
</head>

<body>

	<!--头开始-->
	<%@ include file="common/head.jsp"%>
	<!--导航结束-->
	<!--第一块开始-->
	<div class="news_content">
		<div class="news">
			<div class="news_only">
				<div class="left_news">
					<div class="left_news_back">
						<img
							src="${pageContext.request.contextPath}/static/image/index/news.png"
							alt="">
					</div>
				</div>
				<div class="right_news">
					<ul class="select_button">
						<li class="active">
							<p class="oth">
								<a href="">政务法规</a>
							</p>
						</li>
						<li>
							<p class="oth">
								<a href="">区县政策</a>
							</p>
						</li>
						<li>
							<p class="oth">
								<a href="">新闻动态</a>
							</p>
						</li>
					</ul>
					<div class="swiper-container" id="news">
						<ul class="swiper-wrapper select_content ">
							<li class="swiper-slide">
								<ul>
									<%
										ResultSet rs = st.executeQuery("SELECT * FROM tbl_policy where type = 1 and state = 2 ORDER BY createTime DESC LIMIT 9");
										while (rs.next()) {
									%>
									<li><span class="cir"></span> <a href="${pageContext.request.contextPath}/frontend/policy/details?id=<%=rs.getInt("id") %>">
											<div>
												<p class="oth"><%=rs.getString("policyName")%></p>
												<span><%=rs.getDate("createTime")%></span>
											</div>
									</a></li>
									<%
										}
									%>
								</ul>
							</li>
							<li class="swiper-slide">
								<ul>
									<%
										ResultSet policy = st
												.executeQuery("SELECT * FROM tbl_policy where type = 2 and state = 2 ORDER BY createTime DESC LIMIT 9");
										while (policy.next()) {
									%>
									<li><span class="cir"></span> <a href="">
											<div>
												<p class="oth"><%=policy.getString("policyName")%></p>
												<span><%=policy.getDate("createTime")%></span>
											</div>
									</a></li>
									<%
										}
									%>
								</ul>
							</li>
							<li class="swiper-slide">
								<ul>
									<%
										ResultSet news = st.executeQuery("SELECT * FROM tbl_news where state = 2 ORDER BY createTime DESC LIMIT 9");
										while (news.next()) {
									%>
									<li><span class="cir"></span> <a href="">
											<div>
												<p class="oth"><%=news.getString("newsName")%></p>
												<span><%=news.getDate("createTime")%></span>
											</div>
									</a></li>
									<%
										}
									%>
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
						<%
							ResultSet proclamation = st.executeQuery("SELECT * FROM tbl_proclamation ORDER BY createTime DESC LIMIT 9");
							while (proclamation.next()) {
						%>
						<li><a href=""> <span>·</span>
								<p class="oth"><%=proclamation.getString("proclamationName")%></p>
						</a></li>
						<%
							}
						%>
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
					<li class="list_first"><img
						src="${pageContext.request.contextPath}/static/image/index/activity_first.png"
						alt="">
						<div class="first_content">
							<p class="oth">娄烦县召开第五届招</p>
							<div class="content_font">
								<p>常万全说，近年来，两国领导人多次会晤，就深化务</p>
								<span><a href="">[详情]</a></span>
							</div>
							<div class="content_time">
								<img
									src="${pageContext.request.contextPath}/static/image/index/time.png"
									alt=""> <span>2015-11-23</span>
							</div>
						</div></li>
					<%
						ResultSet activity = st
								.executeQuery("SELECT * FROM tbl_activity where state = 2 ORDER BY createTime DESC LIMIT 6");
						while (activity.next()) {
					%>
					<li><spam class="cir"></spam> <a href="">
							<div>
								<p class="oth"><%=activity.getString("activityName")%></p>
								<span><%=activity.getDate("createTime")%></span>
							</div>
					</a></li>
					<%
						}
					%>
					<!-- <li><spam class="cir"></spam> <a href="">
							<div>
								<p class="oth">消防支队全面开展冬春安全检查</p>
								<span>2018-07-23</span>
							</div>
					</a></li>
					<li><spam class="cir"></spam> <a href="">
							<div>
								<p class="oth">公安机关重拳打击非法开采</p>
								<span>2018-07-23</span>
							</div>
					</a></li>
					<li><spam class="cir"></spam> <a href="">
							<div>
								<p class="oth">茄子河消防大队入工地查消防</p>
								<span>2018-07-23</span>
							</div>
					</a></li>
					<li><spam class="cir"></spam> <a href="">
							<div>
								<p class="oth">交警整治违法摩托车</p>
								<span>2018-07-23</span>
							</div>
					</a></li>
					<li><spam class="cir"></spam> <a href="">
							<div>
								<p class="oth">禁毒知识宣传进校园</p>
								<span>2018-07-23</span>
							</div>
					</a></li>
					<li><spam class="cir"></spam> <a href="">
							<div>
								<p class="oth">茄子河消防大队入工地查消防</p>
								<span>2018-07-23</span>
							</div>
					</a></li> -->
				</ul>
			</div>
			<div class="project common">
				<div class="common_title">
					<h3>重点项目</h3>
				</div>
				<ul class="project_list">
					<%
						ResultSet rsr = st
								.executeQuery("SELECT * FROM tbl_project where state = 3 ORDER BY createTime DESC LIMIT 10");
						while (rsr.next()) {
					%>
					<li><span class="cir"></span> <a href="">
							<div>
								<p class="oth"><%=rsr.getString("projectName")%></p>
							</div>
					</a></li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="pass common">
				<div class="common_title">
					<h3>快速通道</h3>
					<span>Fast track</span>
				</div>
				<div class="pass_list">
					<ul class="pass_list_only">
						<li><a href=""><img
								src="${pageContext.request.contextPath}/static/image/index/fast1.png"
								alt=""></a></li>
						<li><a href=""><img
								src="${pageContext.request.contextPath}/static/image/index/fast2.png"
								alt=""></a></li>
						<li><a href="${pageContext.request.contextPath}/frontend/contactUs/contactUs"><img
								src="${pageContext.request.contextPath}/static/image/index/fast3.png"
								alt=""></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--第二块结束-->
	<!--中间图片开始-->
	<div class="center_pic">
		<div class="pic">
			<img
				src="${pageContext.request.contextPath}/static/image/index/center.png"
				alt="">
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
						<%
							ResultSet project = st
									.executeQuery("SELECT * FROM tbl_project WHERE type = 1 and state = 2  ORDER BY createTime DESC LIMIT 9");
							while (project.next()) {
						%>
						<li><span class="cir"></span> <a href="">
								<p class="oth"><%=project.getString("projectName")%></p>
						</a></li>
						<%
							}
						%>
					</ul>
				</li>
				<li>
					<div class="common_title">
						<h3>农业类项目</h3>
					</div>
					<ul class="list_only">
						<%
							ResultSet projec = st
									.executeQuery("SELECT * FROM tbl_project WHERE type = 2 and state = 2 ORDER BY createTime DESC LIMIT 9");
							while (projec.next()) {
						%>
						<li><span class="cir"></span> <a href="">
								<p class="oth"><%=projec.getString("projectName")%></p>
						</a></li>
						<%
							}
						%>
					</ul>
				</li>
				<li>
					<div class="common_title">
						<h3>商贸物流类项目</h3>
					</div>
					<ul class="list_only">
						<%
							ResultSet proje = st
									.executeQuery("SELECT * FROM tbl_project WHERE type = 3 and state = 2 ORDER BY createTime DESC LIMIT 9");
							while (proje.next()) {
						%>
						<li><span class="cir"></span> <a href="">
								<p class="oth"><%=proje.getString("projectName")%></p>
						</a></li>
						<%
							}
						%>
					</ul>
				</li>
				<li>
					<div class="common_title">
						<h3>文化旅游类项目</h3>
					</div>
					<ul class="list_only">
						<%
							ResultSet proj = st
									.executeQuery("SELECT * FROM tbl_project WHERE type = 4 and state = 2 ORDER BY createTime DESC LIMIT 9");
							while (proj.next()) {
						%>
						<li><span class="cir"></span> <a href="">
								<p class="oth"><%=proj.getString("projectName")%></p>
						</a></li>
						<%
							}
						%>
					</ul>
				</li>
				<li>
					<div class="common_title">
						<h3>金融及交通设施项目</h3>
					</div>
					<ul class="list_only">
						<%
							ResultSet pro = st
									.executeQuery("SELECT * FROM tbl_project WHERE type = 5 and state = 2 ORDER BY createTime DESC LIMIT 9");
							while (pro.next()) {
						%>
						<li><span class="cir"></span> <a href="">
								<p class="oth"><%=pro.getString("projectName")%></p>
						</a></li>
						<%
							}
						%>
					</ul>
				</li>
				<li>
					<div class="common_title">
						<h3>城市公用设施项目</h3>
					</div>
					<ul class="list_only">
						<%
							ResultSet pr = st
									.executeQuery("SELECT * FROM tbl_project WHERE type = 6 and state = 2 ORDER BY createTime DESC LIMIT 9");
							while (pr.next()) {
						%>
						<li><span class="cir"></span> <a href="">
								<p class="oth"><%=pr.getString("projectName")%></p>
						</a></li>
						<%
							}
						%>
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
				<p>
					<a href="">更多</a>
				</p>
			</div>
			<div class="swiper-container enterprise_list">
				<ul class="swiper-wrapper">
					<li class="swiper-slide">
						<ul>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise1.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise2.png"
									alt="">
									<p class="oth">山西东湖醋厂</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise3.png"
									alt="">
									<p class="oth">海信资产管理有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise4.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise5.png"
									alt="">
									<p class="oth">海信资产管理有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise6.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
						</ul>
					</li>
					<li class="swiper-slide">
						<ul>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise1.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise2.png"
									alt="">
									<p class="oth">山西东湖醋厂</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise3.png"
									alt="">
									<p class="oth">海信资产管理有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise4.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise5.png"
									alt="">
									<p class="oth">海信资产管理有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise6.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
						</ul>
					</li>
					<li class="swiper-slide">
						<ul>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise1.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise2.png"
									alt="">
									<p class="oth">山西东湖醋厂</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise3.png"
									alt="">
									<p class="oth">海信资产管理有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise4.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise5.png"
									alt="">
									<p class="oth">海信资产管理有限公司</p>
							</a></li>
							<li><a href=""> <img
									src="${pageContext.request.contextPath}/static/image/index/enterprise6.png"
									alt="">
									<p class="oth">山西硬汉网络科技有限公司</p>
							</a></li>
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
	<%@ include file="common/foot.jsp"%>
	<!--脚结束-->
	<%
		rs.close();
		conn.close();
	%>
</body>

</html>