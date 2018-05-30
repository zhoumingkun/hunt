(function ($) {
    $(function () {
        // 新闻动态的
        var news = new Swiper('#news', {
            onlyExternal: true,
        })
        $(".select_button li").on("click", function (e) {
            e.preventDefault();
            $(".select_button li").removeClass("active")
            $(this).addClass("active")
            news.slideTo($(this).index(), 300, false)
        })
        // 本市名企

        var enterprise = new Swiper('.enterprise_list', {
            direction: 'horizontal',
            autoplay: 3000,
            loop: true,
        })
        $(".enterprise_list").hover(function () {
            enterprise.stopAutoplay();
        }, function () {
            enterprise.startAutoplay();
        })
    })
})(jQuery)