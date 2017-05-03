<?php
	////Faz a conexão com o banco
	$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
	mysql_select_db("games", $conecta) or print(mysql_error()); 
	///////////////////////////////
	
	////Pega os dados do formulário
	$name = $_GET["name"];
	$status = $_GET["status"];
	$genre = $_GET["genre"];
	$originalName = $name;
	$newName = $name;
	
	//echo "$name e $status e $genre e $plattform";
	
	$newStatus = "Watched";
	if($status == "Backlog")
		$newStatus = "Watching";
	elseif ($status == "Watching")
		$newStatus = "Watched";
	elseif ($status == "Watched"){
				if(strpos($name, 'Season') !== false)
				{
					$newStatus = "Backlog";
					$index = strpos($name, 'Season');
					$season = substr($name, $index+7, -1);
					$season += 1;
					$name = substr($name, 0, $index-2);
					$newName = "$name (Season $season)";
					$query = "UPDATE `series` SET `name`='$newName' where `name`='$originalName';";
					$result = mysql_query($query, $conecta); 
				}
					
	}
		
		
	$query = "UPDATE `series` SET `status`='$newStatus' where `name`='$newName';";
	////executa a query no banco
	$result = mysql_query($query, $conecta); 
	echo $newName."#".$newStatus;
	/////fecha a conexão
	mysql_close($conecta); 
	
?>