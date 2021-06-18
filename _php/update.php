<?php
	////Faz a conexão com o banco
	$conecta = mysqli_connect("127.0.0.1", "root", "") or print (mysqli_error()); 
	mysqli_select_db($conecta, "games") or print(mysqli_error()); 
	///////////////////////////////
	////Pega os dados do formulário
	$name = str_replace("'", "''", $_GET["name"]);
	echo $name;
	$platform = isset($_GET["platform"]) ? $_GET["platform"] : "%";
	$status = isset($_GET["status"])? $_GET["status"] : "";
	$newName = isset($_GET["newName"])? str_replace("'", "''", $_GET["newName"]) : "";
	$newPlatform = isset($_GET["newPlatform"])? $_GET["newPlatform"] : "";
	$newGenre = isset($_GET["newGenre"])? str_replace("'", "''", $_GET["newGenre"]) : "";
	$option = $_GET["option"];
	$type = $_GET["type"];

	if($option == "completeFullGame")
		$query = "UPDATE `$type` SET `fullGame`='check' WHERE `name`='$name' AND `plattform` like ('$platform');";
	if($option == "delete")
		$query = "UPDATE `$type` SET `status`='Retired' WHERE `name`='$name' AND `plattform` like ('$platform');";
	elseif ($option == "changeName")
		$query = "UPDATE `$type` SET `name`='$newName' WHERE `name`='$name' AND `plattform` like ('$platform');";
	elseif ($option == "changePlatform")
		$query = "UPDATE `$type` SET `plattform`='$newPlatform' WHERE `name`='$name' AND `plattform` like ('$platform');";
	elseif ($option == "changeGenre")
		$query = "UPDATE `$type` SET `genre`='$newGenre' WHERE `name`='$name' AND `plattform` like ('$platform');";
	elseif ($option == "updateStatus"){
		if($type != "series" || $status != "Backlog")
			$query = "UPDATE `$type` SET `status`='$status' WHERE `name`='$name' AND `plattform` like ('$platform');";
		elseif(strpos($name, 'Season') !== false){
					$index = strpos($name, 'Season');
					$season = substr($name, $index+7, -1);
					$season += 1;
					$newName = substr($name, 0, $index-2) . " (Season $season)";
					$query = "UPDATE `series` SET `name`='$newName' where `name`='$name';";
					$result = mysqli_query($conecta, $query);
					$query = "UPDATE `$type` SET `status`='$status' WHERE `name`='$newName' AND `plattform` like ('$platform');";
		}
		else $query = "UPDATE `$type` SET `status`='$status' WHERE `name`='$name' AND `plattform` like ('$platform');";
	}
	////executa a query no banco
	$result = mysqli_query($conecta, $query); 
	/////fecha a conexão
	mysqli_close($conecta); 
	
?>