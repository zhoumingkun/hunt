$.fn.lemonPaging = function(options) {
	var that=this;
    var defaults = {
        'url':'',
		'total':'',
		'page_size':'',
		'pages':9,
		'current_page':1,
		'pre_next':'true',
		'searchable':'true',
		'successcallback':function(data,current_page){
			console.log(data);
		},
		'errorcallback':function(data,current_page){
			console.log(data);			
		},
    };
    var settings = $.extend({},defaults, options);//将一个空对象做为第一个参数
    function initPaging(url){
    	if(!url){
    		createPaging(settings.total,settings.page_size,1,settings.pages,settings.pre_next,settings.searchable);
    	}else{
			$.ajax({
				type:"GET",
				url:url,//分页数据的请求地址
				dataType:'json',//省去了字符串转化json
				data:{current_page:1},
				success:function(data){
					settings.total=data.total;
					settings.page_size=data.page_size;
					createPaging(settings.total,settings.page_size,data.current_page,settings.pages,settings.pre_next,settings.searchable);
					settings.successcallback(data,data.current_page);
				},
				error:function(data){
					if(data.status==404){
						console.log('连接不到网络！启用本地默认数据模拟');
						createPaging(settings.total,settings.page_size,1,settings.pages,settings.pre_next,settings.searchable);
						settings.errorcallback(data,1);
					}
				}
			})
    	}
	}
	function createPaging(total,pagesize,current_page,pages,pre_next,searchable){
		var first_page=1;
		var last_page=Math.ceil(total/pagesize);
		var before_current=current_page-Math.ceil((pages-3)/2);
		var after_current=current_page+Math.floor((pages-3)/2);
		var paging='';//分页内容
		if(last_page<=pages){
			for(i=1;i<=last_page;i++){
				if(i==current_page){
					paging+='<a href="javascript:;" class="page active">'+i+'</a>'
				}else{
					paging+='<a href="javascript:;" class="page">'+i+'</a>'
				}
			}
		}else if(current_page<pages-1){
			for(i=1;i<pages-1;i++){
				if(i==current_page){
					paging+='<a href="javascript:;" class="page active">'+i+'</a>'
				}else{
					paging+='<a href="javascript:;" class="page">'+i+'</a>'
				}
			}
			paging+='<a href="javascript:;" class="shot">···</a>';
			paging+='<a href="javascript:;" class="page">'+last_page+'</a>';
		}else if((current_page>=pages-1)&&(last_page-after_current>1)){
			paging+='<a href="javascript:;" class="page">'+first_page+'</a>';
			paging+='<a href="javascript:;" class="shot">···</a>';
			for(i=before_current+1;i<after_current;i++){
				if(i==current_page){
					paging+='<a href="javascript:;" class="page active">'+i+'</a>'
				}else{
					paging+='<a href="javascript:;" class="page">'+i+'</a>'
				}
			}
			paging+='<a href="javascript:;" class="shot">···</a>';
			paging+='<a href="javascript:;" class="page">'+last_page+'</a>';
		}else if((current_page>pages-1)&&(last_page-after_current<=1)){
			paging+='<a href="javascript:;" class="page">'+first_page+'</a>';
			paging+='<a href="javascript:;" class="shot">···</a>';
			for(i=last_page-(pages-1-1-1);i<=last_page;i++){
				if(i==current_page){
					paging+='<a href="javascript:;" class="page active">'+i+'</a>'
				}else{
					paging+='<a href="javascript:;" class="page">'+i+'</a>'
				}
			}
		}
		if(pre_next=='true'){
			if(current_page==1){
				paging='<a href="javascript:;" class="pre disabled"></a>'+paging+'<a href="javascript:;" class="next"></a>'
			}else if(current_page==last_page){
				paging='<a href="javascript:;" class="pre"></a>'+paging+'<a href="javascript:;" class="next disabled"></a>'
			}else{
				paging='<a href="javascript:;" class="pre"></a>'+paging+'<a href="javascript:;" class="next"></a>'
			}
		}
		if(searchable=='true'){
			paging+='<span>跳转到</span><input class="page_num" type="text" value="'+current_page+'"><span>页</span><button class="search">GO</button>'
		}
		paging='<div class="paginationwrap"><div class="pagination pagenav">'+paging+'</div></div>'
		that.html(paging);
		that.find('.page').on('click',function(){
			current_page=parseInt($(this).html());
			changePage(current_page)
		});
		that.find('.pre').on('click',function(){
			if($(this).attr('class')=='pre disabled'){
				return;
			}
			current_page-=1;		
			changePage(current_page)
		});
		that.find('.next').on('click',function(){
			if($(this).attr('class')=='next disabled'){
				return;
			}
			current_page-=0;		
			current_page+=1;		
			changePage(current_page);
		});
		that.find('.search').on('click',function(){
			current_page=$('.page_num').val();
			if(current_page<1){
				current_page=1;
			}
			if(current_page>last_page){
				current_page=last_page;
			}
			changePage(current_page);
		});
	}
	function changePage(current_page){
		createPaging(settings.total,settings.page_size,current_page,settings.pages,settings.pre_next,settings.searchable);
		if(!settings.url){
			settings.successcallback('我没用ajax',current_page);
		}else{
			$.ajax({
				type:"GET",
				url:settings.url,//分页数据的请求地址
				dataType:'json',//省去了字符串转化json
				data:{current_page:current_page},
				success:function(data){
					settings.successcallback(data,current_page);
				},
				error:function(data){
					if(data.status==404){
						console.log('连接不到网络！启用本地默认数据模拟');
						settings.errorcallback(data,current_page);
					}
				}
			})
		}
	}
	initPaging(settings.url);
}
// 调用方法举例
// $('.pagenav').lemonPaging({
// 	'url':"page1.php",//ajax请求地址
// 	'total':217,//默认数据在非ajax本地时生效的总数据条数
// 	'page_size':10,//每页数据条数
// 	'pages':7,//分页可显示页码数量
// 	'pre_next':'true',//默认显示上一页下一页
// 	'searchable':'true',//默认带跳转输入框
// 	'successcallback':function(data){
// 		console.log(11);
// 	},//列表数据填充容器
// });