<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/content/prettify.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/content/culture.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/kindeditor-all.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/prettify.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/content/zh-CN.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/system/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/culture.js"></script>
<div id="culture-tool-bar" style="padding: 10px">
    <div class="easyui-linkbutton " id="culture-select-btn" data-options="iconCls:'icon-reload'" style="width:70px">刷新
    </div>
    <div class="easyui-linkbutton " id="culture-save-btn" data-options="iconCls:'icon-add'" style="width:70px">新增</div>
    <div class="easyui-linkbutton " id="culture-update-btn" data-options="iconCls:'icon-edit'" style="width:70px">修改</div>
    <div class="easyui-linkbutton " id="culture-delete-btn" data-options="iconCls:'icon-remove'" style="width:70px">删除
    </div>
</div>
<div id="culture_grid" style="padding: 10px"></div>

<div class="pagewrap" >
	<div class="rowz">
		<div class="label">文化名称：</div>
		<div class="contentz">
			<input type="text" class="colortitle" id="cultureName" value="">
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
		<div class="label">封面：</div>
		<div class="cover">
			<input type="file" id="cultureImage" name="cultureImage"><br>
			<img id="upload_images" src="" width="200px;" height="138px;">
		</div>
	</div>
	<div class="rowz">
		<div class="label">内容：</div>
		<div class="contentz">
			<textarea id="editor_culture" name="content" style="width:100%;height:400px;"></textarea>
			
		</div>
	</div>
	<!-- 存放图片路径 -->
	<!--<input type="hidden" value="" id="cultureImageUrl"/> -->
	<div class="rowz">
		<div class="label">&nbsp;</div>
		<div class="contentz">
			<div class="btn" id="cultureSubmit">
				提交
			</div>
		</div>
	</div>
</div>
<script>
    window.editor = KindEditor.create('#editor_culture',{
		uploadJson : '${pageContext.request.contextPath}/static/js/content/jsp/upload_json.jsp',
		fileManagerJson : '${pageContext.request.contextPath}/static/js/content/jsp/file_manager_json.jsp',
		allowFileManager : false,
		imageTabIndex : 1,
		allowUpload : true, //允许上传图片 
		resizeType : 0,
        width : '100%',
        height : '400px',
        /*afterCreate: function () {  
	        var self = this;  
	        K.ctrl(document, 13, function () {  
	            self.sync();  
	            K('form[name=example]')[0].submit();  
	        });  
	        K.ctrl(self.edit.doc, 13, function () {  
	            self.sync();  
	            K('form[name=example]')[0].submit();  
	        });  
	    },  
	    //上传文件后执行的回调函数,获取上传图片的路径  
	    afterUpload: function (url) {  
	    	$("#cultureImageUrl").val(url);  
	    },  
	    afterCreate: function () {  //要取值设置这里 这个函数就是同步KindEditor的值到textarea文本框  
	        this.sync();  
	    },  
	    afterBlur: function () {  //同时设置这里   
	        this.sync();  
	    },*/
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