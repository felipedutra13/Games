<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = str_replace("'", "''", $_GET["name"]);
	$status = $_GET["status"];
	$genre = $_GET["genre"];
	$plattform = $_GET["plattform"];
	
	//echo "$name e $status e $genre e $plattform";
	
	if($status == "Backlog")
		$newStatus = "Playing";
	elseif ($status == "Playing")
		$newStatus = "Completed";
	elseif ($status == "Completed")
		$newStatus = "Backlog";
	else $newStatus = "Backlog";
		
	$query = "UPDATE `games` SET `status`='$newStatus' where `name`='$name' AND `plattform`='$plattform';";
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	echo "$newStatus";
	/////fecha a conexão
	mysql_close($conecta); 
	
?>