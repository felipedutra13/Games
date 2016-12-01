<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>Movies</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/series.css"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
  <script src="_javascript/movies.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/movies.png"/>

      <nav id="menu">
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('movies.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('movies.png')"><a href="games.php">Games</a></li>
			  <li onmouseover="mudaFoto('coop.png')" onmouseout="mudaFoto('movies.png')"><a href="coop.php">Co-op</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('movies.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('movies.png')"><a href="movies.php">Movies</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('movies.png')"><a href="books.php">Books</a></li>
              <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('movies.png')"><a href="development.html">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('movies.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('movies.png')"><a href="theme-songs.html">Songs</a></li>
			  <li onmouseover="mudaFoto('sql.png')" onmouseout="mudaFoto('movies.png')"><a href="sql.php">SQL</a></li>
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
          <caption>Watchlist</caption>
          <tr><th>Name</th><th>Genre</th><th>Status</th></tr>
          <tr>
            <th><input type="text" id="txtColuna1"/></th>
            <th> <select id="genero">
				  <option>All</option>
				  <option>Comedy</option>
				  <option>Thriller</option>				  
				</select></th>
            <th> <select id="status">
				  <option value="All">All</option>
				  <option value="Watching">Watching</option>
				  <option value="Watched">Watched</option>
				  <option value="Backlog">Backlog</option>				  
				</select></th>
          </tr>
        </thead>
        <tbody id="games-list">		
			<?php 
				////Faz a conexão com o banco
				header("Content-Type: text/html; charset=ISO-8859-1", true);
				$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
				mysql_select_db("games", $conecta) or print(mysql_error()); 
				///////////////////////////////
				
				/////Le as mensagens do banco
				$sql = "SELECT `name`, `genre`, `status`, `image` FROM `movies` ORDER BY `name`"; 
				$result = mysql_query($sql, $conecta); 
				
				
				///////////////
				$arrayCovers = [];
				$index = 0;
				///////////////
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr><td><a href='#'>$consulta[name]</a></td><td>$consulta[genre]</td><td>$consulta[status]</td></tr>";
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

      <img id="cover" src=""/>
      <!--<script src="_javascript/funcoes.js"></script>-->
      <footer id="rodape">
        <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
          <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
        </footer>
      </div>
    </body>
    </html>
