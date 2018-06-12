<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/content/prettify.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/content/project.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/kindeditor-all.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/prettify.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/content/zh-CN.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/system/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/project.js"></script>
<div id="project-tool-bar" style="padding: 10px">
    <div class="easyui-linkbutton " id="project-select-btn" data-options="iconCls:'icon-reload'" style="width:70px">刷新
    </div>
    <div class="easyui-linkbutton " id="project-save-btn" data-options="iconCls:'icon-add'" style="width:70px">新增</div>
    <div class="easyui-linkbutton " id="project-update-btn" data-options="iconCls:'icon-edit'" style="width:70px">修改</div>
    <div class="easyui-linkbutton " id="project-delete-btn" data-options="iconCls:'icon-remove'" style="width:70px">删除
    </div>
</div>
<div id="project_grid" style="padding: 10px"></div>

<div class="pagewrap" >
	<div class="rowz">
		<div class="label">项目名称：</div>
		<div class="contentz">
			<input type="text" class="colortitle" id="projectName" value="">
			<div class="colorbtn">
				<input type="color" onchange="setColor(this.value)">
			</div>
			<div class="weightbtn" onclick="setWeight()">
			</div>
		</div>
	</div>
	<div class="rowz">
		<div class="label">作者：</div>
		<div class="contentz">
			<input type="text" id="author" value="">
			<span>多关键词之间用空格或","隔开</span>
		</div>
	</div>
	<div class="rowz">
		<div class="label">状态：</div>
		<div class="contentz">
			<select id="state" style="height:24px;margin:6px 0;">
				<option value="-1">未发布</option>
				<option value="1">已发布</option>
				<option value="2">推广</option>
				<option value="3">重点项目</option>
			</select>
		</div>
	</div>
	<div class="rowz">
		<div class="label">项目类型：</div>
		<div class="contentz">
			<select id="type" style="height:24px;margin:6px 0;">
				<option value="1">工业类</option>
				<option value="2">农业类</option>
				<option value="3">商贸物流类</option>
				<option value="4">文化旅游类</option>
				<option value="5">金融及交通类设施</option>
				<option value="6">城市公用设施</option>
			</select>
		</div>
	</div>
	<div class="rowz">
		<div class="label">内容：</div>
		<div class="contentz">
			<textarea id="editor_project" name="content" style="width:100%;height:400px;"></textarea>
			
		</div>
	</div>
	<div class="rowz">
		<div class="label">&nbsp;</div>
		<div class="contentz">
			<div class="btn" id="projectSubmit">
				提交
			</div>
		</div>
	</div>
</div>
<script>
    window.editor = KindEditor.create('#editor_project',{
        width : '100%',
        height : '400px'
	});
    function setColor(color){
		document.getElementsByClassName('colortitle')[0].style.color=color
	}
	var fontWeight=false;
	function setWeight(){
		if(!fontWeight){
			document.getElementsByClassName('colortitle')[0].style.fontWeight='bold'
		}else{
			document.getElementsByClassName('colortitle')[0].style.fontWeight='normal'			
		}
		fontWeight=!fontWeight
	}
</script>