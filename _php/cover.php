<?php
	////Faz a conexão com o banco
	$conecta = mysqli_connect("127.0.0.1", "root", "") or print (mysqli_error()); 
	mysqli_select_db($conecta, "games") or print(mysqli_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = $_GET["name"];
	$option = $_GET["option"];
			
	$query = "SELECT `image` FROM `$option` WHERE `name`='$name';";
	////executa a query no banco
	$result = mysqli_query($conecta, $query);
	if($result != false)
		while($consulta = mysqli_fetch_array($result)) { 
			echo "$consulta[image]";
		}
	/////fecha a conexão
	mysqli_close($conecta); 
	
?>