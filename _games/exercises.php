<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$option = $_GET["option"];
	$questions = "";
	$answers = "";
	
	if($option == "grammar1" || $option == "grammar2")
		$query = "SELECT `question`, `answer` FROM `english` WHERE `type`='grammar' AND `sorted`='n' ORDER BY RAND() LIMIT 10;";
	else $query = "SELECT `question`, `answer` FROM `english` WHERE `type`='exercise' AND `sorted`='n' ORDER BY RAND() LIMIT 10;";
	////executa a query no banco
	$result = mysql_query($query, $conecta);
	if(mysql_num_rows($result) == 0){
		if($option == "grammar1" || $option == "grammar2")
			$query3 = "UPDATE `english` SET `sorted`='n' WHERE `type`='grammar'";
		else $query3 = "UPDATE `english` SET `sorted`='n' WHERE `type`='exercise'";
		$result3 = mysql_query($query3, $conecta);
	}
	while($consulta = mysql_fetch_array($result)) {
		$tmp = str_replace("'", "''", "$consulta[question]");
		$query2 = "UPDATE `english` SET `sorted`='y' WHERE `question`='$tmp';";
		$result2 = mysql_query($query2, $conecta);
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
	mysql_close($conecta); 
?>