<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = str_replace("'", "''", $_GET["name"]);
	$status = $_GET["status"];
	$genre = $_GET["genre"];
	
	//echo "$name e $status e $genre e $plattform";
	
	if($status == "Backlog")
		$newStatus = "Watching";
	elseif ($status == "Watching")
		$newStatus = "Watched";
	//elseif ($status == "Watched")
		//$newStatus = "Backlog";
		
	$query = "UPDATE `movies` SET `status`='$newStatus' where `name`='$name';";
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	echo "$newStatus";
	/////fecha a conexão
	mysql_close($conecta); 
	
?>