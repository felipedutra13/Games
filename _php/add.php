<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$type = $_POST["type"];
	$name = $_POST["name"];
	$platform = $_POST["platform"];
	$genre = $_POST["genre"];
	$status = $_POST["status"];
	$image = $_POST["image"];
	
	//echo "$name, $genre, $status, $image";
	
	////escreve a query
	if($type == "Game")
		$query = "INSERT INTO `games` VALUES(NULL, '$name','$platform','$genre','$status','$image');";
	else if($type == "Co-op")
		$query = "INSERT INTO `coop` VALUES('$name','$platform','$genre', '$image');";
	else if($type == "Movie")
		$query = "INSERT INTO `movies` VALUES('$name', '$genre','$status','$image');";
	else if($type == "Serie")
		$query = "INSERT INTO `series` VALUES('$name', '$genre','$status','$image');"; 
	else if($type == "Book")
		$query = "INSERT INTO `books` VALUES('$name', '$genre','$status','$image');"; 
	
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	/////fecha a conexão
	mysql_close($conecta); 
	
	header("location:../sql.php");
?>