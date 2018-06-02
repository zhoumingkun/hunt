<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/content/prettify.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/kindeditor-all-min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/content/prettify.js"></script>
	<scrip src="${pageContext.request.contextPath}/static/js/content/lang/zh-CN.js"></scrip>
	<div id="content"></div>
<script>
	var editor = KindEditor.create('#content', {
		cssPath : '${pageContext.request.contextPath}/static/css/content/prettify.css',
		uploadJson : '/backend/editor/upload',
		fileManagerJson : '/backend/editor/fileMgr',
		allowFileManager : false,
		resizeType : 0,
		minWidth : '300px',
		width : '898px',
		height : '350px',
		items : ['source', '|', 'undo', 'redo', '|', /*'preview', 'print', 'template', 'code',*/ 'cut', 'copy', 'paste',
		         'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
		         'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
		         'superscript', 'clearhtml', /*'quickformat',*/ 'selectall', '|', 'fullscreen', '/',
		         'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
		         'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
		         /*'flash', 'media', 'insertfile',*/ 'table', 'hr', 'emoticons', 'baidumap', /*'pagebreak',*/
		         'anchor', 'link', 'unlink', /*'|', 'about'*/]
	});
	prettyPrint();
	function func_add() {
		var title = $('#content-add-title').val();
		var type = $('#content-add-type').val();
		var summary = editor.text().substring(0, 100);
		var content = editor.html();
		// 批准
		$.post('/backend/netppp/content/add', {
			title : title,
			type : type,
			summary : summary,
			content : content
		}, function(data) {
			if (data.success) {
				$('#menu-list li').removeClass('active');
        		$('#menu-list li[ur="list-audit"]').addClass('active');
				ajaxHTML('content', 'list-audit');
			} else {
				alert(data.msg);
			}
		}, 'json');
	} 
</script>