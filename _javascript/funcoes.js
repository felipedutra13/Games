var arrayCovers = [];
var arrayImages = [];
var arrayImagesIndex = 1;
var srcOriginal;

function mudaFoto(foto)
{
  document.getElementById("icone").src = "_imagens/"+foto;
}

//////////////////
$(function () {
	$("#submenu").hide();
	$("li#mostrar").mouseover(function () {
		$("#submenu").show();
	});
	$("li#mostrar").mouseout(function () {
		$("#submenu").hide();
	});
});
/////////////////

////fill the array of covers
$(document).ready(function() {
  arrayImages = ["galeria-01.jpg","galeria-02.jpg","galeria-03.jpg"];
  $("#total").html("Total:"+$("#games-list tr:visible").length);
  $("#total-dlc").html("Total:"+$("#games-dlc-list tr:visible").length);
  srcOriginal = $("#icone").attr("src");
});

//////change the main image
function changeImage() {
  $("div#radios img").attr("src", "_imagens/radio-not.png");
  $("div#radios img:nth-child("+(arrayImagesIndex+1).toString()+")").attr("src", "_imagens/radio-checked.png");
  $("img#main-image").fadeOut(300, function() {
    $("img#main-image").attr("src", "_imagens/"+arrayImages[arrayImagesIndex]);
    arrayImagesIndex++;
    if(arrayImagesIndex == 3)
    arrayImagesIndex = 0;
  });
  $("img#main-image").fadeIn(300);

}
//////Change the main image on the index
var interval = setInterval(changeImage, 5000);

////change the main image when you click///
$(function () {
  $("div#radios img").click(function() {
    var index = $(this).index();
    //$("#debug").text(index);
    $(this).attr("src", "_imagens/radio-checked.png");
    arrayImagesIndex = index;
    changeImage();
    clearInterval(interval);
    interval = setInterval(changeImage, 4000);
    //timer();
  });
});


//hide the cover when the mouse is out
$(function () {
  $("tbody#games-list td, tbody#games-dlc-list td").mouseout(function () {
    $("img#cover").hide();
  });
});

/////teste
function makeFilter() {
		for(var i=2; i<=4;i++) {
			$("#tabela td:nth-child("+i+"):visible").each(function(){
				if($(this).attr("valor") != "ALL")
				{
					if($(this).attr("valor"))
					if($(this).text().toUpperCase() != $(this).attr("valor").toUpperCase())
						$(this).parent().hide();
				
			} else {
				$("#tabela td:nth-child("+i+")").parent().show();
			}
		});}
		$("#total").html("Total:"+$("#games-list tr:visible").length);
}
/////////

/////make the table filter///////////////////////////////////////////////////////
$(function(){
  $("#tabela select").on("change", function(){
		$("#tabela tbody tr").show(); 
		var index = $(this).parent().index();
		var nth = "#tabela td:nth-child("+(index+1).toString()+")";
		$(nth).attr("valor", $(this).val().toUpperCase());
		
		makeFilter();
  });
  
  $("#nameFilter").keyup(function(e) {
	  $("#tabela tbody tr").show();
	  makeFilter();
	  var  filter = $("#nameFilter").val().toUpperCase();
	  $("#games-list tr td a:visible").each(function() {
		  var nameLine = $(this).text().toUpperCase();
		  if(nameLine.indexOf(filter) < 0)
			  $(this).parent().parent().hide();
	  });
  });
});
//////////////////////////////////////////////////////////////////////////////////

/////teste
function makeFilterDlc() {
		for(var i=2; i<=4;i++) {
			$("#tabela-dlc td:nth-child("+i+"):visible").each(function(){
				if($(this).attr("valor") != "ALL")
				{
					if($(this).attr("valor"))
					if($(this).text().toUpperCase() != $(this).attr("valor").toUpperCase())
						$(this).parent().hide();
				
			} else {
				$("#tabela-dlc td:nth-child("+i+")").parent().show();
			}
		});}
		$("#total-dlc").html("Total:"+$("#games-dlc-list tr:visible").length);
}
/////////

/////make the table filter///////////////////////////////////////////////////////
$(function(){
  $("#tabela-dlc select").on("change", function(){
		$("#tabela-dlc tbody tr").show(); 
		var index = $(this).parent().index();
		var nth = "#tabela-dlc td:nth-child("+(index+1).toString()+")";
		$(nth).attr("valor", $(this).val().toUpperCase());
		
		makeFilterDlc();
  });
  
  $("#nameFilterDlc").keyup(function(e) {
	  $("#tabela-dlc tbody tr").show();
	  makeFilterDlc();
	  var  filter = $("#nameFilterDlc").val().toUpperCase();
	  $("#games-dlc-list tr td a:visible").each(function() {
		  var nameLine = $(this).text().toUpperCase();
		  if(nameLine.indexOf(filter) < 0)
			  $(this).parent().parent().hide();
	  });
  });
});
//////////////////////////////////////////////////////////////////////////////////

