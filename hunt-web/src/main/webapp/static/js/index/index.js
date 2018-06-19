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
            autoplayDisableOnInteraction:false,
            autoplay: 3000,
            loop: true,
        })
        $(".enterprise_list").hover(function () {
            enterprise.stopAutoplay();
        }, function () {
            enterprise.startAutoplay();
        })
        // 轮播banner

        var banner = new Swiper('.left_news', {
            direction: 'horizontal',
            autoplay: 3000,
            autoplayDisableOnInteraction:false,
            loop: true,
        })
        $(".left_news").hover(function () {
            banner.stopAutoplay();
        }, function () {
            banner.startAutoplay();
        })
         // 轮播banner

        var notice = new Swiper('.notice_list .swiper-container', {
            direction: 'vertical',
            autoplay: 2000,
            autoplayDisableOnInteraction:false,
            loop: true,
            slidesPerView:9,
            spaceBetween: 0,
        })
        $(".notice_list .swiper-container").hover(function () {
            notice.stopAutoplay();
        }, function () {
            notice.startAutoplay();
        })
    })
})(jQuery)