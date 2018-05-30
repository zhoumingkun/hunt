(function ($) {
    $(function () {
        $(".asideNav ul li").on("click", function (e) {
            e.preventDefault();
            $(".asideNav ul li").removeClass("current")
            $(this).addClass("current")
            $(".main .common_content").hide()
            $(".main .common_content").eq($(this).index()).show()
            $(".right .title").removeClass("active")
            $(".right .title").eq($(this).index()).addClass("active")
        })
    })
})(jQuery)