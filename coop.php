<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>Games</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/games.css"/>
  <link rel="shortcut icon" href="_imagens/icone.png"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/coop.png"/>

      <nav id="menu">
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('mario-home.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('coop.png')"><a href="games.php">Games</a></li>
			  <li onmouseover="mudaFoto('coop.png')" onmouseout="mudaFoto('coop.png')"><a href="coop.php">Co-op</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('coop.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('coop.png')"><a href="movies.php">Movies</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('coop.png')"><a href="books.php">Books</a></li>
              <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('coop.png')"><a href="development.html">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('coop.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('coop.png')"><a href="songs.php">Songs</a></li>
			  <li onmouseover="mudaFoto('sql.png')" onmouseout="mudaFoto('coop.png')"><a href="sql.php">SQL</a></li>
            </ul>
          </li>
        </ul>
      </header>

      <section id="corpo-full">
        <article id="noticiaprincipal">
          <header id="cabecalho-artigo">
            <hgroup>
              <h3>Home > Games</h3>
              <h1>Games</h1>
              <h2>by Felipe Dutra</h2>
              <h3 class="direita">Updated at June/17/2016</h3>
            </hgroup>
          </header>
        </article>
      </section>
      <table id="tabela">
        <thead>
          <caption>Playthroughs Co-Op games</caption>
          <tr><th>Name</th><th>Platform</th><th>Genre</th></tr>
          <tr>
		  
            <th><input type="text" id="txtColuna1"/></th>
            <th> <select id="plataforma">
				  <option value="All">All</option>
				  <option value="Android">Android</option>
				  <option value="Arcade">Arcade</option>
				  <option value="Game Boy Advance">Game Boy Advance</option>
				  <option value="GameCube">GameCube</option>
				  <option value="Mega Drive">Mega Drive</option>
				  <option value="NeoGeo">NeoGeo</option>
				  <option value="Nintendinho">Nintendinho</option>
				  <option value="Nintendo 64">Nintendo 64</option>
				  <option value="Nintendo DS">Nintendo DS</option>
				  <option value="PC">PC</option>
				  <option value="Playstation">Playstation</option>
				  <option value="Playstation 2">Playstation 2</option>
				  <option value="Playstation 4">Playstation 4</option>
				  <option value="Super Nintendo">Super Nintendo</option>			  
				  <option value="Wii">Wii</option>
				  <option value="Xbox">Xbox</option>
				  <option value="Xbox 360">Xbox 360</option>			  
				</select></th>
            <th><select id="genero">
				  <option value="All">All</option>
				  <option value="Action">Action</option>
				  <option value="Adventure">Adventure</option>
				  <option value="Beat ''em up">Beat ''em up</option>
				  <option value="Fighting">Fighting</option>
				  <option value="FPS">FPS</option>
				  <option value="Hack and Slash">Hack and Slash</option>
				  <option value="Plattform">Plattform</option>
				  <option value="Puzzle">Puzzle</option>				  				  
				  <option value="Racing">Racing</option>
				  <option value="RPG">RPG</option>
				  <option value="Strategy">Strategy</option>
				  <option value="Survival Horror">Survival Horror</option>				  				  				  
				</select></th>
          </tr>
        </thead>
        <tbody id="games-list">
		  <?php 
				////Faz a conexão com o banco
				$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
				mysql_select_db("games", $conecta) or print(mysql_error()); 
				///////////////////////////////
				
				/////Le as mensagens do banco
				$sql = "SELECT `name`, `platform`, `genre`, `image` FROM `coop` ORDER BY `name`"; 
				$result = mysql_query($sql, $conecta); 
				
				
				///////////////
				$arrayCovers = [];
				$index = 0;
				///////////////
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr><td><a href='#'>$consulta[name]</a></td><td>$consulta[platform]</td><td>$consulta[genre]</td></tr>";
					$arrayCovers[$index] = "$consulta[image]";
					$index++;
				}
				
				$string_array = implode("|", $arrayCovers);
				////////////////////////////
			?>
			
			<script>
				//variáveis
				var i, array_covers, string_array;
				//recebe a string com elementos separados, vindos do PHP
				string_array = "<?php echo $string_array; ?>";
				//transforma esta string em um array próprio do Javascript
				array_covers = string_array.split("|");
			
				/////change cover
				$(function () {
				  $("tbody#games-list td").mouseover(function () {
					var indexCover = $(this).parent().index();
					  $("img#cover").attr("src", array_covers[indexCover]);
					$("img#cover").show();
				  });
				});
			</script>
        </tbody>
        <tr><td id="total" colspan="4"></td></tr>
      </table>
	  <input id="random" type="button" value="Choose a random game!"/>

      <img id="cover" src=""/>
      <footer id="rodape">
        <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
          <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
        </footer>
      </div>
    </body>
    </html>
