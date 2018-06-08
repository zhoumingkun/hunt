guide_tool = {
    form_clear: function () {
        $("#guide_edit_form").form("clear");
        $("#guide_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#guide_grid").datagrid({
            url: getRootPath() + "/frontend/guide/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#guide-tool-bar',
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
                {title: "服务指南名称", field: "guideName", width: 300},
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
        if ($("#guide_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var guideId = $("#guide_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: guideId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/guide/delete',
            async: false,
            dataType: 'json',
            success: function (result) {
                if (result.code == 10000) {
                    guide_tool.init_main_view();
                    common_tool.messager_show(result.msg);
                    return false;
                }
                else {
                    common_tool.messager_show(result.msg);
                }
                guide_tool.form_clear();
                guide_tool.init_main_view();
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#guideName").val()) {
            common_tool.messager_show("请输入服务指南名称");
        } else if (!$("#author").val()) {
            common_tool.messager_show("请输入作者");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入服务指南内容");
        } else {
            var guideName = $("#guideName").val();
            var author = $("#author").val();
            var guideContent = editor.html();
            var data = {};
            if(!id) {
            	var url = getRootPath() + '/frontend/guide/save';
            	data.guideName = guideName;
            	data.author = author;
            	data.guideContent = guideContent;
            } else {
            	var url = getRootPath() + '/frontend/guide/update';
            	data.id = id;
            	data.guideName = guideName;
            	data.author = author;
            	data.guideContent = guideContent;
            }
            $.ajax({
                data: data,
                traditional: true,
                method: 'post',
                url: url,
                async: false,
                dataType: 'json',
                success: function (result) {
                	guide_tool.form_clear();
                    guide_tool.init_main_view();
                	$('.pagewrap').hide();
                },
            });
        }
    },
};
$(document).ready(function () {
    guide_tool.init_main_view();
    $("#guide-select-btn").click(function () {
        guide_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#guide-save-btn").click(function () {
        /*guide_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#guideName").val('');
    	$("#author").val('');
    	editor.html('');
    });

    $("#guide-update-btn").click(function () {
        if ($("#guide_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#guide_grid").datagrid("getChecked")[0];
        	$("#guideName").val(data.guideName);
        	$("#author").val(data.author);
        	editor.html(data.guideContent);
        }

    });
    $("#guideSubmit").click(function () {
    	var id;
    	if ($("#guide_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#guide_grid").datagrid("getChecked")[0].id;
    	}
    	guide_tool.saveOrUpdate(id);
    })
    $("#guide-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#guide_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                guide_tool.delete();
            }
        });
    });
    $("#guide-select-btn ").click(function () {
        guide_tool.form_clear();
        guide_tool.init_main_view();
    });
})