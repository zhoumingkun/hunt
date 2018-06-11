role_tool = {
    form_clear: function () {
        $("#role_edit_form").form("clear");
        $("#policy_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#policy_grid").datagrid({
            url: getRootPath() + "/frontend/policy/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#policy-tool-bar',
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
                {title: "招商政策名称", field: "policyName", width: 300},
                {title: "作者", field: "author", width: 400},
                {title: "类型", field: "type", formatter: function(value) {
                	if(value == 1) {
                		return "政策法规";
                	} else if(value == 2){
                		return "区县政策";
                	}
                },width: 100},
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
        if ($("#policy_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var policyId = $("#policy_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: policyId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/policy/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    role_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                role_tool.form_clear();
                role_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#policyName").val()) {
            common_tool.messager_show("请输入招商政策名称");
        } else if (!$("#author").val()) {
            common_tool.messager_show("请输入作者");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入招商政策内容");
        } else {
            var policyName = $("#policyName").val();
            var author = $("#author").val();
            var type = $("#type option:selected").val();
            var state = $("#state option:selected").val();
            var policyContent = editor.html();
            var data = {};
            if(!id) {
            	var url = getRootPath() + '/frontend/policy/save';
            	data.policyName = policyName;
            	data.author = author;
            	data.type = type;
            	data.state = state;
            	data.policyContent = policyContent;
            } else {
            	var url = getRootPath() + '/frontend/policy/update';
            	data.id = id;
            	data.policyName = policyName;
            	data.author = author;
            	data.type = type;
            	data.state = state;
            	data.policyContent = policyContent;
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
                        role_tool.form_clear();
                        role_tool.init_main_view();
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
    role_tool.init_main_view();
    $("#policy-select-btn").click(function () {
        role_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#policy-save-btn").click(function () {
        /*role_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#policyName").val('');
        $("#type").val(1);
        $("#state").val(-1);
    	$("#author").val('');
    	editor.html('');
    });

    $("#policy-update-btn").click(function () {
        if ($("#policy_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#policy_grid").datagrid("getChecked")[0];
        	$("#policyName").val(data.policyName);
        	$("#author").val(data.author);
        	$("#type").val(data.type);
        	$("#state").val(data.state);
        	editor.html(data.policyContent);
        }

    });
    $("#policySubmit").click(function () {
    	var id;
    	if ($("#policy_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#policy_grid").datagrid("getChecked")[0].id;
    	}
    	role_tool.saveOrUpdate(id);
    })
    $("#policy-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#policy_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                role_tool.delete();
            }
        });
    });
    $("#policy-select-btn ").click(function () {
        role_tool.form_clear();
        role_tool.init_main_view();
    });
})