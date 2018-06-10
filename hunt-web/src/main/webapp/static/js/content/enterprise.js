enterprise_tool = {
    form_clear: function () {
        $("#enterprise_edit_form").form("clear");
        $("#enterprise_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#enterprise_grid").datagrid({
            url: getRootPath() + "/frontend/enterprise/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#enterprise-tool-bar',
            rownumbers: true,
            animate: true,
            singleSelect: true,
            fit: true,
            border: false,
            pagination: false,
            striped: true,
            pagePosition: "bottom",
            pageNumber: 1,
            pageSize: 15,
            pageList: [15, 30, 45, 60],
            columns: [[
                {title: "选择", field: "ck", checkbox: true},
                {title: "企业名称", field: "enterpriseName", width: 300},
                {title: "作者", field: "author", width: 400},
                {title: "状态", field:"state",formatter: function(value) {
                	if(value == -1) {
                		return "未发布";
                	} else if(value == 1){
                		return "已发布";
                	} else if(value == 2) {
                		return "推广";
                	}
                },width:100},
                {
                    title: "创建时间", field: "createTime", formatter: function (value, row, index) {
                    return common_tool.timestampToDateTime(value);
                }, width: 100
                },
                {
                    title: "更新时间", field: "updateTime", formatter: function (value, row, index) {
                    return common_tool.timestampToDateTime(value);
                }, width: 100
                },
            ]],
        });
    },
    delete: function () {
        if ($("#enterprise_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var enterpriseId = $("#enterprise_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: enterpriseId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/enterprise/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    enterprise_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                enterprise_tool.form_clear();
                enterprise_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#enterpriseName").val()) {
            common_tool.messager_show("请输入企业名称");
        } else if (!$("#author").val()) {
            common_tool.messager_show("请输入作者");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入企业内容");
        } else {
            var enterpriseName = $("#enterpriseName").val();
            var author = $("#author").val();
            var state = $("#state option:selected").val();
            var enterpriseContent = editor.html();
            var trade = $("#trade option:selected").val();
//            var data = {};
            var file = document.getElementById("enterpriseImage");
            var image = file.files[0];
            var formData = new FormData();
            if(!id) {
            	var url = getRootPath() + '/frontend/enterprise/save';
            	formData.append("file", image);
                formData.append("enterpriseName", enterpriseName);
                formData.append("author", author);
                formData.append("trade", trade);
                formData.append("state", state);
                formData.append("enterpriseContent",enterpriseContent);
            } else {
            	var url = getRootPath() + '/frontend/enterprise/update';
            	formData.append("id",id);
            	formData.append("file", image);
                formData.append("enterpriseName", enterpriseName);
                formData.append("author", author);
                formData.append("trade", trade);
                formData.append("state", state);
                formData.append("enterpriseContent",enterpriseContent);
            }
            $.ajax({
            	cache: false,
            	type: 'post',
                data: formData,
//              traditional: true,
//              method: 'post',
                url: url,
//              async: false,
//              dataType: 'json',
                processData: false,
                contentType: false,
                success: function (result) {
                	enterprise_tool.form_clear();
                    enterprise_tool.init_main_view();
                	$('.pagewrap').hide();
                },
            });
        }
    },
};
$(document).ready(function () {
    enterprise_tool.init_main_view();
    $("#enterprise-select-btn").click(function () {
        enterprise_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#enterprise-save-btn").click(function () {
        /*enterprise_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#enterpriseName").val('');
        $("#state").val(-1);
    	$("#author").val('');
    	$("#trade").val("农、林、牧、渔业");
    	$("#upload_images").attr("src","");
    	editor.html('');
    });

    $("#enterprise-update-btn").click(function () {
        if ($("#enterprise_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#enterprise_grid").datagrid("getChecked")[0];
        	$("#enterpriseName").val(data.enterpriseName);
        	$("#author").val(data.author);
        	$("#state").val(data.state);
        	$("#trade").val(data.trade);
        	$("#upload_images").attr("src","");
        	editor.html(data.enterpriseContent);
        }

    });
    $("#enterpriseSubmit").click(function () {
    	var id;
    	if ($("#enterprise_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#enterprise_grid").datagrid("getChecked")[0].id;
    	}
    	enterprise_tool.saveOrUpdate(id);
    })
    $("#enterprise-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#enterprise_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                enterprise_tool.delete();
            }
        });
    });
    $("#enterprise-select-btn ").click(function () {
        enterprise_tool.form_clear();
        enterprise_tool.init_main_view();
    });
})
$('#enterpriseImage').change(function () {
	  previewImgEvents();
	});

	function previewImgEvents() {
		var files = event.target.files, file;
		if (files && files.length > 0) {
		// 获取目前上传的文件
		file = files[0];
		if (file.size > 1024 * 1024) {
		alert('图片大小不能超过 1MB!');
		return false;
		}
		var URL = window.URL || window.webkitURL;
		// 通过 file 生成目标 url
		var imgURL = URL.createObjectURL(file);
		// 用这个 URL 产生一个 <img> 将其显示出来
		$('#upload_images').attr('src', imgURL);
		// 使用下面这句可以在内存中释放对此 url 的伺服，跑了之后那个 URL 就无效了
		// URL.revokeObjectURL(imgURL);
		}
	}