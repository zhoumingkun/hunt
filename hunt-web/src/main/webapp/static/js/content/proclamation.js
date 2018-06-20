proclamation_tool = {
    form_clear: function () {
        $("#proclamation_edit_form").form("clear");
        $("#proclamation_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#proclamation_grid").datagrid({
            url: getRootPath() + "/frontend/proclamation/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#proclamation-tool-bar',
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
                {title: "公告名称", field: "proclamationName", width: 300},
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
        if ($("#proclamation_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var proclamationId = $("#proclamation_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: proclamationId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/proclamation/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    proclamation_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                proclamation_tool.form_clear();
                proclamation_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#proclamationName").val()) {
            common_tool.messager_show("请输入招商活动名称");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入招商活动内容");
        } else {
            var proclamationName = $("#proclamationName").val();
            var author = $("#author").val();
            var state = $("#state option:selected").val();
            var proclamationContent = editor.html();
            var data = {};
            if(!id) {
            	var url = getRootPath() + '/frontend/proclamation/save';
            	data.proclamationName = proclamationName;
            	data.author = author;
            	data.state = state;
            	data.proclamationContent = proclamationContent;
            } else {
            	var url = getRootPath() + '/frontend/proclamation/update';
            	data.id = id;
            	data.proclamationName = proclamationName;
            	data.author = author;
            	data.state = state;
            	data.proclamationContent = proclamationContent;
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
                        proclamation_tool.form_clear();
                        proclamation_tool.init_main_view();
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
    proclamation_tool.init_main_view();
    $("#proclamation-select-btn").click(function () {
        proclamation_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#proclamation-save-btn").click(function () {
        /*proclamation_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#proclamationName").val('');
        $("#state").val(-1);
    	$("#author").val('');
    	editor.html('');
    });

    $("#proclamation-update-btn").click(function () {
        if ($("#proclamation_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#proclamation_grid").datagrid("getChecked")[0];
        	$("#proclamationName").val(data.proclamationName);
        	$("#author").val(data.author);
        	$("#state").val(data.state);
        	editor.html(data.proclamationContent);
        }

    });
    $("#proclamationSubmit").click(function () {
    	var id;
    	if ($("#proclamation_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#proclamation_grid").datagrid("getChecked")[0].id;
    	}
    	proclamation_tool.saveOrUpdate(id);
    })
    $("#proclamation-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#proclamation_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                proclamation_tool.delete();
            }
        });
    });
    $("#proclamation-select-btn ").click(function () {
        proclamation_tool.form_clear();
        proclamation_tool.init_main_view();
    });
})