<?php
	////Faz a conexão com o banco
	$conecta = mysqli_connect("127.0.0.1", "root", "") or print (mysqli_error()); 
	mysqli_select_db($conecta, "games") or print(mysqli_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$query = $_POST["sql"];

	////executa a query no banco
	$result = mysqli_query($conecta, $query); 
	/////fecha a conexão
	mysqli_close($conecta); 
	
	header("location:../sql.php");
?>