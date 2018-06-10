specialty_tool = {
    form_clear: function () {
        $("#specialty_edit_form").form("clear");
        $("#specialty_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#specialty_grid").datagrid({
            url: getRootPath() + "/frontend/specialty/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#specialty-tool-bar',
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
                {title: "特产名称", field: "specialtyName", width: 300},
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
        if ($("#specialty_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var specialtyId = $("#specialty_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: specialtyId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/specialty/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    specialty_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                specialty_tool.form_clear();
                specialty_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#specialtyName").val()) {
            common_tool.messager_show("请输入特产名称");
        } else if (!$("#author").val()) {
            common_tool.messager_show("请输入作者");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入特产内容");
        } else {
            var specialtyName = $("#specialtyName").val();
            var author = $("#author").val();
            var specialtyContent = editor.html();
//            var data = {};
            var file = document.getElementById("specialtyImage");
            var image = file.files[0];
            var formData = new FormData();
            if(!id) {
            	var url = getRootPath() + '/frontend/specialty/save';
            	formData.append("file", image);
                formData.append("specialtyName", specialtyName);
                formData.append("author", author);
                formData.append("specialtyContent",specialtyContent);
            } else {
            	var url = getRootPath() + '/frontend/specialty/update';
            	formData.append("id",id);
            	formData.append("file", image);
                formData.append("specialtyName", specialtyName);
                formData.append("author", author);
                formData.append("specialtyContent",specialtyContent);
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
                	specialty_tool.form_clear();
                    specialty_tool.init_main_view();
                	$('.pagewrap').hide();
                },
            });
        }
    },
};
$(document).ready(function () {
    specialty_tool.init_main_view();
    $("#specialty-select-btn").click(function () {
        specialty_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#specialty-save-btn").click(function () {
        /*specialty_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#specialtyName").val('');
    	$("#author").val('');
    	$("#specialtyImageUrl").val('');
    	editor.html('');
    });

    $("#specialty-update-btn").click(function () {
        if ($("#specialty_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#specialty_grid").datagrid("getChecked")[0];
        	$("#specialtyName").val(data.specialtyName);
        	$("#author").val(data.author);
        	$("#upload_images").attr("src","../"+data.image);
        	editor.html(data.specialtyContent);
        }

    });
    $("#specialtySubmit").click(function () {
    	var id;
    	if ($("#specialty_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#specialty_grid").datagrid("getChecked")[0].id;
    	}
    	specialty_tool.saveOrUpdate(id);
    })
    $("#specialty-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#specialty_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                specialty_tool.delete();
            }
        });
    });
    $("#specialty-select-btn ").click(function () {
        specialty_tool.form_clear();
        specialty_tool.init_main_view();
    });
})
$('#specialtyImage').change(function () {
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