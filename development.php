<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>Development</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/games.css"/>
  <link rel="stylesheet" type="text/css" href="_css/development.css"/>
  <link rel="shortcut icon" href="_imagens/icone.png"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
  <script src="_javascript/development.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/mario-home.png"/>

      <nav id="menu">
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('mario-home.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('mario-home.png')"><a href="games.php">Games</a></li>
			  <li onmouseover="mudaFoto('coop.png')" onmouseout="mudaFoto('mario-home.png')"><a href="coop.php">Co-op</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('mario-home.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('mario-home.png')"><a href="movies.php">Movies</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('mario-home.png')"><a href="books.php">Books</a></li>
			  <li onmouseover="mudaFoto('hqs.png')" onmouseout="mudaFoto('mario-home.png')"><a href="hqs.php">HQs</a></li>
			  <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('mario-home.png')"><a href="development.php">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('mario-home.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('mario-home.png')"><a href="songs.php">Songs</a></li>
			  <li onmouseover="mudaFoto('sql.png')" onmouseout="mudaFoto('mario-home.png')"><a href="sql.php">SQL</a></li>
            </ul>
          </li>
        </ul>
      </header>

      <section id="corpo-full">
        <article id="noticiaprincipal">
          <header id="cabecalho-artigo">
            <hgroup>
              <h3>Home > Development</h3>
              <h1>Development</h1>
              <h2>by Felipe Dutra</h2>
              <h3 class="direita">Updated at June/17/2016</h3>
            </hgroup>
          </header>
        </article>
      </section>
	  
	  <table id="tabela-games">
        <thead>
          <caption>GAMES</caption>
		  <tr><th>Name</th></tr>
        </thead>
        <tbody>	
			<tr><td><a href="_games/Memory Game/index.html" target="_blank">Memory Game</a></td></tr>
			<tr><td><a href="_games/Pong/pong.html" target="_blank">Pong</a></td></tr>
			<tr><td><a href="_games/lyrics.html" target="_blank">Lyrics</a></td></tr>
			<tr><td><a href="_games/english.php" target="_blank">English</a></td></tr>
        </tbody>
      </table>
	  
      <table id="tabela">
        <thead>
          <caption>SKILLS</caption>
          <tr><th>Skill</th><th>Type</th><th>Status</th></tr>
          <tr>
		  
            <th><input type="text" id="nameFilter"/></th>
			<th><select id="type">
				  <option value="All">All</option>
				  <option value="Language">Language</option>
				  <option value="Database">Database</option>
				</select></th>
            <th><select id="status">
				  <option value="All">All</option>
				  <option value="Basic">Basic</option>
				  <option value="Advanced">Advanced</option>
				  <option value="Intermediary">Intermediary</option>
				</select></th>
          </tr>
        </thead>
        <tbody id="skills-list">
			<?php 
				////Faz a conexão com o banco
				//header("Content-Type: text/html; charset=ISO-8859-1", true);
				$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
				mysql_select_db("games", $conecta) or print(mysql_error()); 
				///////////////////////////////
				
				/////Le as mensagens do banco
				$sql = "SELECT `skill`, `type`, `status`, `image` FROM `skills` ORDER BY `skill`"; 
				$result = mysql_query($sql, $conecta); 
				
				
				///////////////
				$arrayCovers = [];
				$index = 0;
				///////////////
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr><td><a href='#'>$consulta[skill]</a></td><td>$consulta[type]</td><td>$consulta[status]</td></tr>";
					$arrayCovers[$index] = "$consulta[image]";
					$index++;
				}
				
				$string_array = implode("|", $arrayCovers);
				////////////////////////////
			?>
			
			<script>
				//alert("teste");
				//variáveis
				var i, array_covers, string_array;
				//recebe a string com elementos separados, vindos do PHP
				string_array = "<?php echo $string_array; ?>";
				//transforma esta string em um array próprio do Javascript
				array_covers = string_array.split("|");
			
				/////change cover
				$(function () {
				  $("tbody#skills-list td").mouseover(function () {
					var indexCover = $(this).parent().index();
					  $("img#skill-cover").attr("src", array_covers[indexCover]);
					$("img#skill-cover").show();
				  });
				});
			</script>
			
			<img id="skill-cover" src=""/>
        </tbody>
      </table>
	  </br>
	  
	<table id="tabela">
        <thead>
          <caption>COURSES</caption>
          <tr><th>Name</th><th>Status</th><th>Link</th></tr>
          <tr>
            <th><input type="text" id="nameFilter"/></th>
			<th><select id="Status">
				  <option value="All">All</option>
				  <option value="Backlog">Backlog</option>
				  <option value="Taking">Taking</option>
				</select></th>
            <th><input type="text" id="nameFilter"/></th>
          </tr>
        </thead>
        <tbody id="skills-list">	
			<tr><td>PHP</td><td>Taking</td><td><a href="http://www.cursoemvideo.com/course-status/">Curso em Video</a></td></tr>
			<tr><td>JavaScript</td><td>Backlog</td><td><a href="https://www.udemy.com/understand-javascript/learn/v4/content">Udemy</a></td></tr>
        </tbody>
      </table>

      <footer id="rodape">
        <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
          <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
        </footer>
      </div>
    </body>
    </html>
