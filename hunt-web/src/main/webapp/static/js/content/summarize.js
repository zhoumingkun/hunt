summarize_tool = {
    form_clear: function () {
        $("#summarize_edit_form").form("clear");
        $("#summarize_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#summarize_grid").datagrid({
            url: getRootPath() + "/frontend/summarize/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#summarize-tool-bar',
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
                {title: "名称", field: "louFanName", width: 300},
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
        if ($("#summarize_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var summarizeId = $("#summarize_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: summarizeId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/summarize/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    summarize_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                summarize_tool.form_clear();
                summarize_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#summarizeName").val()) {
            common_tool.messager_show("请输入名称");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入内容");
        } else {
            var summarizeName = $("#summarizeName").val();
            var summarizeContent = editor.html();
            var formData = new FormData();
            if(!id) {
            	var url = getRootPath() + '/frontend/summarize/save';
                formData.append("louFanName", summarizeName);
                formData.append("louFanContent",summarizeContent);
            } else {
            	var url = getRootPath() + '/frontend/summarize/update';
            	formData.append("id",id);
                formData.append("louFanName", summarizeName);
                formData.append("louFanContent",summarizeContent);
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
                        summarize_tool.form_clear();
                        summarize_tool.init_main_view();
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
    summarize_tool.init_main_view();
    $("#summarize-select-btn").click(function () {
        summarize_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#summarize-save-btn").click(function () {
        /*summarize_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#summarizeName").val('');
    	editor.html('');
    });

    $("#summarize-update-btn").click(function () {
        if ($("#summarize_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#summarize_grid").datagrid("getChecked")[0];
        	$("#summarizeName").val(data.louFanName);
        	editor.html(data.louFanContent);
        }

    });
    $("#summarizeSubmit").click(function () {
    	var id;
    	if ($("#summarize_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#summarize_grid").datagrid("getChecked")[0].id;
    	}
    	summarize_tool.saveOrUpdate(id);
    })
    $("#summarize-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#summarize_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                summarize_tool.delete();
            }
        });
    });
    $("#summarize-select-btn ").click(function () {
        summarize_tool.form_clear();
        summarize_tool.init_main_view();
    });
})