$(function () {
	$(".jogos").click(function () {
		var name = $("a", this).html();
		var plattform = $("td:nth-child(2)", this).html();
		var genre = $("td:nth-child(3)", this).html();
		var statusGame = $("td:nth-child(4)", this).html();
		
		var toUpdate = $("td:nth-child(4)", this);
		
		
		//////try to make the request
		var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                toUpdate.html(this.responseText);
            }
        };
		xmlhttp.open("GET", "_php/updateGame.php?status="+statusGame+"&name="+name+"&genre="+genre+"&plattform="+plattform, true);
		xmlhttp.send();
		///////////////////////////////////
	});
	
		$(".series").click(function () {
			var name = $("a", this).html();
			var genre = $("td:nth-child(2)", this).html();
			var statusSerie = $("td:nth-child(3)", this).html();
			
			var toUpdateName = $("td:nth-child(1) a", this);
			var toUpdateStatus = $("td:nth-child(3)", this);
			
			
			//////try to make the request
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					//toUpdate.html(this.responseText);
					var data = xmlhttp.responseText.split("#");
					var name = decodeURIComponent(data[0]);
					var newStatus = decodeURIComponent(data[1]);
					toUpdateName.html(name);
					toUpdateStatus.html(newStatus);
				}
			};
			xmlhttp.open("GET", "_php/updateSerie.php?status="+statusSerie+"&name="+name+"&genre="+genre, true);
			xmlhttp.send();
			///////////////////////////////////
	});
	
		$(".movies").click(function () {
			var name = $("a", this).html();
			var genre = $("td:nth-child(2)", this).html();
			var statusMovie = $("td:nth-child(3)", this).html();
			
			var toUpdate = $("td:nth-child(3)", this);
			
			
			//////try to make the request
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					toUpdate.html(this.responseText);
				}
			};
			xmlhttp.open("GET", "_php/updateMovie.php?status="+statusMovie+"&name="+name+"&genre="+genre, true);
			xmlhttp.send();
			///////////////////////////////////
	});
	
			$(".hqs").click(function () {
					var name = $("a", this).html();
					var edition = $("td:nth-child(2)", this).html();
					var statusHqs = $("td:nth-child(3)", this).html();
					
					var toUpdate = $("td:nth-child(2)", this);
					
					
					//////try to make the request
					var xmlhttp = new XMLHttpRequest();
					xmlhttp.onreadystatechange = function() {
						if (this.readyState == 4 && this.status == 200) {
							toUpdate.html(this.responseText);
						}
					};
					xmlhttp.open("GET", "_php/updateHqs.php?status="+statusHqs+"&name="+name+"&edition="+edition, true);
					xmlhttp.send();
					///////////////////////////////////
			});
});
