jQuery(function(e){var t,n;t=function(){var t=function(){e(".scroll").on("click",this.scrollTo),e(".titulos").on("click",this.titulosClick)};return t.prototype.scrollTo=function(t){t.preventDefault();var n=e(this).data("to");e("body").scrollTo(n,2e3),e(window).trigger("scroll")},t.prototype.titulosClick=function(){e("body").scrollTo(e(this).closest(".page"),200)},t}(),n=function(){var t=function(){e(".product-slider").find(".btn-anterior").on("click",this.prev),e(".product-slider").find(".btn-siguiente").on("click",this.next),e(".slider").find("li").each(function(t){t==0&&e(this).addClass("active"),e(this).animate({marginLeft:t*800})})};return t.prototype.prev=function(t){t.preventDefault();var n=e(".slider").find(".active");if(!n.prev("li").length)return!1;n.prev("li").addClass("active"),n.removeClass("active"),e(".slider").find("li").each(function(t){e(this).animate({marginLeft:"-=100"},{duration:200,easing:"easeInSine"}).animate({marginLeft:"+=900"},{duration:1e3,easing:"easeOutQuint"})})},t.prototype.next=function(t){t.preventDefault();var n=e(".slider").find(".active");if(!n.next("li").length)return!1;n.next("li").addClass("active"),n.removeClass("active"),e(".slider").find("li").each(function(t){e(this).animate({marginLeft:"+=100"},{duration:200,easing:"easeInSine"}).animate({marginLeft:"-=900"},{duration:1e3,easing:"easeOutQuint"})})},t}();var r=new t,i=new n,s=0,o=0;e(window).on("resize",function(){s=e(window).height(),o=e(window).width(),e(".page").each(function(t){e(this).css({height:s})}),e(".background").each(function(t){e(this).css({height:s})}),e(".height").each(function(t){e(this).css({height:s})}),e(".overflow-y").css("height",e("#overlay").height()-80)}),e(window).trigger("hashchange"),e(window).trigger("resize");var u=e("title").text();e(".navbar").on("activate",function(){var t=e(this).find(".active").find("a").attr("href");if(!t)return!1;e(t.replace("#",".")+" .titulos").stop().transit({rotate:"0deg"},1e3),e(t.replace("#",".")+" .titulos").stop().fadeIn(500),e("title").text(u+" :: "+e(t).attr("title"))}),e(".navbar").trigger("activate");var a=_.throttle(function(){e(this).scrollTop()<=200?e(".navbar").show():e(".navbar").hide(),e(window).scrollTop()+e(window).height()>=e(document).height()?e(".sub-menu").animate({bottom:250},{duration:500,easing:"easeInSine"}):e(".sub-menu").css("bottom")=="250px"&&e(".sub-menu").animate({bottom:50},{duration:500,easing:"easeInSine"})},500),f=function(){var t=function(){e(".tecnologia-menu").find("a").on("click",e.proxy(this.animateStuff,this))};return t.prototype.animateStuff=function(t){t.preventDefault();var n=t.target,r=e(".tecnologia-menu").find(".active");this.moveBackground(e(n).data("index")),this.moveContent(e(n).data("index")),r.removeClass("active"),e(n).addClass("active")},t.prototype.moveBackground=function(t){e(".tecnologia-background").not(":eq("+(t-1)+")").stop().animate({right:-(o+1e3),zIndex:1},500,function(){e(this).css({right:0}),e(".tecnologia-background").eq(t-1).css("z-index",2)})},t.prototype.moveContent=function(t){e(".tecnologia-content").not(":eq("+(t-1)+")").stop().fadeOut(500),e(".tecnologia-content").eq(t-1).fadeIn()},t}(),l=new f,c=function(){var t=function(){e(".menus").find("li").on("click",e.proxy(this.changeMenu,this))};return t.prototype.changeMenu=function(t){t.preventDefault();var n=e(t.target);this.change(n.closest("ul"),n.data("index"))},t.prototype.change=function(t,n){e(".menus").find(".active-menu").hide().removeClass(".active-menu"),e(".menu-"+n).addClass("active-menu").show(),e(".servicios").find(".background").not(":eq("+(n-1)+")").stop().fadeOut(500),e(".servicios").find(".background").eq(n-1).fadeIn(),e(".servicios-contenido").find("img").not(":eq("+(n-1)+")").stop().fadeOut(500),e(".servicios-contenido").find("img").eq(n-1).fadeIn()},t}(),h=new c;e(window).on("scroll",a),e(".overflow-y").css("height",e("#overlay").height()-80),e.stellar()})