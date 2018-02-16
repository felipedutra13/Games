////control the right click
$(function() {
	$("#options").mouseleave(function () {
		$("#options").hide();
	});
	$("#options").hide();
	$("#platformOptions").hide();
	$("#genreOptions").hide();
	$("#statusOptions").hide();
});

var name = "";
var plattform = "%";
var genre = "";
var statusGame = "";
var typeOption = "";
var count = 0;

function setMenu(){
	$(".games").click(function(e) {
		name = $("a", this).html();
		plattform = $("td:nth-child(2)", this).html();
		genre = $("td:nth-child(3)", this).html();
		statusGame = $("td:nth-child(4)", this).html();
		typeOption = "games";
		$("#options").show();
		$("#options").css("top", e.pageY);
		$("#options").css("left", e.pageX);
	});
	
	$(".dlc").click(function(e) {
		name = $("a", this).html();
		plattform = $("td:nth-child(2)", this).html();
		genre = $("td:nth-child(3)", this).html();
		statusGame = $("td:nth-child(4)", this).html();
		typeOption = "dlc";
		$("#options").show();
		$("#options").css("top", e.pageY);
		$("#options").css("left", e.pageX);
	});
	
	$(".series").click(function(e) {
		name = $("a", this).html();
		console.log("name: "+name);
		genre = $("td:nth-child(2)", this).html();
		statusGame = $("td:nth-child(3)", this).html();
		typeOption = "series";
		$("#options").show();
		$("#options").css("top", e.pageY);
		$("#options").css("left", e.pageX);
	});
	
	$(".movies").click(function(e) {
		name = $("a", this).html();
		genre = $("td:nth-child(2)", this).html();
		statusGame = $("td:nth-child(3)", this).html();
		typeOption = "movies";
		$("#options").show();
		$("#options").css("top", e.pageY);
		$("#options").css("left", e.pageX);
	});
		
		////delete the game
		$("#delete").click(function() {
			$("#options").hide();
			$("body").append("<div id='confirm'><h3>Delete "+name+" ?</h3><button id='confirmDelete'>Delete</button><button class='cancel'>Cancel</button></div>");
			$("#confirm").addClass("confirm");
			
			$("#confirmDelete").click(function () {
				//////try to make the request
				var xmlhttp = new XMLHttpRequest();
				xmlhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200 && count == 0) {
						count++;
						$("#confirm").remove();
						initialFilter(typeOption);
					}
				};
				count = 0;
				xmlhttp.open("GET", "_php/update.php?name="+name+"&platform="+plattform+"&option=delete&type="+typeOption, true);
				xmlhttp.send();
				///////////////////////////////////
			});
			$(".cancel").click(function () {
				$("#confirm").remove();
			});
		});
		
		////change the name
		$("#changeName").click(function () {
			$("#options").hide();
			$("body").append("<div id='confirm'><input id='newName' type='text' value=\""+name+"\"/><button id='confirmChanging'>Change</button><button class='cancel'>Cancel</button></div>");
			$("#confirm").addClass("confirm");
			
			$("#confirmChanging").click(function () {
				var newName = $("#newName").val();
				//////try to make the request
				var xmlhttp = new XMLHttpRequest();
				xmlhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200 && count == 0) {
						$("#confirm").remove();
						initialFilter(typeOption);
						count++;
					}
				};
				count = 0;
				xmlhttp.open("GET", "_php/update.php?name="+name+"&newName="+newName+"&platform="+plattform+"&option=changeName&type="+typeOption, true);
				xmlhttp.send();
				///////////////////////////////////
			});
			$(".cancel").click(function () {
				$("#confirm").remove();
			});		
		});
		
		////show the submenu
		$("#updateStatus").mouseover(function () {
			$("#statusOptions").show();
		});
		
		////hide the submenu
		$("#updateStatus").mouseout(function () {
			$("#statusOptions").hide();
		});
		////update the status of the game
		$("#updateStatus li").click(function () {
			$("#options").hide();
			var newStatus = $(this).text();
			//////try to make the request
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200 && count == 0) {
					initialFilter(typeOption);
					count++;
					$("#test").html(this.responseText);
				}
			};
			count = 0;
			name = name.replace("&amp;", "%26");
			xmlhttp.open("GET", "_php/update.php?status="+newStatus+"&name="+name+"&platform="+plattform+"&option=updateStatus&type="+typeOption, true);
			xmlhttp.send();
			///////////////////////////////////
		});
		
		////show the submenu
		$("#changePlatform").mouseover(function () {
			$("#platformOptions").show();
		});
		
		////hide the submenu
		$("#changePlatform").mouseout(function () {
			$("#platformOptions").hide();
		});
		////change the platform game
		$("#platformOptions li").click(function () {
			var newPlatform = $(this).text();
			$("#options").hide();
			//////try to make the request
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200 && count == 0) {
					initialFilter(typeOption);
					count++;
				}
			};
			count = 0;
			xmlhttp.open("GET", "_php/update.php?name="+name+"&newPlatform="+newPlatform+"&platform="+plattform+"&option=changePlatform&type="+typeOption, true);
			xmlhttp.send();
			///////////////////////////////////
		});
		
		////show the submenu
		$("#changeGenre").mouseover(function () {
			$("#genreOptions").show();
		});
		
		////hide the submenu
		$("#changeGenre").mouseout(function () {
			$("#genreOptions").hide();
		});
		////change the genre game
		$("#genreOptions li").click(function () {
			var newGenre = $(this).text();
			$("#options").hide();
			//////try to make the request
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200 && count == 0) {
					initialFilter(typeOption);
					count++;
				}
			};
			count = 0;
			xmlhttp.open("GET", "_php/update.php?name="+name+"&newGenre="+newGenre+"&platform="+plattform+"&option=changeGenre&type="+typeOption, true);
			xmlhttp.send();
			///////////////////////////////////
		});
}