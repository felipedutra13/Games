<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = $_GET["name"];
	$option = $_GET["option"];
			
	$query = "SELECT `image` FROM `$option` WHERE `name`='$name';";
	////executa a query no banco
	$result = mysql_query($query, $conecta);
	if($result != false)
		while($consulta = mysql_fetch_array($result)) { 
			echo "$consulta[image]";
		}
	/////fecha a conexão
	mysql_close($conecta); 
	
?>