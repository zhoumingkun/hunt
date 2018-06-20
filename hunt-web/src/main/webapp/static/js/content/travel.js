travel_tool = {
    form_clear: function () {
        $("#travel_edit_form").form("clear");
        $("#travel_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#travel_grid").datagrid({
            url: getRootPath() + "/frontend/travel/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#travel-tool-bar',
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
                {title: "旅游名称", field: "travelName", width: 300},
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
        if ($("#travel_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var travelId = $("#travel_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: travelId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/travel/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    travel_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                travel_tool.form_clear();
                travel_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#travelName").val()) {
            common_tool.messager_show("请输入旅游名称");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入旅游内容");
        } else {
            var travelName = $("#travelName").val();
            var author = $("#author").val();
            var travelContent = editor.html();
            var travelText = $("#travelText").val();
//            var data = {};
            var file = document.getElementById("travelImage");
            var image = file.files[0];
            var formData = new FormData();
            if(!id) {
            	var url = getRootPath() + '/frontend/travel/save';
            	formData.append("file", image);
                formData.append("travelName", travelName);
                formData.append("author", author);
                formData.append("travelContent",travelContent);
                formData.append("travelText",travelText);
            } else {
            	if(image) {
            		var url = getRootPath() + '/frontend/travel/updateFile';
            		formData.append("id",id);
            		formData.append("file", image);
            		formData.append("travelName", travelName);
            		formData.append("author", author);
            		formData.append("travelContent",travelContent);
            		formData.append("travelText",travelText);
            	} else {
            		var url = getRootPath() + '/frontend/travel/update';
            		formData.append("id",id);
            		formData.append("travelName", travelName);
            		formData.append("author", author);
            		formData.append("travelContent",travelContent);
            		formData.append("travelText",travelText);
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
                		travel_tool.form_clear();
                        travel_tool.init_main_view();
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
    travel_tool.init_main_view();
    $("#travel-select-btn").click(function () {
        travel_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#travel-save-btn").click(function () {
    	$("#travel_grid").datagrid("clearSelections");
        /*travel_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#travelName").val('');
    	$("#author").val('');
    	$("#travelText").val('');
    	editor.html('');
    });

    $("#travel-update-btn").click(function () {
        if ($("#travel_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#travel_grid").datagrid("getChecked")[0];
        	$("#travelName").val(data.travelName);
        	$("#author").val(data.author);
        	$("#upload_images").attr("src","");
        	$("#travelText").val(data.travelText);
        	editor.html(data.travelContent);
        }

    });
    $("#travelSubmit").click(function () {
    	var id;
    	if ($("#travel_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#travel_grid").datagrid("getChecked")[0].id;
    	}
    	travel_tool.saveOrUpdate(id);
    })
    $("#travel-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#travel_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                travel_tool.delete();
            }
        });
    });
    $("#travel-select-btn ").click(function () {
        travel_tool.form_clear();
        travel_tool.init_main_view();
    });
})
$('#travelImage').change(function () {
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