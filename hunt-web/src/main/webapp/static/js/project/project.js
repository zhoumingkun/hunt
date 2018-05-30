(function($){
    $(function(){
        $(".asideNav ul li").on("click",function(e){
            e.preventDefault()
            $(".asideNav ul li").removeClass("current")
            $(this).addClass("current")
            $(".right .title").removeClass("active")
            $(".right .title").eq($(this).index()).addClass("active")
        })
    })
})(jQuery)