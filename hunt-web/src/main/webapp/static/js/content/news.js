role_tool = {
    form_clear: function () {
        $("#role_edit_form").form("clear");
        $("#news_grid").datagrid("uncheckAll");
    },
    //初始化页面+加载数据
    init_main_view: function () {
        $("#news_grid").datagrid({
            url: getRootPath() + "/frontend/news/findAll",
            method: 'post',
            idField: "id",
            treeField: 'name',
            fitColumns: true,
            toolbar: '#role-tool-bar',
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
                {title: "新闻名称", field: "newsName", width: 300},
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
        if ($("#news_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
        }
        var newsId = $("#news_grid").datagrid("getChecked")[0].id;
        $.ajax({
            data: {
                id: newsId,
            },
            traditional: true,
            method: 'post',
            url: getRootPath() + '/frontend/news/delete',
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
            },
        });
    },
    saveOrUpdate: function (id) {
        if (!$("#newsName").val()) {
            common_tool.messager_show("请输入新闻名称");
        } else if (!editor.html()) {
            common_tool.messager_show("请输入新闻内容");
        } else {
            var newsName = $("#newsName").val();
            var author = $("#author").val();
            var state = $("#state option:selected").val();
            var newsContent = editor.html();
            var data = {};
            if(!id) {
            	var url = getRootPath() + '/frontend/news/save';
            	data.newsName = newsName;
            	data.author = author;
            	data.state = state;
            	data.newsContent = newsContent;
            } else {
            	var url = getRootPath() + '/frontend/news/update';
            	data.id = id;
            	data.newsName = newsName;
            	data.author = author;
            	data.state = state;
            	data.newsContent = newsContent;
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
    $("#role-select-btn").click(function () {
        role_tool.init_main_view();
        $('.pagewrap').hide();
    });

    $("#role-save-btn").click(function () {
        /*role_tool.init_edit_view(1);*/
        $('.pagewrap').show();
        $("#newsName").val('');
    	$("#author").val('');
    	$("#state").val(-1);
    	editor.html('');
    	
    });

    $("#role-update-btn").click(function () {
        if ($("#news_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        } else {
        	$('.pagewrap').show();
        	var data = $("#news_grid").datagrid("getChecked")[0];
        	$("#newsName").val(data.newsName);
        	$("#author").val(data.author);
        	$("#state").val(data.state);
        	editor.html(data.newsContent);
        }
    });
    
    $("#newsSubmit").click(function () {
    	var id;
    	if ($("#news_grid").datagrid("getChecked").length == 0) {
    		id = 0;
    	} else {
    		id = $("#news_grid").datagrid("getChecked")[0].id;
    	}
    	role_tool.saveOrUpdate(id);
	})
	
    $("#role-delete-btn").click(function () {
        $('.pagewrap').hide();
        if ($("#news_grid").datagrid("getChecked").length == 0) {
            common_tool.messager_show("请选择一条记录");
            return false;
        }
        $.messager.confirm('确认对话框', "您确认删除该条记录吗?", function (r) {
            if (r) {
                role_tool.delete();
            }
        });
    });
    $("#role-select-btn ").click(function () {
        role_tool.form_clear();
        role_tool.init_main_view();
    });
})