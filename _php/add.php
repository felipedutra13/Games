<?php
	////Faz a conexão com o banco
	$conecta = mysqli_connect("127.0.0.1", "root", "") or print (mysqli_error()); 
	mysqli_select_db($conecta, "games") or print(mysqli_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	
	$option = $_POST["type"];
	if($option == "english")
	{
		$question = $_POST["question"];
		$answer = $_POST["answer"];
		$query = "INSERT INTO `$option` VALUES('$question','$answer','n');";
		
			////executa a query no banco
		$result = mysqli_query($conecta, $query); 
		/////fecha a conexão
		mysqli_close($conecta); 
		
		header("location:../_games/english.php");
	}
	else if($option == "delete")
	{
		$question = $_POST["question"];
		$query = "DELETE FROM `english` WHERE `question`='$question';";
		
			////executa a query no banco
		$result = mysqli_query($conecta, $query); 
		/////fecha a conexão
		mysqli_close($conecta); 
		
		header("location:../_games/english.php");
	}
	else {
		$name = str_replace("'", "''", $_POST["name"]);
		$platform = $_POST["platform"];
		$genre = $_POST["genre"];
		$status = $_POST["status"];
		$image = $_POST["image"];
		$query = "INSERT INTO `$option` VALUES('$name','$platform','$genre','$status','$image');";
		echo $query;
		
			////executa a query no banco
		$result = mysqli_query($conecta, $query); 
		/////fecha a conexão
		mysqli_close($conecta); 
		
		header("location:../sql.php");
	}
?>