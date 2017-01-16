<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = $_POST["name"];
	$song = $_POST["song"];
	
	////escreve a query
	$query = "INSERT INTO `songs` VALUES(NULL, '$name', '$song');"; 
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	/////fecha a conexão
	mysql_close($conecta); 
	
	header("location:../gera.html");
	
	//echo "Obrigado pela confirmação!"
?>