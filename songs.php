<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8"/>
  <title>Theme Songs</title>
  <link rel="stylesheet" type="text/css" href="_css/estilo.css"/>
  <link rel="stylesheet" type="text/css" href="_css/songs.css"/>
  <link rel="shortcut icon" href="_imagens/icone.png"/>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
  <script src="_javascript/funcoes.js"></script>
  <script src="_javascript/audio.js"></script>
</head>
<body>
  <div id="interface">
    <header id="cabecalho">
      <h1>Videogames</h1>
      <h2>Track what you're doing!</h2>

      <img id="icone" src="_imagens/dk-drums.png"/>

      <nav id="menu">
        <h1>Main Menu</h1>
        <ul id="menu-principal">
          <li onmouseover="mudaFoto('games.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="index.html">Home</a></li>
          <li id="mostrar">Menu
            <ul id="submenu">
              <li onmouseover="mudaFoto('mario-home.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="games.php">Games</a></li>
			  <li onmouseover="mudaFoto('coop.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="coop.php">Co-op</a></li>
              <li onmouseover="mudaFoto('series.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="series.php">Series</a></li>
              <li onmouseover="mudaFoto('movies.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="movies.php">Movies</a></li>
              <li onmouseover="mudaFoto('books.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="books.php">Books</a></li>
              <li onmouseover="mudaFoto('laptop.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="development.html">Development</a></li>
              <li onmouseover="mudaFoto('ryu.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="fotos.html">Images</a></li>
              <li onmouseover="mudaFoto('dk-drums.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="songs.php">Songs</a></li>
			  <li onmouseover="mudaFoto('sql.png')" onmouseout="mudaFoto('dk-drums.png')"><a href="sql.php">SQL</a></li>
            </ul>
          </li>
        </ul>
    </header>

    <section id="corpo-full">
      <article id="noticiaprincipal">
        <header id="cabecalho-artigo">
          <hgroup>
            <h3>Home > Home</h3>
            <h1>Theme Songs</h1>
            <h2>by Felipe Dutra</h2>
            <h3 class="direita">Updated at June/17/2016</h3>
          </hgroup>
        </header>
      </article>
    </section>

    <iframe id="songs" width="560" height="315" src="https://www.youtube.com/embed/" frameborder="0" allowfullscreen>
    </iframe>

    <!--<audio id="songs2">
      <source src="" type="audio/mp3"/>
    </audio> -->
    <table>
      <caption>Theme Songs</caption>
      <thead>
        <th colspan="2">Music</th>
      </thead>
       <tbody id="games-list">
		  <?php 
				////Faz a conexão com o banco
				$conecta = mysql_connect("127.0.0.1", "root", "") or print (mysql_error()); 
				mysql_select_db("games", $conecta) or print(mysql_error()); 
				///////////////////////////////
				
				/////Le as mensagens do banco
				$sql = "SELECT `name`, `song` FROM `songs` ORDER BY `name`"; 
				$result = mysql_query($sql, $conecta); 
				
				
				///////////////
				$arrayCovers = [];
				$index = 0;
				///////////////
				/* Escreve resultados até que não haja mais linhas na tabela */ 
				 
				while($consulta = mysql_fetch_array($result)) { 
				   echo "<tr><td></td><td><a href='#'>$consulta[name]</a></td></tr>";
					$arraySongs[$index] = "$consulta[song]";
					$index++;
				}
				
				$string_array = implode("|", $arraySongs);
				////////////////////////////
			?>
			
			<script>
				//variáveis
				var i, array_songs, string_array;
				//recebe a string com elementos separados, vindos do PHP
				string_array = "<?php echo $string_array; ?>";
				//transforma esta string em um array próprio do Javascript
				array_songs = string_array.split("|");
			
				/////change cover
				$(function () {
				  $("tr td:first-child").click(function () {
					var index = $(this).parent().index();
					$("#songs").attr("src", array_songs[index]);
					if($(this).attr("isPlaying") == "true")
					{
					  $("#songs")[0].src.replace("&autoplay=1", "");
					  $(this).attr("isPlaying", "false");// = false;
					  $(this).css("background", "url(_imagens/play.png) no-repeat");
					  $(this).css("background-size", "90% 90%");
					  $(this).css("background-position", "2px 2px");
					  somePlaying = false;
					} else{
					  $("tr td:first-child").each(function() {
						if($(this).attr("isPlaying") == "true")
						{
						  $(this).attr("isPlaying", "false");// = false;
						  $(this).css("background", "url(_imagens/play.png) no-repeat");
						  $(this).css("background-size", "90% 90%");
						  $(this).css("background-position", "2px 2px");
						  somePlaying = false;
						  $("#songs")[0].src.replace("&autoplay=1", "");
						}
					  });
					  somePlaying = true;
					  $(this).attr("isPlaying", "true");// = true;
					  $(this).css("background", "url(_imagens/pause.png) no-repeat");
					  $(this).css("background-size", "90% 90%");
					  $(this).css("background-position", "2px 2px");
					  $("#songs")[0].src += "?autoplay=1";
					}
				  });
				});
			</script>
        </tbody>
    </table>


    <footer id="rodape">
      <p>Copyright &copy; 2016 - by Felipe Dutra<br/>
        <a href="https://www.facebook.com/felipe.dutra.501" target="blank">Facebook</a></p>
      </footer>
    </div>
  </body>
  </html>
