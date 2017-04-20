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
			  <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('ryu.png')"><a href="development.php">Development</a></li>
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
          <caption>Playthroughs</caption>
          <tr><th>Name</th><th>Platform</th><th>Genre</th><th>Status</th></tr>
          <tr>
		  
            <th><input type="text" id="nameFilter"/></th>
            <th> <select id="plataforma">
				  <option value="All">All</option>
				  <option value="Android">Android</option>
				  <option value="Arcade">Arcade</option>
				  <option value="Game Boy">Game Boy</option>
				  <option value="Game Boy Advance">Game Boy Advance</option>
				  <option value="GameCube">GameCube</option>
				  <option value="Master System">Master System</option>
				  <option value="Mega Drive">Mega Drive</option>
				  <option value="NeoGeo">NeoGeo</option>
				  <option value="Nintendinho">Nintendinho</option>
				  <option value="Nintendo 64">Nintendo 64</option>
				  <option value="Nintendo DS">Nintendo DS</option>
				  <option value="PC">PC</option>
				  <option value="Playstation">Playstation</option>
				  <option value="Playstation 2">Playstation 2</option>
				  <option value="Playstation 4">Playstation 4</option>
				  <option value="PSP">PSP</option>
				  <option value="Super Nintendo">Super Nintendo</option>			  
				  <option value="Wii">Wii</option>
				  <option value="Xbox">Xbox</option>
				  <option value="Xbox 360">Xbox 360</option>			  
				</select></th>
            <th><select id="genero">
				  <option value="All">All</option>
				  <option value="Action">Action</option>
				  <option value="Adventure">Adventure</option>
				  <option value="Beat 'em up">Beat 'em up</option>
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
            <th><select id="status">
				  <option value="All">All</option>
				  <option value="Backlog">Backlog</option>
				  <option value="Completed">Completed</option>
				  <option value="Playing">Playing</option>
				</select></th>
          </tr>
        </thead>
        <tbody id="games-list">
		  <?php 
				////Faz a conexão com o banco
				//header("Content-Type: text/html; charset=ISO-8859-1", true);
				$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
				mysql_select_db("games", $conecta) or print(mysql_error()); 
				///////////////////////////////
				
				/////Le as mensagens do banco
				$sql = "SELECT `name`, `plattform`, `genre`, `status`, `image` FROM `games` ORDER BY `name`"; 
				$result = mysql_query($sql, $conecta); 
				
				
				///////////////
				$arrayCovers = [];
				$index = 0;
				///////////////
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr><td><a href='#'>$consulta[name]</a></td><td>$consulta[plattform]</td><td>$consulta[genre]</td><td>$consulta[status]</td></tr>";
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
	  <input id="random" type="button" value="Choose a random game!"/></br>
	  <table id="tabela-dlc">
        <thead>
          <caption>DLC's and Expansions</caption>
          <tr><th>Name</th><th>Platform</th><th>Genre</th><th>Status</th></tr>
          <tr>
		  
            <th><input type="text" id="nameFilterDlc"/></th>
            <th> <select id="plataforma">
				  <option value="All">All</option>
				  <option value="Android">Android</option>
				  <option value="Arcade">Arcade</option>
				  <option value="Game Boy">Game Boy</option>
				  <option value="Game Boy Advance">Game Boy Advance</option>
				  <option value="GameCube">GameCube</option>
				  <option value="Master System">Master System</option>
				  <option value="Mega Drive">Mega Drive</option>
				  <option value="NeoGeo">NeoGeo</option>
				  <option value="Nintendinho">Nintendinho</option>
				  <option value="Nintendo 64">Nintendo 64</option>
				  <option value="Nintendo DS">Nintendo DS</option>
				  <option value="PC">PC</option>
				  <option value="Playstation">Playstation</option>
				  <option value="Playstation 2">Playstation 2</option>
				  <option value="Playstation 4">Playstation 4</option>
				  <option value="PSP">PSP</option>
				  <option value="Super Nintendo">Super Nintendo</option>			  
				  <option value="Wii">Wii</option>
				  <option value="Xbox">Xbox</option>
				  <option value="Xbox 360">Xbox 360</option>			  
				</select></th>
            <th><select id="genero">
				  <option value="All">All</option>
				  <option value="Action">Action</option>
				  <option value="Adventure">Adventure</option>
				  <option value="Beat 'em up">Beat 'em up</option>
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
            <th><select id="status">
				  <option value="All">All</option>
				  <option value="Backlog">Backlog</option>
				  <option value="Completed">Completed</option>
				  <option value="Playing">Playing</option>
				</select></th>
          </tr>
        </thead>
	    <tbody id="games-dlc-list">
		  <?php 
				////Faz a conexão com o banco
				//header("Content-Type: text/html; charset=ISO-8859-1", true);
				$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
				mysql_select_db("games", $conecta) or print(mysql_error()); 
				///////////////////////////////
				
				/////Le as mensagens do banco
				$sql = "SELECT `name`, `platform`, `genre`, `status`, `image` FROM `dlc` ORDER BY `name`"; 
				$result = mysql_query($sql, $conecta); 
				
				
				///////////////
				$arrayCovers2 = [];
				$index2 = 0;
				///////////////
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr><td><a href='#'>$consulta[name]</a></td><td>$consulta[platform]</td><td>$consulta[genre]</td><td>$consulta[status]</td></tr>";
					$arrayCovers2[$index2] = "$consulta[image]";
					$index2++;
				}
				
				$string_array2 = implode("|", $arrayCovers2);
				////////////////////////////
			?>
			
			<script>
				//alert("teste");
				//variáveis
				var i, array_covers2, string_array2;
				//recebe a string com elementos separados, vindos do PHP
				string_array2 = "<?php echo $string_array2; ?>";
				//transforma esta string em um array próprio do Javascript
				array_covers2 = string_array2.split("|");
			
				/////change cover
				$(function () {
				  $("tbody#games-dlc-list td").mouseover(function () {
					var indexCover2 = $(this).parent().index();
					  $("img#cover").attr("src", array_covers2[indexCover2]);
					$("img#cover").show();
				  });
				});
			</script>
        </tbody>
		<tr><td id="total-dlc" colspan="4"></td></tr>
      </table>

      <img id="cover" src=""/>

      <table id="countPlatform">
        <thead>
          <caption>Completed</caption>
          <tr><th>Platform</th><th>Total</th><th>%</th></tr>
        </thead>
        <tbody id="games-completed">
          <tr><td>Android</td><td id="total-android" class="centro"></td><td><canvas id="graph-android"></canvas></td></tr>
          <tr><td>Arcade</td><td id="total-arcade" class="centro"></td><td><canvas id="graph-arcade"></canvas></td></tr>
          <tr><td>Game Boy Advance</td><td id="total-gameboyadvance" class="centro"></td><td><canvas id="graph-gameboyadvance"></canvas></td></tr>
          <tr><td>GameCube</td><td id="total-gamecube" class="centro"></td><td><canvas id="graph-gamecube"></canvas></td></tr>
          <tr><td>Mega Drive</td><td id="total-megadrive" class="centro"></td><td><canvas id="graph-megadrive"></canvas></td></tr>
          <tr><td>Neo Geo</td><td id="total-neogeo" class="centro"></td><td><canvas id="graph-neogeo"></canvas></td></tr>
          <tr><td>Nintendinho</td><td id="total-nes" class="centro"></td><td><canvas id="graph-nes"></canvas></td></tr>
          <tr><td>Nintendo 64</td><td id="total-nintendo64" class="centro"></td><td><canvas id="graph-nintendo64"></canvas></td></tr>
          <tr><td>Nintendo DS</td><td id="total-nintendods" class="centro"></td><td><canvas id="graph-nintendods"></canvas></td></tr>
          <tr><td>PC</td><td id="total-pc" class="centro"></td><td><canvas id="graph-pc"></canvas></td></tr>
          <tr><td>Playstation</td><td id="total-playstation1" class="centro"></td><td><canvas id="graph-play1"></canvas></td></tr>
          <tr><td>Playstation 2</td><td id="total-playstation2" class="centro"></td><td><canvas id="graph-play2"></canvas></td></tr>
          <tr><td>Playstation 4</td><td id="total-playstation4" class="centro"></td><td><canvas id="graph-play4"></canvas></td></tr>
		  <tr><td>PSP</td><td id="total-psp" class="centro"></td><td><canvas id="graph-psp"></canvas></td></tr>
          <tr><td>Super Nintendo</td><td id="total-supernes" class="centro"></td><td><canvas id="graph-supernes"></canvas></td></tr>
          <tr><td>Wii</td><td id="total-wii" class="centro"></td><td><canvas id="graph-wii"></canvas></td></tr>
          <tr><td>Xbox</td><td id="total-xbox" class="centro"></td><td><canvas id="graph-xbox"></canvas></td></tr>
          <tr><td>Xbox 360</td><td id="total-xbox360" class="centro"></td><td><canvas id="graph-360"></canvas></td></tr>
        </tbody>
        <tr><td id="total-completed" colspan="3"></td></tr>
      </table>
      <footer id="rodape">
        <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
          <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
        </footer>
      </div>
    </body>
    </html>
