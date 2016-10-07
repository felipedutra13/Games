$(function () {
  $("#botao").click(function () {
    //alert("apertou");
    var tmp = $("#texto").val();
    $("#texto").text(tmp+"<tr><td><a href=\"#\">"+$("#nome").val()+"</a></td><td>"+$("#plataforma option:selected").val()+"</td><td>"+$("#genero option:selected").val()+"</td><td>"+$("#status option:selected").val()+"</td></tr>\n");
  });
});

$(function () {
  $("#botao2").click( function () {
    var tmp = $("#texto").val();
    var splitted = tmp.split("\n");
    var final = "";
    for(var i=0; i<splitted.length;i++)
    {
      var pega = splitted[i].split("images/");
      final = final.concat("\"",pega[1],"\",");
    }

    $("#texto2").text(final);
  });
});
