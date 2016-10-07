var arrayCovers = [];
var arrayImages = [];
var arrayImagesIndex = 1;
var srcOriginal;

////fill the array of covers
$(document).ready(function() {
  arrayCovers = ["2012/01/thumbs/9471ed2b257533ec46dcaa211a82b9ee_jpg_210x312_crop_upscale_q90.jpg", "2010/01/thumbs/34f9142bea22ea61ad0c41641f4a4ee3_jpg_210x312_crop_upscale_q90.jpg"];
  $("#total").html("Total:"+$("#games-list tr:visible").length);
  srcOriginal = $("#icone").attr("src");
});

/////change de cover
$(function () {
  $("tbody td").mouseover(function () {
    var indexCover = $(this).parent().index();
    //$("img#cover").attr("src", "_imagens/covers/"+arrayCovers[indexCover]);
      $("img#cover").attr("src", "https://cdn.fstatic.com/media/movies/covers/"+arrayCovers[indexCover]);
    $("img#cover").show();
  });
});

///hide the cover when the mouse is out
$(function () {
  $("tbody td").mouseout(function () {
    $("img#cover").hide();
  });
});
