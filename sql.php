<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>SQL</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/sql.css"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
  <script src="_javascript/books.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/books.png"/>

      <nav id="menu">
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('sql.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('sql.png')"><a href="games.php">Games</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('sql.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('sql.png')"><a href="movies.php">Movies</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('sql.png')"><a href="books.php">Books</a></li>
              <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('sql.png')"><a href="development.html">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('sql.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('sql.png')"><a href="theme-songs.html">Songs</a></li>
			  <li onmouseover="mudaFoto('sql.png')" onmouseout="mudaFoto('sql.png')"><a href="sql.php">SQL</a></li>
            </ul>
          </li>
        </ul>
      </header>

      <section id="corpo-full">
        <article id="noticiaprincipal">
          <header id="cabecalho-artigo">
            <hgroup>
              <h3>Home > SQL</h3>
              <h1>SQL</h1>
              <h2>by Felipe Dutra</h2>
              <h3 class="direita">Updated at June/17/2016</h3>
            </hgroup>
          </header>
        </article>
      </section>
	  
	  <form action="_php/inject-sql.php" method="post">
		<textarea rows="10" cols="100" name="sql"></textarea>
		<input type="submit" id="botaoSql" value="Inject SQL"/>
	  </form>
      <footer id="rodape">
        <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
          <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
        </footer>
      </div>
    </body>
    </html>
