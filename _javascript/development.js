//hide the cover when the mouse is out
$(function () {
  $("tbody#skills-list td").mouseout(function () {
    $("img#skill-cover").hide();
  });
});