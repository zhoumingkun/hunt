culture_tool = {
    form_clear: function () {
        $("#culture_edit_form").form("clear");
        $("#culture_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#culture_grid").datagrid({
            url: getRootPath() + "/frontend/culture/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#culture-tool-bar',
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
                {title: "文化名称", field: "cultureName", width: 300},
                {title: "作者", field: "author", width: 400},
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
        if ($("#culture_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var cultureId = $("#culture_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: cultureId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/culture/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    culture_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                culture_tool.form_clear();
                culture_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#cultureName").val()) {
            common_tool.messager_show("请输入文化名称");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入文化内容");
        } else if (!$("#cultureText").val()) {
            common_tool.messager_show("请输入文化摘要");
        } else {
            var cultureName = $("#cultureName").val();
            var author = $("#author").val();
            var cultureContent = editor.html();
            var cultureText = $("#cultureText").val();
            console.log(cultureText);
            var file = document.getElementById("cultureImage");
            var image = file.files[0];
            var formData = new FormData();
            if(!id) {
            	var url = getRootPath() + '/frontend/culture/save';
            	formData.append("file", image);
                formData.append("cultureName", cultureName);
                formData.append("author", author);
                formData.append("cultureContent",cultureContent);
                formData.append("cultureText",cultureText);
            } else {
            	if(image) {
            		var url = getRootPath() + '/frontend/culture/updateFile';
                	formData.append("id",id);
                	formData.append("file", image);
                    formData.append("cultureName", cultureName);
                    formData.append("author", author);
                    formData.append("cultureContent",cultureContent);
                    formData.append("cultureText",cultureText);
            	} else {
            		var url = getRootPath() + '/frontend/culture/update';
            		formData.append("id",id);
            		formData.append("cultureName", cultureName);
            		formData.append("author", author);
            		formData.append("cultureContent",cultureContent);
            		formData.append("cultureText",cultureText);
            	}
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
                	if (result.code == 10000) {
                		culture_tool.form_clear();
                        culture_tool.init_main_view();
                    	$('.pagewrap').hide();
                        common_tool.messager_show(result.msg);
                        return false;
                    }
                    else {
                        common_tool.messager_show(result.msg);
                    }
                	
                },
            });
        }
    },
};
$(document).ready(function () {
    culture_tool.init_main_view();
    $("#culture-select-btn").click(function () {
        culture_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#culture-save-btn").click(function () {
    	$("#culture_grid").datagrid("clearSelections");
        /*culture_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#cultureName").val('');
    	$("#author").val('');
    	$("#cultureText").val('');
    	editor.html('');
    });

    $("#culture-update-btn").click(function () {
        if ($("#culture_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#culture_grid").datagrid("getChecked")[0];
        	$("#cultureName").val(data.cultureName);
        	$("#author").val(data.author);
        	$("#upload_images").attr("src","../"+data.image);
        	$("#cultureText").val(data.cultureText);
        	editor.html(data.cultureContent);
        }

    });
    $("#cultureSubmit").click(function () {
    	var id;
    	if ($("#culture_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#culture_grid").datagrid("getChecked")[0].id;
    	}
    	culture_tool.saveOrUpdate(id);
    })
    $("#culture-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#culture_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                culture_tool.delete();
            }
        });
    });
    $("#culture-select-btn ").click(function () {
        culture_tool.form_clear();
        culture_tool.init_main_view();
    });
})
$('#cultureImage').change(function () {
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