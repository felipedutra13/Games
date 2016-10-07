var arrayCovers = [];
var arrayImages = [];
var arrayImagesIndex = 1;
var srcOriginal;

function mudaFoto(foto)
{
  document.getElementById("icone").src = "_imagens/"+foto;
}

////fill the array of covers
$(document).ready(function() {
  arrayCovers = ["10000000_ios.jpg","225px-Age_of_Mythology_Liner.jpg","Age_of_Mythology_-_The_Titans_Liner.jpg", "Alan-wake-0.jpg","Alien_Isolation.jpg", "Assassins_Creed.jpg","Assassins_Creed_2_Box_Art.JPG", "Assassins_Creed_III_Game_Cover.jpg","Axiom_Verge_Title.jpg","BADLAND.jpg","Arkham_Asylum.jpg","250px-ArkhamCity.jpg","250px-ArkhamCity.jpg", "Batman_Arkham_Knight_Cover_Art.jpg", "Batman-Arkham-Origins-Box-Art.jpg","Battleblockcover.png","Bioshockcoverfinalcropped.jpg", "Blue-Estate_20140626004240.jpg","Blur_(video_game).jpg","250px-BombManWorldCover.jpg","Braidlogo.jpg","256px-BoFIVBox.png","Brothers_A_Tale_of_Two_Sons_cover_art.jpg","Codbox.jpg","Call_of_Duty_2_Box.jpg", "Cod3_box.jpg","275px-Call_of_Duty_Black_Ops_II_Game_Cover.png","Call_of_Duty_Modern_Warfare_3_box_art.png","Cboxcastlecrashers.jpg", "Castleofillusionremake_2013.jpg","250px-AriaofSorrowCover.jpg","CastlevaniaDraculaX.JPG","Castlevania_Lords_of_Shadow.png","Castlevania_Lords_of_Shadow_2_boxart.jpg","Castlevania_Lord_of_Shadow_Mirror_of_Fate_HD.jpg","250px-Castlevania_SOTN_PAL.jpg","250px-Catherine_Cover_Art.png","240px-Child_of_Light_art.jpg","250px-Chronocrossbox.jpg","Chrono_Trigger.jpg","250px-Clocktower1.jpg","250px-Crash_Bandicoot_Cover.png","Crash2.jpg","Crash_Bandicoot_2_-_N-Tranced_Coverart.png","252px-Crash_Bandicoot_3_Warped_Original_Box_Art.jpg","250px-Crash_Huge_adventure.png","CrashWrathofcortex_boxart.jpg","250px-Crash_Bandicoot_Purple_-_Riptos_Rampage_Coverart.png","252px-CrashBashCover.png","256px-CrashNKConsoleFree.jpg","256px-NTSCTitans.jpg","CrashTagTeamRacingCover.jpg", "CrashTeamRacingNACover.png","245px-Crash_Twinsanity_Coverart.jpg","Crash_-_Mind_over_Mutant_Coverart.png","Crysis_Cover.jpg","200px-Cut_the_Rope_logo.png","Dantes_Inferno.jpg","Dark_Souls_Cover_Art.jpg","Darksiders_Cover.jpg","DarkstalkersTheNightWarriors.JPG","Daze_before_christmas_box_art.jpg","DeadIslandGameoftheYearEdition.jpg","DeadIslandRiptide.jpg","250px-Deadrising_boxart.jpg","Dead_Space_Box_Art.jpg","Dead_Space_2_Box_Art.jpg","Dead_Space_3_PC_game_cover.jpg","Dead_Space_Extraction.jpg","Dead_Trigger_mobile.png","DeadlightBox.jpg","Destiny_box_art.png","250px-Dxcover.jpg","39388_Deus_Ex_GO.jpg", "250px-DMC1FrontCover.jpg","220px-Dishonored_box_art_Bethesda.jpg","250px-Dino_Crisis.jpg","250px-Dino_Crisis_2.jpg","251px-Disney-Universe.jpg","Disneys_Aladdin_Videogame_Cover.jpg","Herculesactiongameposter.jpg","412lV6uIMIL.jpg","220px-Tarzan_(video_game).jpg","Donald_Duck_Quack_Attack.jpg","150px-Donkey_Kong_arcade.jpg","250px-Donkeykong3_arcade.jpg","Dkc_snes_boxart.jpg","DK_Country_2.jpg","Dkc3_snes_boxart.jpg","Donkeykongcountryreturns.jpg","Donkey_Kong_Jr._arcade_game.png","doom_3_BFG_edition.jpg","250px-Db_gtfinalbout_box.jpg","dragon-ball-xenoverse.jpg","250px-Dbzbox.jpg","1814867-box_dbzb3_large.png","2131800-dbz_psx_large.jpg","1814883-box_dbzub22_large.png","DuckTales_Remastered.jpg","ElChavoKart.jpg","FEAR_DVD_box_art.jpg","Fallout_3_cover_art.PNG","FarCryClassic.jpg","250px-Far-cry-3-box-art-xbox-360.jpg","Far_Cry_4_box_art.jpg","Fatal_Frame_Coverart.png","Fatal_Fury_2_cover.JPG","250px-Fatal_Fury_3_(cover).jpg","Fatal_Fury_(cover).jpg","250px-Fez_cover.png","Fight_Night_Champion.jpg","256px-PS2FightingForceCover.jpg","Fftbox.jpg","256px-Forza_Horizon_boxart.jpg","Galerians_Coverart.png","256px-Gears_of_War.png","256px-Gow2_offbox.jpg","250px-Gears_of_War_3_box_artwork.png","Gears_of_War-_Judgment_cover.jpg","200px-GexCover.jpg","252px-Gowbox.jpg","252px-Gow2-2.jpg","256px-God_of_War_III_not_final_art.jpg","250px-SNES_Goof_Troop_Box.jpg","250px-Gta2cover.jpg","2006041-gta5_2_large.png","GTASABOX.jpg","Vice-city-cover.jpg","Guacamelee!SuperTurboChampionshipEdition.jpg","Guilty_Gear_Coverart.png","250px-Guitarhero-cover.jpg","Guitar_Hero_II.jpg","256px-Half-Life_Cover_Art.jpg","Halo2-cover.png","256px-Halo_3_final_boxshot.JPG","250px-Halo-combat-evolved-anniversary-dvd.jpg","Harry_Potter_and_the_Chamber_of_Secrets_Coverart.png","HP_goblet_of_fire.png","HPstonebox.jpg","256px-HP_prisoner_of_azkaban.png","250px-HauntingGround_NA_PS2cover.jpg","Hitman47_artwork.jpg","HitmanGoscreen568x568.jpg","250px-HomeAlone1game.jpg","Homefront.jpg","HowToSurviveBoxartXBLA.jpg","256px-Box-l-jp.jpg","Injustice_Gods_Among_Us_Cover_Art.jpg","INSIDE_banner.jpg","JackieChanStuntmaster.jpg","250px-Jersey_Devil_PSX.jpg","256px-Journey_logo_lowres.jpg","250px-Jurassicpark-game-logo.jpg","Killer_Instinct_flyer.jpg","Kingdom_Hearts.jpg","KirbyNightmareinDreamLand.png","250px-Kirbys_return_to_dreamland_boxart.jpg","Klonoa_doortophplaystation_front.jpg","250px-Klonoa_Empire_of_Dreams_Packaging02.jpg","225px-Klonoa2.jpg","256px-Lara_Croft_and_the_Guardian_of_Light_cover.jpg","lara-croft-and-the-temple-54840cc30d78b.jpg","256px-Legacy_Of_Kain-_Sould_Reaver_Cover.jpg","Legend_of_Legaia_Coverart.png","LeosFortune.jpg","LifeIsStrange.jpg","Cboxlimbo.jpg","Lollipop_Chainsaw_Cover_Art.png","Lords_of_The_Fallen.png","256px-LostViaDomusCover_small.jpg","250px-Mario_Kart_64box.png","250px-Super_Circuit.jpg","250px-Mario_Kart_Wii.png","Marioparty1.jpg","Marioparty2.jpg","Marioparty3.jpg","250px-Mario_vs._Donkey_Kong_Coverart.png","250px-MarioAndLuigiSuperstarSagaGBACoverArtUS.jpg","250px-Mark_of_the_Ninja_artwork.jpg","Marvelsuperheroesvsstreetfighter_title.png","1856047-box_mvc2_large.jpg","Marvel_vs_Capcom.png","256px-Maxpaynebox.jpg","256px-Max_Payne_2.jpg","256px-Maxpayne3.jpg","250px-Max,_The_Curse_of_Brotherhood_box_art.jpg","250px-Medal_of_Honor.png","Mega_Man_1_box_artwork.jpg","250px-Megaman2_box.jpg","200px-Megaman3_box.jpg","200px-Megaman4_box.jpg","250px-Megaman5_box.jpg","250px-Megaman6_box.jpg","250px-Mega_Man_7_Coverart.jpg","250px-Mega_Man_8_Coverart.jpg","Mega_Man_X_Coverart.png","252px-Metal_Gear_Solid_cover_art.png","250px-Metalgear2boxart.jpg","220px-MjordanSNES_boxart.jpg","Middle-earthShadowofMordor_292x136.jpg","Mighty_No_9_splash.jpg","Mirrors_Edge.jpg","Mortal_Kombat_game_flyer.png","205px-Mortal_Kombat_II_cover.JPG","255px-Mortal_Kombat_4_cover.jpg","Mortal_Kombat_vs._DC_Universe_Coverart.png","MKAPS2.jpg","MortalKombatDeadlyAlliancecover.jpg","Mortal_Kombat_-_Deception_Coverart.png","Mortal_Kombat_Komplete_Edition.jpg","Mortal_Kombat_X_Cover_Art.png", "Naruto_Shippuden_UNS_2_Box_Art.jpg","Nfsu-win-cover.jpg","Nfsunderground2-win-cover.jpg","250px-NewSuperMarioBrothers.jpg","250px-NewSuperMarioBrosWiiBoxart.png","newer_super_mario_bros__wii.jpg","Ninja_Gaiden_(NES).jpg","Ninja_Gaiden_II-_The_Dark_Sword_of_Chaos_boxart.jpg","Ninja_Gaiden_III_The_Ancient_Ship_of_Doom.jpg","250px-Ninja_shadow_of_darkness_cover.jpg","Outlast_cover.jpg","OutlastWhistleblowerDLC.jpg","250px-Pandemonium_box.jpg","Parasite_Eve_Coverart.png","Parasite_Eve_II_Coverart.png","Pepsiman.jpg","Pikmin_cover_art.jpg","250px-PlantsVsZombiesCover400ppx.png","Pokemon_FireRed_Coverart.png","Pokemon_Ruby_NA.jpg","256px-Portal_standalonebox.jpg","Portal2cover.jpg","RaymanJungleRun.jpg","Rayman_Legends_Box_Art.jpg","Rayman_Origins_Box_Art.jpg","256px-Red_Dead_Redemption.jpg","250px-Resident_Evil_1_cover_art.jpg","250px-Resident_Evil_2.jpg","250px-Resident_Evil_3_Cover.jpg","250px-Resi4-gc-cover.jpg","250px-Resident_Evil_5_Box_Artwork.jpg","Resident_Evil_6_Cover_Art.png","610963-resident_evil_code_veronica_x_large.jpg","33676_Resident_Evil_0_HD_Remaster.jpg","250px-Resident_evil_rev._2012_Capcom.png","ResidentEvilRevelations2.jpg","250px-ResidentEvil_Survivor_front.jpg","250px-REDC_Cover.jpg","Resident_evil_the_umbrella_chronicles_uscover.jpg","250px-Rise_of_the_Tomb_Raider.jpg","250px-Rival_Schools_cover.jpg","250px-RuleofRose.jpg","1094259-foto_saint_seiya__knights_of_the_zodiac___the_sanctuary_large.jpg","Shadow_Complex_cover.jpg","Sotc_boxart.jpg","250px-Silent_Hill_video_game_cover.png","250px-Silent_Hill_2.jpg","250px-Sh3_boxart.jpg","250px-Silent2002.jpg","Silent_Hill_Origins.jpg","256px-Siren_art_box.jpg","260px-Sleeping_Dogs_-_Square_Enix_video_game_cover.jpg","sonicandknuckles.jpg","256px-SEGA_Racing.jpg","250px-Sonic_Generations_Logo.jpg","250px-Sonic1_box_usa.jpg","250px-Sonic2_European_Box.jpg","Sonic3-box-us-225.jpg","250px-Sonic_4_Logo.png","SonictheHedgehog4pisode292x136.jpg","SouthParkTheStickOfTruth.jpg","256px-Smboxpsx.jpg","Spider-Man_2_Coverart_PC.png","Spider-Man_2_-_Enter_Electro_Coverart.png","SpongeBob_SquarePants_Planktons_Robotic_Revenge_NA_game_cover.jpg","250px-Spyro_Orange_-_The_Cortex_Conspiracy_Coverart.png","Spyro_the_Dragon.jpg","Spyro-year_of_the_dragon.png","250px-StarCraft_box_art.jpg","StarCraft_II_-_Box_Art.jpg","250px-Street_Fighter_game_flyer.png","Street_Fighter_Alpha_2_flyer.png","Street_Fighter_Alpha_3_flyer.png","Street_Fighter_Alphawd_flyer.png","StreetFighterEXPlusAlpha_large.png","StreetFighterEXPlus.JPG","9640-streetfighter-ii-wii_large.jpg","Street_Fighter_III_3rd_Strike_(flyer).png","StreetFighter-X-Tekken_box_art.jpg","250px-Super.Bomberman.Box.Art.SNES.PAL.png","250px-Bomberman2SNES_boxart.JPG","Superbomberman3boxart.jpg", "Super_bomberman_4.jpeg","200px-SuperBomberman5.jpg","Super_Mario_64_box_cover.jpg","250px-Super_Mario_Bros._box.png","250px-Super_Mario_Bros_2.jpg","250px-Super_Mario_Bros._3_coverart.png","250px-Mariobros2japanbox.jpg","250px-SuperMarioGalaxy.jpg","Super_Mario_Galaxy_2_Box_Art.jpg","250px-Supermariokart_box.JPG","256px-SuperMarioRPGSNESCoverArtUS.jpg","250px-Super_Mario_World_Coverart.png","Yisland_box.jpg","250px-Smetroidbox.jpg","250px-Supersmashbox.jpg","250px-SSBB_Cover.jpg","250px-Super_Smash_Bros_Melee_Players_Ch.jpg","SuperSF4.jpg","36980_Table_Top_Racing_World_Tour.jpg","1791096-box_Tekken_large.png","256px-Tekken2_1995.jpg","256px-T3usposter.jpg","250px-Tekken_4_Coverart.png","256px-Tekken5Cover.jpg","Tekken6cover.jpg","The_Amazing_Spider_Man_2012_video_game_cover.jpg","The_Evil_Within_logo.jpg","1790006-box_hotd_large.png","250px-House_Of_The_Dead_2Thelogo.png","The_House_of_the_Dead_III_Poster.png","The_House_of_the_Dead_Overkill_USA.jpg","Jungle_Book_game_cover.jpg","The_King_of_Fighters_94_-_poster.jpg","KOF95_flyer.jpg","250px-The_King_of_Fighters_99_-_poster.jpg","The_King_of_Fighters_XII_(flyer).jpg","250px-Kofxiiips3.jpg","TheLastofUsRemastered.jpg","The-last-of-us-cover.png","256px-Legend_of_Dragoon.jpg","250px-Zelda_SNES.jpg","The_Lion_King_Coverart.png","256px-The_Lost_Vikings_SNES_cover.jpg","The_Simpsons_Game_XBOX_360_Cover.jpg","256px-Bustingoutbox.jpg","TheSmurfs2.jpg","The_Urbz_-_Sims_in_the_City_Coverart.png","The_Walking_Dead-game-cover.jpg","This_War_of_Mine_header.jpg","2248655-twa_poster_large.png","2248655-twa_poster_large.png","1548823-tomandjerrysnes_large.jpg","256px-GR_Future_Soldier_360.jpg","Tom_Clancys_Splinter_Cell_Blacklist_box_art.png","Tom_Clancys_Splinter_Cell_Conviction.jpg","256px-Tr2011cover.jpg","250px-Top_Gear_Coverart.png","Toystory264.jpg","255px-Toy_Story_3_Cover_Art.jpg","Trine.png","UMvC3_Cover.jpg","Ultimate_MK3.png","Uncharted_Drakes_Fortune.jpg","Uncharted_2_updated_PS3_logo.jpg","Uncharted_3_Boxart.jpg","Up_video_game.jpg","250px-Vagrantstorybox.jpg","header_292x136.jpg","Warcraft_-_Orcs_and_Humans_Coverart.png","250px-Wario_Land_4_Coverart.jpg","250px-XCOM_Enemy_Unknown_Game_Cover.jpg","250px-XenobladeBox.png","Xenogears_box.jpg","256px-Xmenvsstreetfighter_title.png","You_Must_Build_A_Boat_header.jpg","ZombiU_Box_Art_(Final).jpg"];
  arrayImages = ["galeria-01.jpg","galeria-02.jpg","galeria-03.jpg"];
  $("#total").html("Total:"+$("#games-list tr:visible").length);
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
  $("tbody#games-list td").mouseout(function () {
    $("img#cover").hide();
  });
});

