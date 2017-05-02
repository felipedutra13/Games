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
		xmlhttp.open("GET", "_php/teste.php?status="+statusGame+"&name="+name+"&genre="+genre+"&plattform="+plattform, true);
		xmlhttp.send();
		///////////////////////////////////
	});
});
