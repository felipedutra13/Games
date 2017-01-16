var somePlaying = false;

////fill the array of covers
$(document).ready(function() {
  $("tr td:first-child").each(function() {
    $(this).attr("isPlaying", "false");
  });
});