////make the filter for the games
$(function(){
	  covers();
	  //////filter
	  $("#tabela select").on("change", auxGame);  
	  $("#nameFilter").keyup(auxGame);
	  $("#tabela-dlc select").on("change",auxDlc);
	  $("#nameFilterDlc").keyup(auxDlc);
	  $("#tabela-series select").on("change", auxSeries);  
	  $("#tabela-series #nameFilter").keyup(auxSeries);
	  $("#tabela-movies select").on("change", auxMovies);  
	  $("#tabela-movies #nameFilter").keyup(auxMovies);
	  $("#tabela-books select").on("change", auxBooks);  
	  $("#tabela-books #nameFilter").keyup(auxBooks);
	  $("#tabela-hqs select").on("change", auxHqs);  
	  $("#tabela-hqs #nameFilter").keyup(auxHqs);
	  $("#tabela-hqs #genero").keyup(auxHqs);
	  
	  function auxGame(){
		  makeFilter("games");
	  }
	  function auxDlc() {
		  makeFilter("dlc");
	  }
	  function auxSeries() {
		  makeFilter("series");
	  }
	  function auxMovies() {
		  makeFilter("movies");
	  }
	  function auxBooks() {
		  makeFilter("books");
	  }
	  function auxHqs() {
		  makeFilter("hqs");
	  }
	  ///////////////////////
	  
});

/////make the filter
function makeFilter(option) {
		////apaga a lista
		if(option == "dlc"){
			$(".dlc").remove();
			////Pega os valores
			var name = $("#nameFilterDlc").val();
			var plattform = $("#plataformaDlc").val();
			var genre = $("#generoDlc").val();
			var statusGame = $("#statusDlc").val();
		}	
		else {
			$(".games").remove();
			$(".movies").remove();
			$(".series").remove();
			$(".books").remove();
			$(".hqs").remove();
			var name = $("#nameFilter").val();
			if(option == "games")
				var plattform = $("#plataforma").val();
			else var plattform = "";
			var genre = $("#genero").val();
			var statusGame = $("#status").val();
		}	
		//////try to make the request
		var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
				if(option == "dlc"){
					$("#games-dlc-list").append(this.responseText);
					$("#total-dlc").html("Total:"+$("#games-dlc-list tr").length);
				}
				else {
					$("#games-list").append(this.responseText);
					$("#total").html("Total:"+$("#games-list tr").length);
				}     
				covers();
				setMenu();
            }
        };
		xmlhttp.open("GET", "_php/filter.php?status="+statusGame+"&name="+name+"&genre="+genre+"&plattform="+plattform+"&option="+option, true);
		xmlhttp.send();
}

////change de covers
function covers() {
	$(".games a").mouseover(function () {
		var name = $(this).html();
		changeCover("games", name);
	});
	$(".dlc a").mouseover(function () {
		var name = $(this).html();
		changeCover("dlc", name);
	});
	$(".series a").mouseover(function () {
		var name = $(this).html();
		changeCover("series", name);
	});
	$(".movies a").mouseover(function () {
		var name = $(this).html();
		changeCover("movies", name);
	});
	$(".books a").mouseover(function () {
		var name = $(this).html();
		changeCover("books", name);
	});
	$(".hqs a").mouseover(function () {
		var name = $(this).html();
		changeCover("hqs", name);
	});
	
	function changeCover(option, name){
		var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
				$("img#cover").attr("src", this.responseText);
				$("img#cover").show();
            }
        };
		xmlhttp.open("GET", "_php/cover.php?name="+name+"&option="+option, true);
		xmlhttp.send();
	}	
		
	//hide the cover
	$("a").mouseout(function () {
		$("img#cover").hide();
	});
}

function initialFilter(typeOption) {
	////Pega os valores
	$(".games").remove();
	$(".series").remove();
	$(".movies").remove();
	var name = $("#nameFilter").val();
	var plattform = $("#plataforma").val();
	var genre = $("#genero").val();
	var statusGame = $("#status").val();

	//////try to make the request
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			$("#games-list").append(this.responseText);
			$("#total").html("Total:"+$("#games-list tr").length);
			setMenu();
		}
	};
	xmlhttp.open("GET", "_php/filter.php?status="+statusGame+"&name="+name+"&genre="+genre+"&plattform="+plattform+"&option="+typeOption, true);
	xmlhttp.send();
	///////////////////////////////////
}