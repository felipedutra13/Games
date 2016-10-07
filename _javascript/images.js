var openImage;

$(function() {
  $('#arrow-left').hide();
  $('#arrow-right').hide();
  $("img#arrow-right").attr("isShowing", "false");
  $('figcaption').each(function() {
    $(this).hide();
  });
  $("img#first-image").attr("first", "true");
  $("img#last-image").attr("last", "true");
});

function showArrows() {
  /////////////Show the arrows////////////////////////////
    if($(openImage).attr("last") != "true")
      $("img#arrow-right").fadeIn(500);
    else $("img#arrow-right").fadeOut(500);
    if($(openImage).attr("first") != "true")
      $("img#arrow-left").fadeIn(500);
    else $("img#arrow-left").fadeOut(500);
    $("img#arrow-right").attr("isShowing", "true");
}

//////control everything that needs when clicks on an image
var isFull = false;
$(function(){
  $('#album-fotos figure').click(function() {
    openImage = $("img", this);

    $("div#full-shadow").toggleClass("shadow");
    showArrows();
    //////////////////////////////////////////////////////
    $('img', this).toggleClass('full-image');
    $("img", this).fadeTo(0,1,function(){
      //nothgin
    });
    $('figcaption', this).fadeIn(600);
    $('figcaption', this).toggleClass('subtitle-position');
    if(isFull){
      $('img', this).animate({height:"200px",width:"200px"});
      $('figcaption', this).fadeOut(600);
      isFull = false;

      $("img", this).attr("src", $("img", this).attr("srcOriginal"));
      ///////////////hide the arrows////////////
      $("img#arrow-right").fadeOut(500);
      $("img#arrow-left").fadeOut(500);
      $("img#arrow-right").attr("isShowing", "false");
      /////////////////////////////////////////////////
    }
    else {
      isFull = true;
      $('img', this).animate({height:"600px",width:"1000px"});
    }
  });
});

//////control the change of images when clicks an arrows
$(function () {
  $("img#arrow-left").click(function () {

    openImage.toggleClass('full-image');
    openImage.animate({height:"200px",width:"200px"});
    openImage.next('figcaption').fadeOut(600);
    openImage.next('figcaption').toggleClass("subtitle-position");

    var prevImg = openImage.parent().prev().find("img");
    prevImg.toggleClass('full-image');
    prevImg.next("figcaption").fadeIn(600);
    prevImg.next("figcaption").toggleClass('subtitle-position');
    prevImg.animate({height:"600px",width:"1000px"});
    openImage = prevImg;
    showArrows();
  });

  $("img#arrow-right").click(function () {

    openImage.toggleClass('full-image');
    openImage.animate({height:"200px",width:"200px"});
    openImage.next('figcaption').fadeOut(600);
    openImage.next('figcaption').toggleClass("subtitle-position");

    var nextImg = openImage.parent().next().find("img");
    nextImg.toggleClass('full-image');
    nextImg.next("figcaption").fadeIn(600);
    nextImg.next("figcaption").toggleClass('subtitle-position');
    nextImg.animate({height:"600px",width:"1000px"});
    openImage = nextImg;
    showArrows();
  });
});

////hover effect
$(function () {
  $("figure img").hover(function() {
    if(!isFull)
    {
      $(this).fadeTo(0,0.5,function() {
      //do nothing
    });
  }
  },
  function () {
    $(this).fadeTo(0,1,function() {
      //do nothing
    });
  });
});
