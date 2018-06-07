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
        } else if (!$("#author").val()) {
            common_tool.messager_show("请输入作者");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入文化内容");
        } else {
            var cultureName = $("#cultureName").val();
            var author = $("#author").val();
            var cultureContent = editor.html();
            var data = {};
            if(!id) {
            	var url = getRootPath() + '/frontend/culture/save';
            	data.cultureName = cultureName;
            	data.author = author;
            	data.cultureContent = cultureContent;
            } else {
            	var url = getRootPath() + '/frontend/culture/update';
            	data.id = id;
            	data.cultureName = cultureName;
            	data.author = author;
            	data.cultureContent = cultureContent;
            }
            $.ajax({
                data: data,
                traditional: true,
                method: 'post',
                url: url,
                async: false,
                dataType: 'json',
                success: function (result) {
//                    if (result.code == 10000) {
//                        $("#role_edit_dialog").dialog("close");
//                        culture_tool.form_clear();
//                        culture_tool.init_main_view();
//                        common_tool.messager_show(result.msg);
//                        return false;
//                    }
//                    else {
//                        common_tool.messager_show(result.msg);
//                    }
                	culture_tool.form_clear();
                    culture_tool.init_main_view();
                	$('.pagewrap').hide();
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
        /*culture_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#cultureName").val('');
    	$("#author").val('');
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