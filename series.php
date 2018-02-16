<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>Series</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/series.css"/>
  <link rel="shortcut icon" href="_imagens/icone.png"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
  <!--<script src="_javascript/ajax.js"></script>-->
  <script src="_javascript/filtro.js"></script>
  <script src="_javascript/options.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/series.png"/>
      <nav id="menu">
	  <span id="test">Teste</span>
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('series.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('series.png')"><a href="games.php">Games</a></li>
			  <li onmouseover="mudaFoto('coop.png')" onmouseout="mudaFoto('series.png')"><a href="coop.php">Co-op</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('series.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('series.png')"><a href="movies.php">Movies</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('series.png')"><a href="books.php">Books</a></li>
			  <li onmouseover="mudaFoto('hqs.png')" onmouseout="mudaFoto('series.png')"><a href="hqs.php">HQs</a></li>
              <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('series.png')"><a href="development.php">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('series.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('series.png')"><a href="songs.php">Songs</a></li>
			  <li onmouseover="mudaFoto('sql.png')" onmouseout="mudaFoto('series.png')"><a href="sql.php">SQL</a></li>
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
	  <ul id="options">
		<li id="changeName">Change Name</li>
		<li id="changeGenre">Change Genre <span style="float: right;">&rarr;</span>
			<ul id="genreOptions">
				  <li value="Action">Action</li>
				  <li value="Adventure">Adventure</li>
				  <li value="Beat 'em up">Beat 'em up</li>
				  <li value="Fighting">Fighting</li>
				  <li value="FPS">FPS</li>
				  <li value="Hack and Slash">Hack and Slash</li>
				  <li value="Plattform">Plattform</li>
				  <li value="Puzzle">Puzzle</li>				  				  
				  <li value="Racing">Racing</li>
				  <li value="RPG">RPG</li>
				  <li value="Strategy">Strategy</li>
				  <li value="Survival Horror">Survival Horror</li>	
			</ul>
		</li>
		<li id="updateStatus">Update Status <span style="float: right;">&rarr;</span>
			<ul id="statusOptions">
				  <li value="Backlog">Backlog</li>
				  <li value="Watched">Watched</li>
				  <li value="Watching">Watching</li>
			</ul>
		</li>
		<li id="delete">Delete</li>
	  </ul>

      <table id="tabela-series">
        <thead>
          <caption>Watchlist</caption>
          <tr><th>Name</th><th>Genre</th><th>Status</th></tr>
          <tr>
            <th><input type="text" id="nameFilter"/></th>
            <th> <select id="genero">
				  <option>All</option>
				  <option>Thriller</option>	
				  <option>Comedy</option>
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
			<script>
				initialFilter("series");
			</script>
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
