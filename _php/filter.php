<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = $_GET["name"];
	$status = $_GET["status"];
	$genre = $_GET["genre"];
	$plattform = $_GET["plattform"];
	$option = $_GET["option"];
	
	if($name == "")
		$newName = "%";
	else $newName = "%" . $name . "%";
	if($status == "All")
		$status = "%";
	if($genre == "All" || $genre == "")
		$genre = "%";
	if($plattform == "All" || $plattform == "")
		$plattform = "%";
	
	if($option == "games" || $option == "dlc"){
		$query = "SELECT * FROM `$option` WHERE `name` like ('$newName') AND `genre` like ('$genre') AND `plattform` like ('$plattform') AND `status` like ('$status') ORDER BY `name`;";
		//echo $query;
		////executa a query no banco
		$result = mysql_query($query, $conecta); 
		while($consulta = mysql_fetch_array($result)) {
			echo "<tr class='$option'><td><a>$consulta[name]</a></td><td>$consulta[plattform]</td><td>$consulta[genre]</td><td>$consulta[status]</td></tr>";
		}
	}
	else {
		$query = "SELECT * FROM `$option` WHERE `name` like ('$newName') AND `genre` like ('$genre') AND `status` like ('$status') ORDER BY `name`;";
		////executa a query no banco
		$result = mysql_query($query, $conecta); 
		while($consulta = mysql_fetch_array($result)) { 
			echo "<tr class='$option'><td><a>$consulta[name]</a></td><td>$consulta[genre]</td><td>$consulta[status]</td></tr>";
		}
	}
	/////fecha a conexão
	mysql_close($conecta); 
	
?>