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
        } else if (!$("#author").val()) {
            common_tool.messager_show("请输入作者");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入旅游内容");
        }  else if (!$("#travelImageUrl").val()) {
            common_tool.messager_show("请插入至少一张图片");
        } else {
            var travelName = $("#travelName").val();
            var author = $("#author").val();
            var image = $("#travelImageUrl").val();
            var travelContent = editor.html();
            var data = {};
            if(!id) {
            	var url = getRootPath() + '/frontend/travel/save';
            	data.travelName = travelName;
            	data.author = author;
            	data.image = image;
            	data.travelContent = travelContent;
            } else {
            	var url = getRootPath() + '/frontend/travel/update';
            	data.id = id;
            	data.travelName = travelName;
            	data.author = author;
            	data.image = image;
            	data.travelContent = travelContent;
            }
            $.ajax({
                data: data,
                traditional: true,
                method: 'post',
                url: url,
                async: false,
                dataType: 'json',
                success: function (result) {
                	travel_tool.form_clear();
                    travel_tool.init_main_view();
                	$('.pagewrap').hide();
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
        /*travel_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#travelName").val('');
    	$("#author").val('');
    	$("#travelImageUrl").val('');
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