//choose a random game//
$(function () {
	$("#random").click(function() {
		var total = $("#games-list tr:visible").length;
		var tmp = Math.floor((Math.random() * total) + 1);
		var arrayOptions = [];
		var index = 1;
		$("#games-list tr:visible").each(function () {
			arrayOptions[index] = $("a",this).text();
			index++;
		});
		alert(arrayOptions[tmp]);
		
	});
});

var countArcade = 0;
var countAndroid = 0;
var countGameBoyAdvance = 0;
var countGameCube = 0;
var countMegaDrive = 0;
var countNeoGeo = 0;
var countNes = 0;
var countNintendo64 = 0;
var countNintendoDs = 0;
var countNintendo3Ds = 0;
var countPC = 0;
var countWii = 0;
var countXbox = 0;
var countXbox360 = 0;
var countPlaystation1 = 0;
var countPlaystation2 = 0;
var countPlaystation4 = 0;
var countPsp = 0;
var countSupernes = 0;
var countMasterSystem = 0;
var countTotal = 0;

$(function() {
  /* tentativa de filtrar antes so com os completados */
  var index = 3;
  var nth = "#tabela td:nth-child("+(index+1).toString()+")";
  var valor = "COMPLETED";

  $(nth).each(function(){
    if($(this).text().toUpperCase().indexOf(valor) < 0){
      $(this).parent().hide();
    }
  });

  $('#tabela td:visible').each(function() {
    if($(this).text() == "Xbox 360")
    countXbox360++;
    else if($(this).text() == "Playstation")
    countPlaystation1++;
    else if($(this).text() == "Playstation 2")
    countPlaystation2++;
    else if($(this).text() == "Playstation 4")
    countPlaystation4++;
    else if($(this).text() == "Super Nintendo")
    countSupernes++;
    else if($(this).text() == "Arcade")
    countArcade++;
    else if($(this).text() == "Game Boy Advance")
    countGameBoyAdvance++;
    else if($(this).text() == "GameCube")
    countGameCube++;
    else if($(this).text() == "Mega Drive")
    countMegaDrive++;
    else if($(this).text() == "Neo Geo")
    countNeoGeo++;
    else if($(this).text() == "Nintendinho")
    countNes++;
    else if($(this).text() == "Nintendo 64")
    countNintendo64++;
    else if($(this).text() == "Nintendo DS")
    countNintendoDs++;
    else if($(this).text() == "PC")
    countPC++;
    else if($(this).text() == "Wii")
    countWii++;
    else if($(this).text() == "Xbox")
    countXbox++;
    else if($(this).text() == "Android")
    countAndroid++;
    else if($(this).text() == "Nintendo 3DS")
    countNintendo3Ds++;
	else if($(this).text() == "PSP")
    countPsp++;
	else if($(this).text() == "Master System")
    countMasterSystem++;
  });
  console.log(countMasterSystem);
  $("#tabela tbody tr").show();
  countTotal = countXbox360+countSupernes+countPlaystation1+countPlaystation2+countPlaystation4+countArcade+countAndroid+countXbox+countWii+countNes+countNeoGeo+countNintendo64+countNintendoDs+countGameBoyAdvance+countGameCube+countPC+countMegaDrive+countPsp+countNintendo3Ds+countMasterSystem;
  $("#total-arcade").html(countArcade);
  $("#total-android").html(countAndroid);
  $("#total-gameboyadvance").html(countGameBoyAdvance);
  $("#total-gamecube").html(countGameCube);
  $("#total-megadrive").html(countMegaDrive);
  $("#total-neogeo").html(countNeoGeo);
  $("#total-nes").html(countNes);
  $("#total-nintendo64").html(countNintendo64);
  $("#total-nintendods").html(countNintendoDs);
  $("#total-nintendo3ds").html(countNintendo3Ds);
  $("#total-pc").html(countPC);
  $("#total-wii").html(countWii);
  $("#total-xbox").html(countXbox);
  $("#total-xbox360").html(countXbox360);
  $("#total-playstation1").html(countPlaystation1);
  $("#total-playstation2").html(countPlaystation2);
  $("#total-playstation4").html(countPlaystation4);
  $("#total-psp").html(countPsp);
  $("#total-supernes").html(countSupernes);
  $("#total-mastersystem").html(countMasterSystem);
  $("#total-completed").html("Total: "+countTotal);

  ////GRAPH////////////////////////////////////////////////////////////////////////
  ////////XBOX 360
  var c=document.getElementById("graph-360");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(0,255,0)";
  var width360 = 300*countXbox360/countTotal;
  ctx.fillRect(0,0,width360,200);
  //////////////////////////////////////////////////////////

  ////////PLAYSTATION 1
  var c=document.getElementById("graph-play1");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(105,105,105)";
  var widthPlay1 = 300*countPlaystation1/countTotal;
  ctx.fillRect(0,0,widthPlay1,200);
  //////////////////////////////////////////////////////////////

  ////////PLAYSTATION 2
  var c=document.getElementById("graph-play2");
  var ctx=c.getContext("2d");
  ctx.fillStyle="#00000";
  var widthPlay2 = 300*countPlaystation2/countTotal;
  ctx.fillRect(0,0,widthPlay2,200);
  //////////////////////////////////////////////////////////////

  ////////PLAYSTATION 4
  var c=document.getElementById("graph-play4");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(0,0,205)";
  var widthPlay4 = 300*countPlaystation4/countTotal;
  ctx.fillRect(0,0,widthPlay4,200);
  //////////////////////////////////////////////////////////////
  
  ////////PSP
  var c=document.getElementById("graph-psp");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(0,0,205)";
  var widthPsp = 300*countPsp/countTotal;
  ctx.fillRect(0,0,widthPsp,200);
  //////////////////////////////////////////////////////////////

  ////////Super Nintendo
  var c=document.getElementById("graph-supernes");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(138,43,226)";
  var widthSupernes = 300*countSupernes/countTotal;
  ctx.fillRect(0,0,widthSupernes,200);
  //////////////////////////////////////////////////////////////

  ////////Arcade
  var c=document.getElementById("graph-arcade");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(70,130,180)";
  var widthArcade = 300*countArcade/countTotal;
  ctx.fillRect(0,0,widthArcade,200);
  //////////////////////////////////////////////////////////////

  ////////Android
  var c=document.getElementById("graph-android");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(124,252,0)";
  var widthAndroid = 300*countAndroid/countTotal;
  ctx.fillRect(0,0,widthAndroid,200);
  //////////////////////////////////////////////////////////////

  ////////Game Boy Advance
  var c=document.getElementById("graph-gameboyadvance");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(128,0,128)";
  var widthGameBoyAdvance = 300*countGameBoyAdvance/countTotal;
  ctx.fillRect(0,0,widthGameBoyAdvance,200);
  //////////////////////////////////////////////////////////////

  ////////GameCube
  var c=document.getElementById("graph-gamecube");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(0,255,255)";
  var widthGameCube = 300*countGameCube/countTotal;
  ctx.fillRect(0,0,widthGameCube,200);
  //////////////////////////////////////////////////////////////

  ////////Mega Drive
  var c=document.getElementById("graph-megadrive");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(128,0,0)";
  var widthMegaDrive = 300*countMegaDrive/countTotal;
  ctx.fillRect(0,0,widthMegaDrive,200);
  //////////////////////////////////////////////////////////////

  ////////NeoGeo
  var c=document.getElementById("graph-neogeo");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(255,0,255)";
  var widthNeoGeo = 300*countNeoGeo/countTotal;
  ctx.fillRect(0,0,widthNeoGeo,200);
  //////////////////////////////////////////////////////////////

  ////////Nintendinho
  var c=document.getElementById("graph-nes");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(255,0,0)";
  var widthNes = 300*countNes/countTotal;
  ctx.fillRect(0,0,widthNes,200);
  //////////////////////////////////////////////////////////////

  ////////Nintendo 64
  var c=document.getElementById("graph-nintendo64");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(255,127,80)";
  var widthNintendo64 = 300*countNintendo64/countTotal;
  ctx.fillRect(0,0,widthNintendo64,200);
  //////////////////////////////////////////////////////////////

  ////////Nintendo DS
  var c=document.getElementById("graph-nintendods");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(255,165,0)";
  var widthNintendoDs = 300*countNintendoDs/countTotal;
  ctx.fillRect(0,0,widthNintendoDs,200);
  //////////////////////////////////////////////////////////////
 
  ////////Nintendo 3DS
  var c=document.getElementById("graph-nintendo3ds");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(255,165,255)";
  var widthNintendo3Ds = 300*countNintendo3Ds/countTotal;
  ctx.fillRect(0,0,widthNintendo3Ds,200);
  //////////////////////////////////////////////////////////////

  ////////PC
  var c=document.getElementById("graph-pc");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(255,215,0)";
  var widthPC = 300*countPC/countTotal;
  ctx.fillRect(0,0,widthPC,200);
  //////////////////////////////////////////////////////////////

  ////////Wii
  var c=document.getElementById("graph-wii");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(0,191,255)";
  var widthWii = 300*countWii/countTotal;
  ctx.fillRect(0,0,widthWii,200);
  //////////////////////////////////////////////////////////////

  ////////Xbox
  var c=document.getElementById("graph-xbox");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(0,128,0)";
  var widthXbox = 300*countXbox/countTotal;
  ctx.fillRect(0,0,widthXbox,200);
  //////////////////////////////////////////////////////////////
  
  ////////Master System
  var c=document.getElementById("graph-mastersystem");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(0,128,0)";
  var widthMasterSystem = 300*countMasterSystem/countTotal;
  ctx.fillRect(0,0,widthMasterSystem,200);
  //////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////
});
