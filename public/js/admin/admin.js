$(function () {
  //弹出用户面板
  $('.go').click(function (e) {
    let status=$('.userSelect').css('display');
    if (status==='block') {
      $('.userSelect').animate({
        'top': '60px',
        'opacity': '0'
      }, 300);
      setTimeout(() => {
        $('.userSelect').css('display', 'none');
      }, 300);

    } else {
      $('.userSelect').css('display', 'block');
      $('.userSelect').animate({
        'top': '50px',
        'opacity': '1'
      }, 300);
      $(document).one("click", function(){
        $(".userSelect").animate({
          'top': '60px',
          'opacity': '0'
        }, 300);

      });
      e.stopPropagation();
    }
  });
  $(".userSelect").on("click", function(e){
    e.stopPropagation();
  });
});
