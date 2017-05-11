<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>SQL</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/sql.css"/>
  <link rel="shortcut icon" href="_imagens/icone.png"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
  <script src="_javascript/books.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/sql.png"/>

      <nav id="menu">
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('sql.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('sql.png')"><a href="games.php">Games</a></li>
			  <li onmouseover="mudaFoto('coop.png')" onmouseout="mudaFoto('mario-home.png')"><a href="coop.php">Co-op</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('sql.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('sql.png')"><a href="movies.php">Movies</a></li>
			  <li onmouseover="mudaFoto('hqs.png')" onmouseout="mudaFoto('sql.png')"><a href="hqs.php">HQs</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('sql.png')"><a href="books.php">Books</a></li>
              <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('sql.png')"><a href="development.php">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('sql.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('sql.png')"><a href="songs.php">Songs</a></li>
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
		<textarea rows="10" cols="100" name="sql">UPDATE `games` SET `status`='Completed' WHERE `name`='';</textarea>
		<input type="submit" id="botaoSql" value="Inject SQL"/>
	  </form>
	  </br></br>
	  <form action="_php/add.php" method="post">
		<select id="type" name="type">
		  <option value="games">games</option>
		  <option value="Co-op">Co-op</option>
		  <option value="Movie">Movie</option>
		  <option value="Serie">Serie</option>
		  <option value="Book">Book</option>
		  <option value="DLC">DLC</option>
		</select>
		<input type="text" id="nome" name="name"/>
		<select id="plataforma" name="platform">
		  <option value="Xbox 360">Xbox 360</option>
		  <option value="Super Nintendo">Super Nintendo</option>
		  <option value="Game Boy Advance">Game Boy Advance</option>
		  <option value="Playstation">Playstation</option>
		  <option value="Playstation 2">Playstation 2</option>
		  <option value="Playstation 4">Playstation 4</option>
		  <option value="Android">Android</option>
		  <option value="Mega Drive">Mega Drive</option>
		  <option value="Xbox">Xbox</option>
		  <option value="Wii">Wii</option>
		  <option value="Nintendinho">Nintendinho</option>
		  <option value="PC">PC</option>
		  <option value="Nintendo 64">Nintendo 64</option>
		  <option value="Nintendo DS">Nintendo DS</option>
		  <option value="Nintendo 3DS">Nintendo 3DS</option>
		  <option value="GameCube">GameCube</option>
		  <option value="PSP">PSP</option>
		  <option value="Master System">Master System</option>
		  <option value="Game Boy">Game Boy</option>
		</select>
		<select id="genero" name="genre">
		  <option value="Hack and Slash">Hack and Slash</option>
		  <option value="RPG">RPG</option>
		  <option value="Adventure">Adventure</option>
		  <option value="Action">Action</option>
		  <option value="Racing">Racing</option>
		  <option value="Survival Horror">Survival Horror</option>
		  <option value="Plattform">Plattform</option>
		  <option value="FPS">FPS</option>
		  <option value="Fighting">Fighting</option>
		  <option value="Puzzle">Puzzle</option>
		  <option value="Beat ''em up">Beat ''em up</option>
		  <option value="Strategy">Strategy</option>
		  <option value="Comedy">Comedy</option>
		  <option value="Drama">Drama</option>
		  <option value="Thriller">Thriller</option>
		  <option value="Anime">Anime</option>
		  <option value="Zombies">Zombies</option>
		  <option value="Musical">Musical</option>
		  <option value="Adventure">Adventure</option>
		  <option value="Fantasy">Fantasy</option>
		  <option value="Action">Action</option>
		  <option value="Horror">Horror</option>
		</select>
		<select id="status" name="status">
		  <option value="Backlog">Backlog</option>
		  <option value="Completed">Completed</option>
		  <option value="Playing">Playing</option>
		  <option value="Watched">Watched</option>
		  <option value="Watching">Watching</option>
		  <option value="Read">Read</option>
		  <option value="Reading">Reading</option>
		</select>
		<input type="text" name="image"/>
		<input type="submit" id="botao" value="ADD"/>
	  </form>
      <footer id="rodape">
        <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
          <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
        </footer>
      </div>
    </body>
    </html>
