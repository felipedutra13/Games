<?php
	////Faz a conexão com o banco
	$conecta = mysqli_connect("127.0.0.1", "root", "") or print (mysqli_error()); 
	mysqli_select_db($conecta, "games") or print(mysqli_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$option = $_GET["option"];
	$questions = "";
	$answers = "";
	
	$query = "SELECT `question`, `answer` FROM `english` WHERE `sorted`='n' ORDER BY RAND() LIMIT 10;";

	////executa a query no banco
	$result = mysqli_query($conecta, $query);
	if(mysqli_num_rows($result) == 0){
		$query3 = "UPDATE `english` SET `sorted`='n'";
		$result = mysqli_query($conecta, $query3);
	}
	while($consulta = mysqli_fetch_array($result)) {
		$tmp = str_replace("'", "''", "$consulta[question]");
		$query2 = "UPDATE `english` SET `sorted`='y' WHERE `question`='$tmp';";
		$result2 = mysqli_query($conecta, $query2);
		if($option == "grammar2"){
			$answers .= "$consulta[question]|";
			$questions .= "$consulta[answer]|";
		}
		else{
			$questions .= "$consulta[question]|";
			$answers .= "$consulta[answer]|";
		}
	}
	echo $questions . "=" . $answers;
	/////fecha a conexão
	mysqli_close($conecta); 
?>