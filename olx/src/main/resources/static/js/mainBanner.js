/* mainBanner.js */
console.clear();
// 버튼형 슬라이더
$(function() {
$('.slider-1 > .page-btns > div').click(function(){
    var $this = $(this);
    var index = $this.index();
    
    $this.addClass('active');
    $this.siblings('.active').removeClass('active');
    
    var $slider = $this.parent().parent();
    
    var $current = $slider.find(' > .slides > div.active');
    
    var $post = $slider.find(' > .slides > div').eq(index);
    
    $current.removeClass('active');
    $post.addClass('active');
});

// 좌/우 버튼 슬라이더
$('.slider-1 > .side-btns > div').click(function(){
    var $this = $(this);
    var $slider = $this.closest('.slider-1');
    
    var index = $this.index();
    var isLeft = index == 0;
    
    var $current = $slider.find(' > .page-btns > div.active');
    var $post;
    
    if ( isLeft ){
        $post = $current.prev();
    }
    else {
        $post = $current.next();
    };
    
    if ( $post.length == 0 ){
        if ( isLeft ){
            $post = $slider.find(' > .page-btns > div:last-child');
        }
        else {
            $post = $slider.find(' > .page-btns > div:first-child');
        }
    };
    
    $post.click();
});

// 자동 슬라이딩 함수
function slidingTimer(){
    Sliding = setInterval(function(){
        $('.slider-1 > .side-btns > div').eq(1).click();
    }, 4000);
}

// 배너 영역에 마우스 올리면 자동 슬라이딩 정지
$('.slider-1').on({
    mouseenter:function(){
        clearInterval(Sliding);
    },
    mouseleave:function(){
        slidingTimer();
    }
});

slidingTimer();
});