/////make the table filter///////////////////////////////////////////////////////
$(function(){
  $("#tabela select").on("change", function(){
	$("#tabela tbody tr").show(); 
	
	//if($(this).val() != "All")
	//{
		var index = $(this).parent().index();
		var nth = "#tabela td:nth-child("+(index+1).toString()+")";
		$(nth).attr("valor", $(this).val().toUpperCase());
		
	
		for(var i=1; i<=4;i++) {
		$("#tabela td:nth-child("+i+")").each(function(){
			if($(this).attr("valor") != "ALL")
			{
				if($(this).attr("valor"))
				if($(this).text().toUpperCase() != $(this).attr("valor").toUpperCase())//indexOf($(this).attr("valor")) < 0)
					$(this).parent().hide();
			
		} else {
			//$("#debug").text("deu");
			$("#tabela td:nth-child("+i+")").parent().show();
		}
		});}
	//}
	$("#total").html("Total:"+$("#games-list tr:visible").length);
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
var countPC = 0;
var countWii = 0;
var countXbox = 0;
var countXbox360 = 0;
var countPlaystation1 = 0;
var countPlaystation2 = 0;
var countPlaystation4 = 0;
var countSupernes = 0;
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
  });
  $("#tabela tbody tr").show();
  countTotal = countXbox360+countSupernes+countPlaystation1+countPlaystation2+countPlaystation4+countArcade+countAndroid+countXbox+countWii+countNes+countNeoGeo+countNintendo64+countNintendoDs+countGameBoyAdvance+countGameCube+countPC+countMegaDrive;
  $("#total-arcade").html(countArcade);
  $("#total-android").html(countAndroid);
  $("#total-gameboyadvance").html(countGameBoyAdvance);
  $("#total-gamecube").html(countGameCube);
  $("#total-megadrive").html(countMegaDrive);
  $("#total-neogeo").html(countNeoGeo);
  $("#total-nes").html(countNes);
  $("#total-nintendo64").html(countNintendo64);
  $("#total-nintendods").html(countNintendoDs);
  $("#total-pc").html(countPC);
  $("#total-wii").html(countWii);
  $("#total-xbox").html(countXbox);
  $("#total-xbox360").html(countXbox360);
  $("#total-playstation1").html(countPlaystation1);
  $("#total-playstation2").html(countPlaystation2);
  $("#total-playstation4").html(countPlaystation4);
  $("#total-supernes").html(countSupernes);
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
  ///////////////////////////////////////////////////////////////////////////////////
});
