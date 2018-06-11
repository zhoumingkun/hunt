activity_tool = {
    form_clear: function () {
        $("#activity_edit_form").form("clear");
        $("#activity_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#activity_grid").datagrid({
            url: getRootPath() + "/frontend/activity/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#activity-tool-bar',
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
                {title: "招商活动名称", field: "activityName", width: 300},
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
        if ($("#activity_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var activityId = $("#activity_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: activityId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/activity/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    activity_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                activity_tool.form_clear();
                activity_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#activityName").val()) {
            common_tool.messager_show("请输入招商活动名称");
        } else if (!$("#author").val()) {
            common_tool.messager_show("请输入作者");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入招商活动内容");
        } else {
            var activityName = $("#activityName").val();
            var author = $("#author").val();
            var state = $("#state option:selected").val();
            var activityContent = editor.html();
            var data = {};
            if(!id) {
            	var url = getRootPath() + '/frontend/activity/save';
            	data.activityName = activityName;
            	data.author = author;
            	data.state = state;
            	data.activityContent = activityContent;
            } else {
            	var url = getRootPath() + '/frontend/activity/update';
            	data.id = id;
            	data.activityName = activityName;
            	data.author = author;
            	data.state = state;
            	data.activityContent = activityContent;
            }
            $.ajax({
                data: data,
                traditional: true,
                method: 'post',
                url: url,
                async: false,
                dataType: 'json',
                success: function (result) {
                    if (result.code == 10000) {
                       activity_tool.form_clear();
	                   activity_tool.init_main_view();
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
    activity_tool.init_main_view();
    $("#activity-select-btn").click(function () {
        activity_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#activity-save-btn").click(function () {
        /*activity_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#activityName").val('');
        $("#state").val(-1);
    	$("#author").val('');
    	editor.html('');
    });

    $("#activity-update-btn").click(function () {
        if ($("#activity_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#activity_grid").datagrid("getChecked")[0];
        	$("#activityName").val(data.activityName);
        	$("#author").val(data.author);
        	$("#state").val(data.state);
        	editor.html(data.activityContent);
        }

    });
    $("#activitySubmit").click(function () {
    	var id;
    	if ($("#activity_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#activity_grid").datagrid("getChecked")[0].id;
    	}
    	activity_tool.saveOrUpdate(id);
    })
    $("#activity-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#activity_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                activity_tool.delete();
            }
        });
    });
    $("#activity-select-btn ").click(function () {
        activity_tool.form_clear();
        activity_tool.init_main_view();
    });
})