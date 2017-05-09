<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = $_GET["name"];
	$edition = $_GET["edition"];
	
	$edition += 1;
			
	$query = "UPDATE `hqs` SET `edition`='$edition' where `name`='$name';";
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	echo $edition;
	/////fecha a conexão
	mysql_close($conecta); 
	
?>