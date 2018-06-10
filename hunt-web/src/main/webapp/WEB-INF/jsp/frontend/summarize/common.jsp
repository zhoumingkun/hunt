﻿﻿﻿<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
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
			<span>您当前所在位置:</span> <a href="${pageContext.request.contextPath}/frontend/index">首页</a> <span
				class="breadcrumbIcon2"
				style="background-image:url(${pageContext.request.contextPath}/static/image/all/breadicon2.png);"></span>
			<a href="${pageContext.request.contextPath}/frontend/summarize/common" class="current">走进娄烦</a>
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
				<c:if test="${ids  == 0}">
					<li class="current"><a href="">娄烦概况</a></li>
					<li><a href="">娄烦旅游</a></li>
					<li><a href="">民俗文化</a></li>
					<li><a href="">名优特产 </a></li>
				</c:if>
				<c:if test="${ids  == 1}">
					<li><a href="">娄烦概况</a></li>
					<li class="current"><a href="">娄烦旅游</a></li>
					<li><a href="">民俗文化</a></li>
					<li><a href="">名优特产 </a></li>
				</c:if>
				<c:if test="${ids  == 2}">
					<li><a href="">娄烦概况</a></li>
					<li><a href="">娄烦旅游</a></li>
					<li  class="current"><a href="">民俗文化</a></li>
					<li><a href="">名优特产 </a></li>
				</c:if>
				<c:if test="${ids  == 3}">
					<li><a href="">娄烦概况</a></li>
					<li><a href="">娄烦旅游</a></li>
					<li><a href="">民俗文化</a></li>
					<li  class="current"><a href="">名优特产 </a></li>
				</c:if>
				</ul>
			</div>
			<div class="phone"
				style="background-image:url(${pageContext.request.contextPath}/static/image/all/phone.png);">
				<p>
					<span class="text">招商联系电话</span> <span class="number">0351-2509-223</span>
				</p>
			</div>
		</div>
		<!-- 左边结束 -->
		<!-- 右边开始 -->
		 <div class="right">
            <!-- 右边标题开始 -->
            <c:if test="${ids == 0 }">
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
            </c:if>
            <c:if test="${ids == 1 }">
	            <p class="title">
	                <span>娄烦概况</span>
	            </p>
	            <p class="title active">
	                <span>娄烦旅游</span>
	            </p>
	            <p class="title">
	                <span>民俗文化</span>
	            </p>
	            <p class="title">
	                <span>名优特产</span>
	            </p>
            </c:if>
             <c:if test="${ids == 2 }">
	            <p class="title">
	                <span>娄烦概况</span>
	            </p>
	            <p class="title">
	                <span>娄烦旅游</span>
	            </p>
	            <p class="title active">
	                <span>民俗文化</span>
	            </p>
	            <p class="title">
	                <span>名优特产</span>
	            </p>
            </c:if>
             <c:if test="${ids == 3 }">
	            <p class="title">
	                <span>娄烦概况</span>
	            </p>
	            <p class="title">
	                <span>娄烦旅游</span>
	            </p>
	            <p class="title">
	                <span>民俗文化</span>
	            </p>
	            <p class="title active">
	                <span>名优特产</span>
	            </p>
            </c:if>
            <!-- 右边标题结束 -->
            <!-- 右边主体开始 -->
            <div id="content" class="main">
                <!-- 内容看着填吧 -->
                
                <!-- 内容填充完毕 -->
            </div>
            <!-- 右边主体结束 -->
            <!-- 右边分页开始 -->
            <div class="pagingwrap">

            </div>
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

