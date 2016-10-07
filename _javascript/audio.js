var somePlaying = false;
var arraySongs = [];

////fill the array of covers
$(document).ready(function() {
  arraySongs = ["ZZe4tzilkh8"/*chrono cross*/,"s7L2PVdrb_8"/*game of thrones*/,"ZCdhbWqZ3p8"/*god of war*/,"e6JK3fhYE1w"/*halo*/,"Y97u-U0nvJM"/*the last of us*/,"2cymqAVPWuo"/*walking dead*/];
  $("tr td:first-child").each(function() {
    $(this).attr("isPlaying", "false");
  });
});

///change the song which is playing
$(function () {
  $("tr td:first-child").click(function () {
    //$("#debug").text("td");
    var index = $(this).parent().index();
    $("#songs").attr("src", "https://www.youtube.com/embed/"+arraySongs[index]);
    if($(this).attr("isPlaying") == "true")
    {
      //$("#songs").get(0).pause();
      $("#songs")[0].src.replace("&autoplay=1", "");
      $(this).attr("isPlaying", "false");// = false;
      $(this).css("background", "url(_imagens/play.png) no-repeat");
      $(this).css("background-size", "90% 90%");
      $(this).css("background-position", "2px 2px");
      somePlaying = false;
    } else{
      $("tr td:first-child").each(function() {
        if($(this).attr("isPlaying") == "true")
        {
          $(this).attr("isPlaying", "false");// = false;
          $(this).css("background", "url(_imagens/play.png) no-repeat");
          $(this).css("background-size", "90% 90%");
          $(this).css("background-position", "2px 2px");
          somePlaying = false;
          $("#songs")[0].src.replace("&autoplay=1", "");
          //$("#songs").get(0).pause();
        }
      });
      somePlaying = true;
      $(this).attr("isPlaying", "true");// = true;
      $(this).css("background", "url(_imagens/pause.png) no-repeat");
      $(this).css("background-size", "90% 90%");
      $(this).css("background-position", "2px 2px");
      //songs.play();
      $("#songs")[0].src += "?autoplay=1";
    }
  });
});

///check if the audio ended
////NOT WORKING ON YOUTUBE VIDEO
$(function () {
  $("#songs").bind("ended", function () {
    $("tr td:first-child").each(function() {
      if($(this).attr("isPlaying") == "true")
      {
        $(this).attr("isPlaying", "false");// = false;
        $(this).css("background", "url(_imagens/play.png) no-repeat");
        $(this).css("background-size", "90% 90%");
        $(this).css("background-position", "2px 2px");
        somePlaying = false;
      }
    });
  });
});
