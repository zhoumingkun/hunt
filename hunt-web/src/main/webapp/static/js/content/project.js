project_tool = {
    form_clear: function () {
        $("#project_edit_form").form("clear");
        $("#project_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#project_grid").datagrid({
            url: getRootPath() + "/frontend/project/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#project-tool-bar',
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
                {title: "招商项目名称", field: "projectName", width: 300},
                {title: "作者", field: "author", width: 200},
                {title: "项目类型", field:"type",formatter: function(value) {
                	if(value == 1) {
                		return "工业类";
                	} else if(value == 2){
                		return "农业类";
                	} else if(value == 3) {
                		return "商贸物流类";
                	} else if(value == 4) {
                		return "文化旅游类";
                	} else if(value == 5) {
                		return "金融及交通类设施";
                	} else if(value == 6) {
                		return "城市公用设施";
                	}
                },width:400},
                {title: "状态", field:"state",formatter: function(value) {
                	if(value == -1) {
                		return "未发布";
                	} else if(value == 1){
                		return "已发布";
                	} else if(value == 2) {
                		return "推广";
                	} else if(value == 3) {
                		return "重点项目";
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
        if ($("#project_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var projectId = $("#project_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: projectId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/project/deleteById',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    project_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                project_tool.form_clear();
                project_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#projectName").val()) {
            common_tool.messager_show("请输入招商活动名称");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入招商活动内容");
        } else {
            var projectName = $("#projectName").val();
            var author = $("#author").val();
            var state = $("#state option:selected").val();
            var type = $("#type option:selected").val();
            var projectContent = editor.html();
            var data = {};
            if(id == 0) {
            	var url = getRootPath() + '/frontend/project/save';
            	data.projectName = projectName;
            	data.author = author;
            	data.state = state;
            	data.type = type;
            	data.projectContent = projectContent;
            } else {
            	var url = getRootPath() + '/frontend/project/update';
            	data.id = id;
            	data.projectName = projectName;
            	data.author = author;
            	data.state = state;
            	data.type = type;
            	data.projectContent = projectContent;
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
                        project_tool.form_clear();
                        project_tool.init_main_view();
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
    project_tool.init_main_view();
    $("#project-select-btn").click(function () {
        project_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#project-save-btn").click(function () {
        /*project_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#projectName").val('');
        $("#state").val(-1);
        $("#type").val(1);
    	$("#author").val('');
    	editor.html('');
    });

    $("#project-update-btn").click(function () {
        if ($("#project_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#project_grid").datagrid("getChecked")[0];
        	$("#projectName").val(data.projectName);
        	$("#author").val(data.author);
        	$("#state").val(data.state);
        	$("#type").val(data.type);
        	editor.html(data.projectContent);
        }

    });
    $("#projectSubmit").click(function () {
    	var id;
    	if ($("#project_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#project_grid").datagrid("getChecked")[0].id;
    	}
    	project_tool.saveOrUpdate(id);
    })
    $("#project-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#project_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                project_tool.delete();
            }
        });
    });
    $("#project-select-btn ").click(function () {
        project_tool.form_clear();
        project_tool.init_main_view();
    });
})