<script>
window.onload = function(){
	var ids = ${ids};
	if(ids == 0){
		console.log(ids);
		$.ajax({
		    type:"GET",
		    url:'${pageContext.request.contextPath}/frontend/summarize/findAll',//请求地址
		    dataType:'json',//省去了字符串转化json
		    success:function(data){
		       /*  fillloufangaikuang(data[0].louFanContent) */
		        $("#content").html(data[0].louFanContent)
		        /* mainwrap.html(data[0].louFanContent) */
		    },
		    error:function(data){
		        if(data.status==404){
		        
		        }
		    }
		});
	}else
	if(ids == 1){
		console.log(ids);
		$.ajax({
            type:"GET",
            url:"${pageContext.request.contextPath}/frontend/travel/data",//请求地址
            dataType:'json',//省去了字符串转化json
            data:{current_page:1},
            success:function(data){
                if($('.asideNav ul li.current a').html().trim()!=='娄烦旅游'){
                    return
                }
               /*  fillcard(data.rows,'travel') */
               console.log(data.total);
                 setpaging("${pageContext.request.contextPath}/frontend/travel/data",data.total,'travel') 
            },
            error:function(data){
                if(data.status==404){

                }
            }
        })
	}else if(ids = 2){
		console.log(ids);
		 $.ajax({
             type:"GET",
             url:"${pageContext.request.contextPath}/frontend/culture/data",//请求地址
             dataType:'json',//省去了字符串转化json
             data:{current_page:1},
             success:function(data){
                 if($('.asideNav ul li.current a').html().trim()!=='民俗文化'){
                     return
                 }
                 /* fillcard(data.rows,'culture') */
                 console.log(data.total);
                 setpaging("${pageContext.request.contextPath}/frontend/culture/data",data.total,'culture')
             },
             error:function(data){
                 if(data.status==404){
                    
                 }
             }
         })
	}else{
		console.log(ids);
		$.ajax({
            type:"GET",
            url:"${pageContext.request.contextPath}/frontend/specialty/data",//请求地址
            dataType:'json',//省去了字符串转化json
            data:{current_page:1},
            success:function(data){
                if($('.asideNav ul li.current a').html().trim()!=='名优特产'){
                    return
                }
               /*  fillcard(data.rows,'specialty') */
               console.log(data.total);
                setpaging("${pageContext.request.contextPath}/frontend/specialty/data",data.total,'specialty')
            },
            error:function(data){
                if(data.status==404){
                    
                }
            }
        })
	}
    var mainwrap=$('.mainwrap >.right >.main');
    var urls=['${pageContext.request.contextPath}/frontend/summarize/findAll','${pageContext.request.contextPath}/frontend/travel/data','${pageContext.request.contextPath}/frontend/culture/data','${pageContext.request.contextPath}/frontend/specialty/data'];
    $('.asideNav ul li').on('click',function(){
    var currect=$('.asideNav ul li.current a').html().trim()
        currect=$(this).find('a').html().trim()
        if(currect=="娄烦概况"){
        	$('.pagingwrap').empty();
            url=urls[0];
            $.ajax({
                type:"GET",
                url:url,//请求地址
                dataType:'json',//省去了字符串转化json
                success:function(data){
                    if($('.asideNav ul li.current a').html().trim()!=='娄烦概况'){
                        return
                    }
                    fillloufangaikuang(data[0].louFanContent)
                },
                error:function(data){
                    if(data.status==404){
                    
                    }
                }
            })
        }else if(currect=="娄烦旅游"){
            url=urls[1];
            $.ajax({
                type:"GET",
                url:url,//请求地址
                dataType:'json',//省去了字符串转化json
                data:{current_page:1},
                success:function(data){
                    if($('.asideNav ul li.current a').html().trim()!=='娄烦旅游'){
                        return
                    }
                   /*  fillcard(data.rows,'travel') */
                     setpaging(url,data.total,'travel') 
                },
                error:function(data){
                    if(data.status==404){

                    }
                }
            })
        }else if(currect=="民俗文化"){
            url=urls[2];
            $.ajax({
                type:"GET",
                url:url,//请求地址
                dataType:'json',//省去了字符串转化json
                data:{current_page:1},
                success:function(data){
                    if($('.asideNav ul li.current a').html().trim()!=='民俗文化'){
                        return
                    }
                    /* fillcard(data.rows,'culture') */
                    setpaging(url,data.total,'culture')
                },
                error:function(data){
                    if(data.status==404){
                       
                    }
                }
            })
            
        }else if(currect=="名优特产"){
            url=urls[3];
            $.ajax({
                type:"GET",
                url:url,//请求地址
                dataType:'json',//省去了字符串转化json
                data:{current_page:1},
                success:function(data){
                    if($('.asideNav ul li.current a').html().trim()!=='名优特产'){
                        return
                    }
                   /*  fillcard(data.rows,'specialty') */
                    setpaging(url,data.total,'specialty')
                },
                error:function(data){
                    if(data.status==404){
                        
                    }
                }
            })
            
        }
    })

    // 填充内容对应方法
    function fillloufangaikuang(content){
        mainwrap.html(content)
    }
    function fillcard(array,titel){
        var str='<ul class="common_content">';
        if(titel == 'travel'){
	        $.each(array,function(i,n){
	            str+='<li><a href="'+'hfgkjh'+'"><img src="'+n.image+'" alt="" /><div class="main_font"><div class="main_title"><p>'+n.travelName+'</p></div><div class="main_font_content"><p>'+n.travelContent+'</p></div></div></a></li>'
	        })
        }else if(titel == 'culture'){
        	 $.each(array,function(i,n){
 	            str+='<li><a href="'+n.link+'"><img src="'+n.image+'" alt="" /><div class="main_font"><div class="main_title"><p>'+n.cultureName+'</p></div><div class="main_font_content"><p>'+n.cultureName+'</p></div></div></a></li>'
 	        })
        }else{
        	 $.each(array,function(i,n){
  	            str+='<li><a href="'+n.link+'"><img src="'+n.image+'" alt="" /><div class="main_font"><div class="main_title"><p>'+n.specialtyName+'</p></div><div class="main_font_content"><p>'+n.specialtyContent+'</p></div></div></a></li>'
  	        })
        }
        str+='</ul>'	
        mainwrap.html(str)                                     
    }
    function setpaging(url,total,titel){
        $('.pagingwrap').empty().lemonPaging({
            'url': url,//ajax请求地址
            'total': total,//总数据条数
            'page_size': 10,//每页数据条数
            'pages': 7,//分页可显示页码数量
            'pre_next': 'true',//默认显示上一页下一页
            'searchable': 'false',//默认带跳转输入框
            'successcallback':function(data, current_page){
                var str='<ul class="common_content">';
                if(titel == 'travel'){
        	        $.each(data.rows,function(i,n){
        	            str+='<li><a href="'+'${pageContext.request.contextPath}/frontend/travel/details?id='+n.id+'"><img src="'+n.image+'" alt="" /><div class="main_font"><div class="main_title"><p>'+n.travelName+'</p></div><div class="main_font_content"><p>'+n.travelContent+'</p></div></div></a></li>'
        	        })
                }else if(titel == 'culture'){
                	 $.each(data.rows,function(i,n){
         	            str+='<li><a href="'+'${pageContext.request.contextPath}/frontend/culture/details?id='+n.id+'"><img src="'+n.image+'" alt="" /><div class="main_font"><div class="main_title"><p>'+n.cultureName+'</p></div><div class="main_font_content"><p>'+n.cultureContent+'</p></div></div></a></li>'
         	        })
                }else{
                	 $.each(data.rows,function(i,n){
          	            str+='<li><a href="'+'${pageContext.request.contextPath}/frontend/specialty/details?id='+n.id+'"><img src="'+n.image+'" alt="" /><div class="main_font"><div class="main_title"><p>'+n.specialtyName+'</p></div><div class="main_font_content"><p>'+n.specialtyContent+'</p></div></div></a></li>'
          	        })
                }
                str+='</ul>'	
                mainwrap.html(str)               
            },//列表数据填充容器
            'errorcallback': function (data, current_page) {
                console.log(data, current_page);
            },//列表数据填充容器
        });
    }
}
</script>