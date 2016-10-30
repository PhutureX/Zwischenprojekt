//Sticky/Transforming Header Navigation
$(window).scroll(function() {
if ($(this).scrollTop() > 1){
    $('header nav').addClass("transform-bg");
    $('header nav img').addClass("showimg");
    $('header nav ul li a').addClass("transform-menu");
  }
  else{
    $('header nav').removeClass("transform-bg");
    $('header nav img').removeClass("showimg");
    $('header nav ul li a').removeClass("transform-menu");
  }
});
