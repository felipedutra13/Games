<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>HQs</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/series.css"/>
  <link rel="shortcut icon" href="_imagens/icone.png"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
  <script src="_javascript/ajax.js"></script>
  <script src="_javascript/filtro.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/hqs.png"/>

      <nav id="menu">
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('hqs.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('hqs.png')"><a href="games.php">Games</a></li>
			  <li onmouseover="mudaFoto('coop.png')" onmouseout="mudaFoto('hqs.png')"><a href="coop.php">Co-op</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('hqs.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('hqs.png')"><a href="movies.php">Movies</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('hqs.png')"><a href="books.php">Books</a></li>
			  <li onmouseover="mudaFoto('hqs.png')" onmouseout="mudaFoto('hqs.png')"><a href="hqs.php">HQs</a></li>
              <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('hqs.png')"><a href="development.php">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('hqs.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('hqs.png')"><a href="songs.php">Songs</a></li>
			  <li onmouseover="mudaFoto('sql.png')" onmouseout="mudaFoto('hqs.png')"><a href="sql.php">SQL</a></li>
            </ul>
          </li>
        </ul>
      </header>

      <section id="corpo-full">
        <article id="noticiaprincipal">
          <header id="cabecalho-artigo">
            <hgroup>
              <h3>Home > HQs</h3>
              <h1>HQs</h1>
              <h2>by Felipe Dutra</h2>
              <h3 class="direita">Updated at June/17/2016</h3>
            </hgroup>
          </header>
        </article>
      </section>

      <table id="tabela-hqs">
        <thead>
          <caption>HQlist</caption>
          <tr><th>Name</th><th>Edition</th><th>Status</th></tr>
          <tr>
            <th><input type="text" id="nameFilter"/></th>
            <th><input type="text" id="genero"/></th>
            <th> <select id="status">
				  <option value="All">All</option>
				  <option value="Reading">Reading</option>
				  <option value="Read">Read</option>
				  <option value="Backlog">Backlog</option>				  
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
				$sql = "SELECT `name`, `genre`, `status` FROM `hqs` ORDER BY `name`"; 
				$result = mysql_query($sql, $conecta); 
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr class='hqs'><td><a>$consulta[name]</a></td><td>$consulta[genre]</td><td>$consulta[status]</td></tr>";
				}
			?>
        </tbody>
        <tr><td id="total" colspan="4"></td></tr>
      </table>

      <img id="cover" src=""/>
      <footer id="rodape">
        <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
          <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
        </footer>
      </div>
    </body>
    </html>
