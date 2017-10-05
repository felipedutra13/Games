<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	////escreve a query
	$games = "";
	$totalDlc = "";
	$query = "SELECT SUM(`total`) as `total` FROM(SELECT COUNT(`plattform`) as `total`, `plattform` FROM `games` WHERE `status`='Completed' GROUP BY `plattform` UNION ALL SELECT COUNT(`plattform`) as `total`, `plattform` FROM `dlc` WHERE `status`='Completed' GROUP BY `plattform`) `t` GROUP BY `plattform`;";
	////executa a query no banco
	$result = mysql_query($query, $conecta);
	while($consulta = mysql_fetch_array($result)) {
		$games .= "$consulta[total]|";
	}
	
	$query = "SELECT COUNT(`plattform`) as `total` FROM `dlc` WHERE `status`='Completed';";
	////executa a query no banco
	$result = mysql_query($query, $conecta);
	while($consulta = mysql_fetch_array($result)) {
		$games .= "_ $consulta[total]";
	}
	echo $games;
	/////fecha a conexão
	mysql_close($conecta); 
?>