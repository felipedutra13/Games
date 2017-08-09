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

//choose a random console game//
$(function () {
	$("#randomConsole").click(function() {
		var ok = false;
		while(!ok){
			var total = $("#games-list tr:visible").length;
			var tmp = Math.floor((Math.random() * total) + 1);
			var game = $("#games-list tr:visible:nth-child("+tmp+") a").text();
			var plattform = $("#games-list tr:visible:nth-child("+tmp+") td:nth-child(2)").text();
			
			if(plattform == "Xbox 360" || plattform == "Playstation 2" || plattform == "Playstation 4" || plattform == "PC" || plattform == "Xbox" || plattform == "Wii" || plattform == "GameCube"){
				alert(game + " - " + plattform);
				ok = true;
			}
		}		
	});

	//choose a random portable game//

	$("#randomPortable").click(function() {
		var ok = false;
		while(!ok){
			var total = $("#games-list tr:visible").length;
			var tmp = Math.floor((Math.random() * total) + 1);
			var game = $("#games-list tr:visible:nth-child("+tmp+") a").text();
			var plattform = $("#games-list tr:visible:nth-child("+tmp+") td:nth-child(2)").text();
			
			if(plattform != "Xbox 360" && plattform != "Playstation 2" && plattform != "Playstation 4" && plattform != "PC" && plattform != "Xbox" && plattform != "Wii" && plattform != "GameCube"){
				alert(game + " - " + plattform);
				ok = true;
			}
		}		
	});
	
	$("#randomPlatform").click(function () {
		var platforms = ["Game Boy", "Game Boy Advance", "GameCube", "Master System", "Mega Drive", "Nintendinho", "Nintendo 64", "Nintendo DS", "Nintendo 3DS", "Playstation", "Playstation 2", "Playstation 4", "PSP", "Super Nintendo", "Wii", "Xbox", "Xbox 360"];
		
		var tmp = Math.floor(Math.random() * platforms.length);
		alert(platforms[tmp]);
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
var countGameBoy = 0;
var countUnique = 0;
var countTotal = 0;
var toCheck = "";

$(function() {
  $('#tabela .games').each(function() {
	  if($("td:nth-child(4)", this).text() == "Completed"){
		var toCheck = $("td:nth-child(2)", this).text();
		if(toCheck == "Xbox 360")
		countXbox360++;
		else if(toCheck == "Playstation")
		countPlaystation1++;
		else if(toCheck == "Playstation 2")
		countPlaystation2++;
		else if(toCheck == "Playstation 4")
		countPlaystation4++;
		else if(toCheck == "Super Nintendo")
		countSupernes++;
		else if(toCheck == "Arcade")
		countArcade++;
		else if(toCheck == "Game Boy Advance")
		countGameBoyAdvance++;
		else if(toCheck == "GameCube")
		countGameCube++;
		else if(toCheck == "Mega Drive")
		countMegaDrive++;
		else if(toCheck == "Neo Geo")
		countNeoGeo++;
		else if(toCheck == "Nintendinho")
		countNes++;
		else if(toCheck == "Nintendo 64")
		countNintendo64++;
		else if(toCheck == "Nintendo DS")
		countNintendoDs++;
		else if(toCheck == "PC")
		countPC++;
		else if(toCheck == "Wii")
		countWii++;
		else if(toCheck == "Xbox")
		countXbox++;
		else if(toCheck == "Android")
		countAndroid++;
		else if(toCheck == "Nintendo 3DS")
		countNintendo3Ds++;
		else if(toCheck == "PSP")
		countPsp++;
		else if(toCheck == "Master System")
		countMasterSystem++;
		else if(toCheck == "Game Boy")
		countGameBoy++;
	  }
	  countUnique = countXbox360+countSupernes+countPlaystation1+countPlaystation2+countPlaystation4+countArcade+countAndroid+countXbox+countWii+countNes+countNeoGeo+countNintendo64+countNintendoDs+countGameBoyAdvance+countGameCube+countPC+countMegaDrive+countPsp+countNintendo3Ds+countMasterSystem+countGameBoy;
  });

  $('#tabela-dlc .dlc').each(function() {
	  if($("td:nth-child(4)", this).text() == "Completed"){
		toCheck = $("td:nth-child(2)", this).text();
		if(toCheck == "Xbox 360")
		countXbox360++;
		else if(toCheck == "Playstation")
		countPlaystation1++;
		else if(toCheck == "Playstation 2")
		countPlaystation2++;
		else if(toCheck == "Playstation 4")
		countPlaystation4++;
		else if(toCheck == "Super Nintendo")
		countSupernes++;
		else if(toCheck == "Arcade")
		countArcade++;
		else if(toCheck == "Game Boy Advance")
		countGameBoyAdvance++;
		else if(toCheck == "GameCube")
		countGameCube++;
		else if(toCheck == "Mega Drive")
		countMegaDrive++;
		else if(toCheck == "Neo Geo")
		countNeoGeo++;
		else if(toCheck == "Nintendinho")
		countNes++;
		else if(toCheck == "Nintendo 64")
		countNintendo64++;
		else if(toCheck == "Nintendo DS")
		countNintendoDs++;
		else if(toCheck == "PC")
		countPC++;
		else if(toCheck == "Wii")
		countWii++;
		else if(toCheck == "Xbox")
		countXbox++;
		else if(toCheck == "Android")
		countAndroid++;
		else if(toCheck == "Nintendo 3DS")
		countNintendo3Ds++;
		else if(toCheck == "PSP")
		countPsp++;
		else if(toCheck == "Master System")
		countMasterSystem++;
		else if(toCheck == "Game Boy")
		countGameBoy++;
	  }
  });
  
  countTotal = countXbox360+countSupernes+countPlaystation1+countPlaystation2+countPlaystation4+countArcade+countAndroid+countXbox+countWii+countNes+countNeoGeo+countNintendo64+countNintendoDs+countGameBoyAdvance+countGameCube+countPC+countMegaDrive+countPsp+countNintendo3Ds+countMasterSystem+countGameBoy;
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
  $("#total-gameboy").html(countGameBoy);
  $("#total-games-completed").html("Total: "+countUnique);
  $("#total-dlc-completed").html("Total: "+(countTotal-countUnique));
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
  ctx.fillStyle="#000000";
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
  
  ////////Game Boy
  var c=document.getElementById("graph-gameboy");
  var ctx=c.getContext("2d");
  ctx.fillStyle="rgb(10,58,120)";
  var widthGameBoy = 300*countGameBoy/countTotal;
  ctx.fillRect(0,0,widthGameBoy,200);
  //////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////
});
