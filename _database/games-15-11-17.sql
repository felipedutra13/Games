-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Nov-2017 às 21:46
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `games`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `books`
--

CREATE TABLE `books` (
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `books`
--

INSERT INTO `books` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('Os Crimes ABC', '', 'Drama', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/R0ycfw2fSwFy19AoxXaSxhO6HR8=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/1215/OS_CRIMES_ABC_14259329731215SK1425932973B.jpg'),
('A Cabana', '', 'Drama', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/38fzmKhJesP9LfvOQxoO3neFaT0=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/57/A_CABANA_1398878150B.jpg'),
('Os Elefantes Não Esquecem', '', 'Drama', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/MKKEPxfFiznemyg78o-AJkTOVlQ=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/1198/OS_ELEFANTES_NAO_ESQUECEM_1328575416B.jpg'),
('Assassinato no Expresso do Oriente', '', 'Drama', 'Read', 'https://cache.skoob.com.br/local/images//B1V0ExJF2ALet0K30NAFP-Awqzs=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/1043/ASSASSINATO_NO_EXPRESSO_DO_ORI_14669553641043SK1466955364B.jpg'),
('God of War', '', 'Fantasy', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/WT4GRHMmttS3cpDvKwRK20raGAM=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/274997/GOD_OF_WAR_1350943915B.jpg'),
('Os Trabalhos de HÃ©rcules', 'Xbox 360', 'Action', 'Reading', 'https://cache.skoob.com.br/local/images//P7yjAqgwHRSDRSWBnnFYGCqvkDs=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/7644/OS_TRABALHOS_DE_HERCULES__14259332627644SK1425933262B.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coop`
--

CREATE TABLE `coop` (
  `name` varchar(50) NOT NULL,
  `platform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `coop`
--

INSERT INTO `coop` (`name`, `platform`, `genre`, `image`) VALUES
('''Splosion Man', 'Xbox 360', 'Plattform', 'http://howlongtobeat.com/gameimages/Splosion_Man.jpg'),
('Orc Attack: Flatulent Rebellion', 'Xbox 360', 'Hack and Slash', 'http://howlongtobeat.com/gameimages/OrcAttackFlatulentRebellion.jpg'),
('Charlie Murder', 'Xbox 360', 'Hack and Slash', 'http://howlongtobeat.com/gameimages/Charlie_Murder.jpg'),
('The LEGO Movie Videogame', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/The_Lego_Movie_Videogame_cover.jpg'),
('Scott Pilgrim vs. the World: The Game', 'Xbox 360', 'Beat ''em up', 'http://howlongtobeat.com/gameimages/Scottpilgrimthegame.jpg'),
('The Legend of Spyro: Dawn of the Dragon', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/The_Legend_of_Spyro_Dawn_of_the_Dragon.jpg'),
('de Blob 2', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Deblob2cover.jpg'),
('Spelunky', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/240px-Spelunky.jpg'),
('ilomilo', 'Xbox 360', 'Puzzle', 'http://howlongtobeat.com/gameimages/Ilomilo_logo.jpg'),
('Islands of Wakfu', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/3640-islands-of-wakfu.jpg'),
('Looney Tunes: Acme Arsenal', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/250px-Looney_Tunes_-_Acme_Arsenal_Coverart.jpg'),
('Cloning Clyde', 'Xbox 360', 'Plattform', 'http://howlongtobeat.com/gameimages/Cboxcloningclyde.jpg'),
('LEGO The Lord of the Rings: The Video Game', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/220px-Lego_Lord_of_the_Rings_cover.jpg'),
('The Fancy Pants Adventures', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/31853_The_Fancy_Pants_Adventures.jpg'),
('Shank', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Shank_Art.jpg'),
('Crimson Alliance', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/250px-Crimson_Alliance_digital_boxart.jpg'),
('Spider-Man: Friend or Foe', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Spider-Man_Friend_Or_for-Games_For_windows.jpg'),
('Fairytale Fights', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Fairytale_Fights.jpg'),
('The Cave', 'Xbox 360', 'Plattform', 'http://howlongtobeat.com/gameimages/The_cave_video_game_cover.png'),
('Earth Defense Force 2017', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/255px-Earth_defense_force_2017_box_art.jpg'),
('Dungeon Fighter Live: Fall of Hendon Myre', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Dungeon_Fighter_Live_Fall_of_Hendon_Myre.jpg'),
('Double Dragon Neon', 'Xbox 360', 'Beat ''em up', 'http://howlongtobeat.com/gameimages/Double_Dragon_Neon_promotional_poster.jpg'),
('Family Guy: Back to the Multiverse', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/250px-Family_guy_back_to_the_multiverse.jpg'),
('Marvel: Ultimate Alliance', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/256px-Ultimate_alliance.PNG'),
('DeathSpank', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/DeathSpank.jpg'),
('Bionic Commando Rearmed', 'Xbox 360', 'Plattform', 'http://howlongtobeat.com/gameimages/BionicCommandoRearmedcover.jpg'),
('Shoot Many Robots', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/ShootManyRobots.jpg'),
('N+', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Nplus_psp.png'),
('Ms. Splosion Man', 'Xbox 360', 'Plattform', 'http://howlongtobeat.com/gameimages/256px-MsSplosionMan_titleArt.png'),
('Cars 2', 'Xbox 360', 'Racing', 'http://howlongtobeat.com/gameimages/250px-Cars_2_cover.jpg'),
('LEGO Marvel Super Heroes', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Lego-Marvel-cover.jpg'),
('LEGO Pirates of the Caribbean: The Video Game', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Lego_Pirates_of_the_Caribbean.jpg'),
('LEGO Harry Potter: Years 1-4', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Lego_potter_cover.jpg'),
('Rise of the Guardians: The Video Game', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/Rise_of_the_Guardians_(video_game)_cover.jpg'),
('Sacred 2: Fallen Angel', 'Xbox 360', 'RPG', 'http://howlongtobeat.com/gameimages/Sacred_2_Fallen_Angel.jpg'),
('LEGO Star Wars: The Complete Saga', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/256px-Lego_Star_Wars-The_Complete_Saga.jpg'),
('Lode Runner', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/220px-Lode_Runner_Coverart.png'),
('The Dishwasher: Dead Samurai', 'Xbox 360', 'Beat ''em up', 'http://howlongtobeat.com/gameimages/Thedishwatercover.jpg'),
('Viva Piñata', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/250px-Viva_pinyata.jpg'),
('Watchmen: The End Is Nigh', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/WatchmenThe_End_is_Nigh_game_cover.jpg'),
('Gatling Gears', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/Gatling_Gears_cover.jpg'),
('Warhammer 40,000: Kill Team', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/boxartlgwarhammerkillteam.jpg'),
('Awesomenauts', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/2188497-box_anauts_large.png'),
('Kane & Lynch: Dead Men', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/250px-Kane_and_Lynch_cover_art.jpg'),
('Teenage Mutant Ninja Turtles: Turtles in Time Re-S', 'Xbox 360', 'Beat ''em up', 'http://howlongtobeat.com/gameimages/TMNTreshelled_cover.png'),
('Megamind: Ultimate Showdown', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/250px-MegamindXbox360BoxArt.jpg'),
('Teenage Mutant Ninja Turtles: Out of the Shadows', 'Xbox 360', 'Beat ''em up', 'http://howlongtobeat.com/gameimages/TMNT_Out_of_the_Shadows.jpg'),
('Green Lantern: Rise of the Manhunters', 'Xbox 360', 'Adventure', 'http://howlongtobeat.com/gameimages/250px-Green_Lantern_Rise_Of_The_Manhunters.jpg'),
('Star Wars The Clone Wars: Republic Heroes', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/Star_Wars_The_Clone_Wars_-_Republic_Heroes.jpg'),
('Dynasty Warriors 8', 'Xbox 360', 'Hack and Slash', 'http://howlongtobeat.com/gameimages/DynastyWarriors8.jpg'),
('Zombie Apocalypse: Never Die Alone', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/ZombieApocalypseNeverDieAlone.jpg'),
('Zombie Apocalypse', 'Xbox 360', 'Action', 'http://howlongtobeat.com/gameimages/Zombie_Apocalypse_Coverart.png'),
('Ben 10: Omniverse', 'Wii', 'Adventure', 'https://howlongtobeat.com/gameimages/Ben10OmiverseBoxart.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dlc`
--

CREATE TABLE `dlc` (
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dlc`
--

INSERT INTO `dlc` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('Age of Mythology: The Titans', 'PC', 'Strategy', 'Completed', 'https://howlongtobeat.com/gameimages/Age_of_Mythology_-_The_Titans_Liner.jpg'),
('Batman: Arkham City - Catwoman', 'Xbox 360', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/250px-ArkhamCity.jpg'),
('Far Cry 3: Blood Dragon', 'Xbox 360', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/FC3_Blood_Dragon_Cover.jpg'),
('The Last of Us: Left Behind', 'Playstation 4', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/The-last-of-us-cover.png'),
('Thomas Was Alone: Benjamin''s Flight', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/2248655-twa_poster_large.png'),
('Outlast: Whistleblower', 'PC', 'Survival Horror', 'Completed', 'https://howlongtobeat.com/gameimages/OutlastWhistleblowerDLC.jpg'),
('Saints Row: Gat out of Hell', 'Playstation 4', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Saints_Row_Gat_Out_of_Hell.jpg'),
('Assassin''s Creed: Freedom Cry', 'Playstation 4', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Assassins_Creed_Freedom_Cry_header.jpg'),
('DreadOut: Keepers of The Dark', 'PC', 'Survival Horror', 'Backlog', 'https://howlongtobeat.com/gameimages/36470_DreadOut_Keepers_of_The_Dark.jpg'),
('Commandos: Beyond the Call of Duty', 'PC', 'Strategy', 'Backlog', 'https://howlongtobeat.com/gameimages/Commandos_Beyond_the_Call_of_Duty.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `english`
--

CREATE TABLE `english` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `sorted` varchar(1) DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `english`
--

INSERT INTO `english` (`id`, `type`, `question`, `answer`, `sorted`) VALUES
(1, 'grammar', 'swollen', 'inchado', 'y'),
(2, 'grammar', 'branches', 'galhos', 'y'),
(3, 'grammar', 'burglary', 'assalto', 'y'),
(4, 'grammar', 'puddle', 'poça', 'y'),
(5, 'grammar', 'storey', 'andar', 'y'),
(6, 'grammar', 'tide', 'maré', 'y'),
(7, 'grammar', 'loot', 'saquear', 'y'),
(8, 'grammar', 'jeopardy', 'perigo', 'y'),
(9, 'grammar', 'asleep', 'adormecido', 'y'),
(10, 'grammar', 'dismiss', 'dispensar', 'n'),
(11, 'grammar', 'spare', 'poupar', 'y'),
(12, 'grammar', 'hit somebody up', 'pedir favor', 'n'),
(13, 'grammar', 'blacksmith', 'ferreiro', 'n'),
(14, 'grammar', 'sign up', 'registrar', 'n'),
(15, 'grammar', 'sign in', 'entrar', 'n'),
(16, 'grammar', 'lense', 'lente', 'n'),
(17, 'grammar', 'embed', 'embutir', 'n'),
(18, 'grammar', 'to garden', 'jardinar', 'y'),
(19, 'grammar', 'fulfill', 'cumprir', 'y'),
(20, 'grammar', 'to book', 'agendar', 'y'),
(21, 'grammar', 'on leave', 'licensa', 'y'),
(22, 'grammar', 'lodge', 'alojamento', 'n'),
(23, 'grammar', 'whip', 'chicote', 'n'),
(24, 'exercise', '_ (prep) my way home. I generally meet a lot of adults who are going to work.', 'on', 'n'),
(25, 'exercise', '_ you _ (try) Chiles when you were in Mexico ?', 'did try', 'n'),
(26, 'exercise', '_ you ever _ (try) Mexican food ?', 'have tried', 'y'),
(27, 'exercise', 'At the moment, one dollar is roughly equivalent _ (prep) ten thousands dong.', 'to', 'y'),
(28, 'exercise', 'Barbara has been my concerned _ (prep) her mother''s poor health.', 'about', 'y'),
(29, 'exercise', 'Charles Dickens _ (write) Oliver Twist in 1837.', 'wrote', 'n'),
(30, 'exercise', 'He _ (live) with his brother for the past week.', 'has been living', 'y'),
(31, 'exercise', 'Cinda''s very pleased with herself. She _ finally _ (give up) smoking. She _ (try) to give up for years.', 'has given up tried', 'y'),
(32, 'exercise', 'He is known _ (preposition) an experienced teacher.', 'as', 'n'),
(33, 'exercise', 'He was leaning _ (preposition) a table.', 'against', 'y'),
(34, 'exercise', 'How many times _ Henry VIII _ (marry) ?', 'did marry', 'n'),
(35, 'exercise', 'How many times _ you _ (marry)?', 'have been married', 'n'),
(36, 'exercise', 'I _ (live) in the same house since i was born.', 'have been living', 'n'),
(37, 'exercise', 'I _ (write) two best-selling crimes stories.', 'have been written', 'y'),
(38, 'exercise', 'I _ (write) two best-selling crimes stories.', 'have written', 'y'),
(39, 'exercise', 'I would rather live on a farm than to live in a city. (mistake)', 'I would rather live on a farm than live in a city.', 'n'),
(40, 'exercise', 'It''s no use asking them keep quiet. (mistake)', 'It''s no use asking them to keep quiet.', 'n'),
(41, 'exercise', 'My father doesn''t know speak English. (mistake)', 'My father doesn''t know how to speak English.', 'n'),
(42, 'exercise', 'She _ (write) her autobiography for the past 18 months.', 'has been writting', 'n'),
(43, 'exercise', 'The teacher was pleasing with the result of your examination. (mistake)', 'The teacher was pleased with the result of your examination.', 'n'),
(44, 'exercise', 'We can''t get everything we want from life, we must just make the best _ (preposition) it.', 'of', 'n'),
(45, 'exercise', 'Why don''t you borrow books in the local lending library? (mistake)', 'Why don''t you borrow books from the local lending library?', 'y'),
(46, 'exercise', 'Women wear make-up to beautiful themselves. (mistake)', 'Women wear make-up to beautify themselves.', 'y'),
(47, 'exercise', 'You have never been _ (prep) love or you wouldn''t speak like that.', 'in', 'n'),
(48, 'exercise', 'You should cope _ (prep) difficulties in order to succeed in life.', 'with', 'y'),
(49, 'exercise', 'I promise I _ (not tell) anyone about your secret.', 'will not tell', 'n'),
(50, 'exercise', 'I _ (visit) Andreia in the prison next week.', 'am going to visit', 'y'),
(51, 'exercise', 'I think Temer _ (resign) in two weeks time.', 'will resign', 'n'),
(52, 'exercise', 'By the end of the year, Eduardo _ (spend) a year in prison.', 'will have spent', 'n'),
(53, 'exercise', 'People, listen to me. The bus _ (leave) at 5 o''clock pm.', 'leaves', 'y'),
(54, 'exercise', 'It''s so hot in here! I _ (turn) on the air-conditioner.', 'will turn', 'y'),
(55, 'exercise', 'We _ (leave) tomorrow at 7 a.m., so you''d better get a good night sleep.', 'are leaving', 'n'),
(56, 'exercise', 'You can call me any time you want. I _ (wait) for your call.', 'will be waiting', 'y'),
(57, 'exercise', 'He is good _ (prep_ all sports.', 'at', 'y'),
(58, 'exercise', 'This car belongs _ (prep) my brother.', 'to', 'n'),
(59, 'exercise', 'Vegetarians live _ (prep) vegetables, fruit and nuts.', 'on', 'n'),
(60, 'exercise', 'The teacher said we had to learn all these expressions _ (prep) heart.', 'by', 'y'),
(61, 'exercise', 'She is famous _ (prep) her intelligence.', 'for', 'y'),
(62, 'exercise', 'I''m tired _ (prep) boiled eggs.', 'of', 'n'),
(63, 'grammar', 'cope', 'lidar', 'y'),
(64, 'grammar', 'blast', 'explosao', 'y'),
(65, 'grammar', 'stray cat', 'gato de rua', 'y'),
(66, 'grammar', 'furry', 'peludo', 'y'),
(67, 'grammar', 'outnumber', 'superar em numero', 'n'),
(68, 'exercise', 'I stopped to play football 20 years ago. (mistake)', 'I stopped playing football 20 years ago.', 'n'),
(69, 'exercise', 'Thanks for letting me to borrow your car. (mistake)', 'Thanks for letting me borrow your car.', 'y'),
(70, 'exercise', 'How about to play tennis at the weekend? (mistake)', 'How about playing tennis at the weekend?', 'n'),
(71, 'exercise', 'I went to the station for get my train. (mistake)', 'I went to the station to get my train.', 'y'),
(72, 'exercise', 'It isn''t easy learn to play the piano. (mistake)', 'It isn''t easy to learn to play the piano.', 'n'),
(73, 'exercise', 'To walk can be very relaxing. (mistake)', 'Walking can be very relaxing.', 'n'),
(74, 'grammar', 'fee', 'taxa', 'y'),
(75, 'grammar', 'tax', 'imposto', 'y'),
(76, 'grammar', 'struggle', 'luta', 'n'),
(77, 'exercise', 'I _ (not go) to the cinema since last year.', 'haven''t gone', 'n'),
(78, 'exercise', 'Kate has a much more interesting job/work in the company now.', 'job', 'n'),
(79, 'grammar', 'rodent', 'roedor', 'n'),
(80, 'grammar', 'spoonful', 'colherada', 'y'),
(81, 'grammar', 'attorney', 'advogado', 'n'),
(82, 'grammar', 'wrath', 'ira', 'y'),
(83, 'grammar', 'preacher', 'pregador', 'n'),
(84, 'grammar', 'on sale', 'promocao', 'n'),
(85, 'grammar', 'car hood', 'capo do carro', 'n'),
(86, 'grammar', 'carjacking', 'roubo de carro', 'n'),
(87, 'grammar', 'tease', 'provocar', 'y'),
(88, 'exercise', 'The museum _ (open) at 10 am daily.', 'opens', 'n'),
(89, 'exercise', 'By this time next year, Debora _ (speak) English fluently.', 'will be speaking', 'n'),
(90, 'exercise', 'By the end of the year, Debora _ (work) at Fitec for a year.', 'will have worked', 'y'),
(91, 'exercise', 'We _ (meet) the new clients tonight.', 'are meeting', 'n'),
(92, 'exercise', 'The boys _ (start) school on Monday.', 'start', 'n'),
(93, 'exercise', 'I save 50 dollars a month and i started in January. So, by the end of the year I _ (save) $600 dollars.', 'will have saved', 'n'),
(94, 'exercise', 'I _ (do) some shopping after class. I need to get some food.', 'am doing', 'n'),
(95, 'exercise', 'Don''t call me tomorrow at 10 oclock because I _ (drive).', 'will be driving', 'n'),
(96, 'grammar', 'kneel', 'ajoelhar', 'n'),
(97, 'grammar', 'bail', 'fianca', 'n'),
(98, 'grammar', 'vacancy', 'vaga', 'n'),
(99, 'grammar', 'mattress', 'colchao', 'n'),
(100, 'grammar', 'leash', 'coleira', 'y'),
(101, 'grammar', 'to bark', 'latir', 'y'),
(102, 'grammar', 'shrink', 'encolher', 'y'),
(103, 'grammar', 'to wound', 'ferir', 'y'),
(104, 'grammar', 'stewardess', 'comissaria de bordo', 'y'),
(105, 'grammar', 'to swell', 'inchar', 'n'),
(106, 'grammar', 'to sew', 'costurar', 'y'),
(107, 'grammar', 'leftover', 'sobra', 'y'),
(108, 'grammar', 'albeit', 'embora', 'n'),
(109, 'grammar', 'doze', 'repousar', 'n'),
(110, 'grammar', 'fleet', 'frota', 'n'),
(111, 'grammar', 'to blackmail', 'chantagear', 'n'),
(112, 'grammar', 'locksmith', 'chaveiro', 'n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('Age of Mythology', 'PC', 'Strategy', 'Completed', 'http://howlongtobeat.com/gameimages/225px-Age_of_Mythology_Liner.jpg'),
('Alan Wake', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Alan-wake-0.jpg'),
('Alien: Isolation', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Alien_Isolation.jpg'),
('Assassin''s Creed', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Assassins_Creed.jpg'),
('Assassin''s Creed II', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Assassins_Creed_2_Box_Art.JPG'),
('Batman: Arkham Asylum', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Arkham_Asylum.jpg'),
('Batman: Arkham City', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-ArkhamCity.jpg'),
('Batman: Arkham Knight', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Batman_Arkham_Knight_Cover_Art.jpg'),
('Batman: Arkham Origins', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Batman-Arkham-Origins-Box-Art.jpg'),
('BattleBlock Theater', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Battleblockcover.png'),
('BioShock', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Bioshockcoverfinalcropped.jpg'),
('Blur', 'Xbox 360', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/Blur_(video_game).jpg'),
('Bomberman World', 'Playstation', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-BombManWorldCover.jpg'),
('Braid', 'PC', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Braidlogo.jpg'),
('Brothers: A Tale of Two Sons', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Brothers_A_Tale_of_Two_Sons_cover_art.jpg'),
('Call of Duty', 'PC', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Codbox.jpg'),
('Call of Duty 2', 'PC', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Call_of_Duty_2_Box.jpg'),
('Call of Duty: Black Ops II', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/275px-Call_of_Duty_Black_Ops_II_Game_Cover.png'),
('Call of Duty: Modern Warfare 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Call_of_Duty_Modern_Warfare_3_box_art.png'),
('Castle Crashers', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Cboxcastlecrashers.jpg'),
('Castle of Illusion Starring Mickey Mouse', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Castleofillusionremake_2013.jpg'),
('Castlevania: Aria of Sorrow', 'Game Boy Advance', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-AriaofSorrowCover.jpg'),
('Castlevania: Dracula X', 'Super Nintendo', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/CastlevaniaDraculaX.JPG'),
('Castlevania: Lords of Shadow', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Castlevania_Lords_of_Shadow.png'),
('Castlevania: Lords of Shadow 2', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Castlevania_Lords_of_Shadow_2_boxart.jpg'),
('Castlevania: Symphony of the Night', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Castlevania_SOTN_PAL.jpg'),
('Catherine', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Catherine_Cover_Art.png'),
('Chrono Cross', 'Playstation', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Chronocrossbox.jpg'),
('Crash Bandicoot', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Crash_Bandicoot_Cover.png'),
('Crash Bandicoot 2: Cortex Strikes Back', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Crash2.jpg'),
('Crash Bandicoot 2: N-Tranced', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Crash_Bandicoot_2_-_N-Tranced_Coverart.png'),
('Crash Bandicoot 3: Warped', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Crash_Bandicoot_3_Warped_Original_Box_Art.jpg'),
('Crash Bandicoot: The Huge Adventure', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Crash_Huge_adventure.png'),
('Crash Bandicoot: The Wrath of Cortex', 'Xbox', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/CrashWrathofcortex_boxart.jpg'),
('Crash Bash', 'Playstation', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/252px-CrashBashCover.png'),
('Crash Nitro Kart', 'Xbox', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/256px-CrashNKConsoleFree.jpg'),
('Crash Team Racing', 'Playstation', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/CrashTeamRacingNACover.png'),
('Crash: Mind over Mutant', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Crash_-_Mind_over_Mutant_Coverart.png'),
('Crysis', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Crysis_Cover.jpg'),
('Cut the Rope', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/200px-Cut_the_Rope_logo.png'),
('Darksiders', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Darksiders_Cover.jpg'),
('Darkstalkers: The Night Warriors', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/DarkstalkersTheNightWarriors.JPG'),
('Daze Before Christmas', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Daze_before_christmas_box_art.jpg'),
('Dead Island', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/DeadIslandGameoftheYearEdition.jpg'),
('Dead Space', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Dead_Space_Box_Art.jpg'),
('Dead Space 2', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Dead_Space_2_Box_Art.jpg'),
('Dead Space 3', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Dead_Space_3_PC_game_cover.jpg'),
('Deadlight', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/DeadlightBox.jpg'),
('Deus Ex GO', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/39388_Deus_Ex_GO.jpg'),
('Dino Crisis', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Dino_Crisis.jpg'),
('Dino Crisis 2', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Dino_Crisis_2.jpg'),
('Dishonored', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/220px-Dishonored_box_art_Bethesda.jpg'),
('Disney Universe', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/251px-Disney-Universe.jpg'),
('Aladdin', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Disneys_Aladdin_Videogame_Cover.jpg'),
('Hercules Action Game', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Herculesactiongameposter.jpg'),
('Magical Quest 3 Starring Mickey & Donald', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/412lV6uIMIL.jpg'),
('Tarzan', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/220px-Tarzan_(video_game).jpg'),
('Donald Duck: Goin'' Quackers', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Donald_Duck_Quack_Attack.jpg'),
('Donkey Kong', 'Nintendinho', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/150px-Donkey_Kong_arcade.jpg'),
('Donkey Kong 3', 'Nintendinho', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Donkeykong3_arcade.jpg'),
('Donkey Kong Country', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Dkc_snes_boxart.jpg'),
('Donkey Kong Country 2: Diddy''s Kong Quest ', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/DK_Country_2.jpg'),
('Donkey Kong Country 3: Dixie Kong''s Double Trouble', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Dkc3_snes_boxart.jpg'),
('Donkey Kong Country Returns', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Donkeykongcountryreturns.jpg'),
('Donkey Kong Jr', 'Nintendinho', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Donkey_Kong_Jr._arcade_game.png'),
('Dragon Ball GT: Final Bout', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Db_gtfinalbout_box.jpg'),
('Dragon Ball Xenoverse', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/dragon-ball-xenoverse.jpg'),
('Dragon Ball Z: Budokai', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Dbzbox.jpg'),
('Dragon Ball Z: Budokai 3', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1814867-box_dbzb3_large.png'),
('Dragon Ball Z: Idainaru Dragon Ball Densetsu', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/2131800-dbz_psx_large.jpg'),
('Dragon Ball Z: Ultimate Battle 22', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1814883-box_dbzub22_large.png'),
('DuckTales: Remastered', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/DuckTales_Remastered.jpg'),
('El Chavo Kart', 'Xbox 360', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/ElChavoKart.jpg'),
('F.E.A.R.', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/FEAR_DVD_box_art.jpg'),
('Far Cry 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Far-cry-3-box-art-xbox-360.jpg'),
('Far Cry 4', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Far_Cry_4_box_art.jpg'),
('Far Cry', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/FarCryClassic.jpg'),
('Fatal Fury 2', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Fatal_Fury_2_cover.JPG'),
('Fatal Fury 3: Road to the Final Victory', 'Neo Geo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Fatal_Fury_3_(cover).jpg'),
('Fatal Fury: King of Fighters', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Fatal_Fury_(cover).jpg'),
('Fight Night Champion', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Fight_Night_Champion.jpg'),
('Fighting Force', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-PS2FightingForceCover.jpg'),
('Forza Horizon', 'Xbox 360', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Forza_Horizon_boxart.jpg'),
('Galerians', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Galerians_Coverart.png'),
('Gears of War', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Gears_of_War.png'),
('Gears of War 2', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Gow2_offbox.jpg'),
('Gears of War 3', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Gears_of_War_3_box_artwork.png'),
('Gears of War: Judgment', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Gears_of_War-_Judgment_cover.jpg'),
('God of War', 'Playstation 2', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Gowbox.jpg'),
('God of War II', 'Playstation 2', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Gow2-2.jpg'),
('God of War III', 'Playstation 4', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/256px-God_of_War_III_not_final_art.jpg'),
('Goof Troop', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-SNES_Goof_Troop_Box.jpg'),
('Grand Theft Auto 2', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Gta2cover.jpg'),
('Grand Theft Auto V', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/2006041-gta5_2_large.png'),
('Grand Theft Auto: San Andreas', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/GTASABOX.jpg'),
('Grand Theft Auto: Vice City', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Vice-city-cover.jpg'),
('Guacamelee!: Super Turbo Championship Edition', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Guacamelee!SuperTurboChampionshipEdition.jpg'),
('Guilty Gear', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Guilty_Gear_Coverart.png'),
('Guitar Hero', 'Playstation 2', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Guitarhero-cover.jpg'),
('Guitar Hero II', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Guitar_Hero_II.jpg'),
('Half-Life', 'PC', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Half-Life_Cover_Art.jpg'),
('Halo 2', 'Xbox', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Halo2-cover.png'),
('Halo: Combat Evolved', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Halo-combat-evolved-anniversary-dvd.jpg'),
('Harry Potter and the Chamber of Secrets', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Harry_Potter_and_the_Chamber_of_Secrets_Coverart.png'),
('Harry Potter and the Philosopher''s Stone', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/HPstonebox.jpg'),
('Harry Potter and the Prisoner of Azkaban', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-HP_prisoner_of_azkaban.png'),
('Hitman GO', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/HitmanGoscreen568x568.jpg'),
('Home Alone', 'Super Nintendo', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-HomeAlone1game.jpg'),
('Homefront', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Homefront.jpg'),
('How to Survive', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/HowToSurviveBoxartXBLA.jpg'),
('Injustice: Gods Among Us', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Injustice_Gods_Among_Us_Cover_Art.jpg'),
('Jackie Chan Stuntmaster', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/JackieChanStuntmaster.jpg'),
('Jurassic Park: The Game', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Jurassicpark-game-logo.jpg'),
('Killer Instinct', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Killer_Instinct_flyer.jpg'),
('Kirby: Nightmare in Dream Land', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/KirbyNightmareinDreamLand.png'),
('Klonoa: Door to Phantomile', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Klonoa_doortophplaystation_front.jpg'),
('Klonoa: Empire of Dreams', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Klonoa_Empire_of_Dreams_Packaging02.jpg'),
('Lara Croft and the Guardian of Light', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Lara_Croft_and_the_Guardian_of_Light_cover.jpg'),
('Leo''s Fortune', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/LeosFortune.jpg'),
('Limbo', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Cboxlimbo.jpg'),
('Lollipop Chainsaw', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Lollipop_Chainsaw_Cover_Art.png'),
('Lost: Via Domus', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-LostViaDomusCover_small.jpg'),
('Mario Kart 64', 'Nintendo 64', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mario_Kart_64box.png'),
('Mario Kart: Super Circuit', 'Game Boy Advance', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Circuit.jpg'),
('Mario vs. Donkey Kong', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mario_vs._Donkey_Kong_Coverart.png'),
('Marvel Super Heroes vs. Street Fighter', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Marvelsuperheroesvsstreetfighter_title.png'),
('Marvel vs. Capcom 2', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1856047-box_mvc2_large.jpg'),
('Marvel vs. Capcom: Clash of Super Heroes', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Marvel_vs_Capcom.png'),
('Max Payne', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Maxpaynebox.jpg'),
('Max Payne 2: The Fall of Max Payne', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Max_Payne_2.jpg'),
('Max Payne 3', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Maxpayne3.jpg'),
('Max: The Curse of Brotherhood', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Max,_The_Curse_of_Brotherhood_box_art.jpg'),
('Medal of Honor', 'Playstation', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Medal_of_Honor.png'),
('Mega Man', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Mega_Man_1_box_artwork.jpg'),
('Mega Man 2', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Megaman2_box.jpg'),
('Mega Man 3', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/200px-Megaman3_box.jpg'),
('Mega Man 4', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/200px-Megaman4_box.jpg'),
('Mega Man 5', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Megaman5_box.jpg'),
('Mega Man 6', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Megaman6_box.jpg'),
('Mega Man 7', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mega_Man_7_Coverart.jpg'),
('Mega Man 8', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mega_Man_8_Coverart.jpg'),
('Mega Man X', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Mega_Man_X_Coverart.png'),
('Metal Gear Solid', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Metal_Gear_Solid_cover_art.png'),
('Michael Jordan: Chaos in the Windy City', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/220px-MjordanSNES_boxart.jpg'),
('Middle-Earth: Shadow of Mordor', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Middle-earthShadowofMordor_292x136.jpg'),
('Mighty No. 9', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Mighty_No_9_splash.jpg'),
('Mortal Kombat', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_game_flyer.png'),
('Mortal Kombat 4', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/255px-Mortal_Kombat_4_cover.jpg'),
('Mortal Kombat II', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/205px-Mortal_Kombat_II_cover.JPG'),
('Mortal Kombat vs. DC Universe', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_vs._DC_Universe_Coverart.png'),
('Mortal Kombat X', 'Playstation 4', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_X_Cover_Art.png'),
('Mortal Kombat: Armageddon', 'Xbox', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/MKAPS2.jpg'),
('Mortal Kombat: Deadly Alliance', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/MortalKombatDeadlyAlliancecover.jpg'),
('Mortal Kombat: Deception', 'Xbox', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_-_Deception_Coverart.png'),
('Mortal Kombat 9', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_Komplete_Edition.jpg'),
('Need for Speed: Underground', 'PC', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/Nfsu-win-cover.jpg'),
('Need for Speed: Underground 2', 'PC', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/Nfsunderground2-win-cover.jpg'),
('New Super Mario Bros.', 'Nintendo DS', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-NewSuperMarioBrothers.jpg'),
('New Super Mario Bros. Wii', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-NewSuperMarioBrosWiiBoxart.png'),
('Newer Super Mario Bros. Wii', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/newer_super_mario_bros__wii.jpg'),
('Ninja Gaiden', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Ninja_Gaiden_(NES).jpg'),
('Ninja Gaiden II: The Dark Sword of Chaos', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Ninja_Gaiden_II-_The_Dark_Sword_of_Chaos_boxart.jpg'),
('Ninja Gaiden III: The Ancient Ship of Doom', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Ninja_Gaiden_III_The_Ancient_Ship_of_Doom.jpg'),
('Outlast', 'PC', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Outlast_cover.jpg'),
('Parasite Eve', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Parasite_Eve_Coverart.png'),
('Parasite Eve II', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Parasite_Eve_II_Coverart.png'),
('Pepsiman', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Pepsiman.jpg'),
('Plants vs. Zombies', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-PlantsVsZombiesCover400ppx.png'),
('Pokemon FireRed', 'Game Boy Advance', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/Pokemon_FireRed_Coverart.png'),
('Pokemon Ruby', 'Game Boy Advance', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/Pokemon_Ruby_NA.jpg'),
('Portal', 'PC', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Portal_standalonebox.jpg'),
('Portal 2', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Portal2cover.jpg'),
('Rayman Jungle Run', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/RaymanJungleRun.jpg'),
('Rayman Legends', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Rayman_Legends_Box_Art.jpg'),
('Rayman Origins', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Rayman_Origins_Box_Art.jpg'),
('Red Dead Redemption', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Red_Dead_Redemption.jpg'),
('Resident Evil', 'Playstation', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Resident_Evil_1_cover_art.jpg'),
('Resident Evil 3: Nemesis', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resident_Evil_3_Cover.jpg'),
('Resident Evil 4', 'PC', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resi4-gc-cover.jpg'),
('Resident Evil 5', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resident_Evil_5_Box_Artwork.jpg'),
('Resident Evil 6', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Resident_Evil_6_Cover_Art.png'),
('Resident Evil Code: Veronica X', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/610963-resident_evil_code_veronica_x_large.jpg'),
('Resident Evil Zero', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/33676_Resident_Evil_0_HD_Remaster.jpg'),
('Resident Evil: Revelations', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resident_evil_rev._2012_Capcom.png'),
('Resident Evil: Survivor', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-ResidentEvil_Survivor_front.jpg'),
('Resident Evil: The Umbrella Chronicles', 'Wii', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Resident_evil_the_umbrella_chronicles_uscover.jpg'),
('Rise of the Tomb Raider', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Rise_of_the_Tomb_Raider.jpg'),
('Rival Schools: United By Fate', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Rival_Schools_cover.jpg'),
('Saint Seiya: The Sanctuary', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1094259-foto_saint_seiya__knights_of_the_zodiac___the_sanctuary_large.jpg'),
('Silent Hill', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Silent_Hill_video_game_cover.png'),
('Silent Hill 2', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Silent_Hill_2.jpg'),
('Silent Hill 3', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sh3_boxart.jpg'),
('Silent Hill 4: The Room', 'Playstation 2', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Silent2002.jpg'),
('Sleeping Dogs', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/260px-Sleeping_Dogs_-_Square_Enix_video_game_cover.jpg'),
('Sonic & Knuckles', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/sonicandknuckles.jpg'),
('Sonic Generations', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic_Generations_Logo.jpg'),
('Sonic the Hedgehog', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic1_box_usa.jpg'),
('Sonic the Hedgehog 2', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic2_European_Box.jpg'),
('Sonic the Hedgehog 3', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Sonic3-box-us-225.jpg'),
('Sonic the Hedgehog 4: Episode 1', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic_4_Logo.png'),
('South Park: The Stick of Truth', 'Xbox 360', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/SouthParkTheStickOfTruth.jpg'),
('Spider-Man', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Smboxpsx.jpg'),
('Spider-Man 2', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spider-Man_2_Coverart_PC.png'),
('Spider-Man 2: Enter Electro', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spider-Man_2_-_Enter_Electro_Coverart.png'),
('SpongeBob SquarePants: Plankton''s Robotic Revenge', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/SpongeBob_SquarePants_Planktons_Robotic_Revenge_NA_game_cover.jpg'),
('Spyro the Dragon', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spyro_the_Dragon.jpg'),
('Spyro: Year of the Dragon', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spyro-year_of_the_dragon.png'),
('Street Fighter', 'Arcade', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Street_Fighter_game_flyer.png'),
('Street Fighter Alpha 2', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_Alpha_2_flyer.png'),
('Street Fighter Alpha 3', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_Alpha_3_flyer.png'),
('Street Fighter Alpha: Warriors'' Dreams', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_Alphawd_flyer.png'),
('Street Fighter EX Plus Alpha', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/StreetFighterEXPlusAlpha_large.png'),
('Street Fighter EX2 Plus', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/StreetFighterEXPlus.JPG'),
('Street Fighter II', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/9640-streetfighter-ii-wii_large.jpg'),
('Street Fighter III 3rd Strike: Fight for the Futur', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_III_3rd_Strike_(flyer).png'),
('Street Fighter X Tekken', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/StreetFighter-X-Tekken_box_art.jpg'),
('Super Bomberman', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super.Bomberman.Box.Art.SNES.PAL.png'),
('Super Bomberman 2', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Bomberman2SNES_boxart.JPG'),
('Super Bomberman 3', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Superbomberman3boxart.jpg'),
('Super Bomberman 4', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Super_bomberman_4.jpeg'),
('Super Bomberman 5', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/200px-SuperBomberman5.jpg'),
('Super Mario Bros.', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_Bros._box.png'),
('Super Mario Bros. 2', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_Bros_2.jpg'),
('Super Mario Bros. 3', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_Bros._3_coverart.png'),
('Super Mario Bros.: The Lost Levels', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mariobros2japanbox.jpg'),
('Super Mario Galaxy', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-SuperMarioGalaxy.jpg'),
('Super Mario Galaxy 2', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Super_Mario_Galaxy_2_Box_Art.jpg'),
('Super Mario Kart', 'Super Nintendo', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Supermariokart_box.JPG'),
('Super Mario World', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_World_Coverart.png'),
('Super Mario World 2: Yoshi''s Island', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Yisland_box.jpg'),
('Super Metroid', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Smetroidbox.jpg'),
('Super Smash Bros.', 'Nintendo 64', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Supersmashbox.jpg'),
('Super Smash Bros. Melee', 'GameCube', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Smash_Bros_Melee_Players_Ch.jpg'),
('Super Street Fighter IV', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/SuperSF4.jpg'),
('Ultimate Marvel vs. Capcom 3', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/UMvC3_Cover.jpg'),
('Ultimate Mortal Kombat 3', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Ultimate_MK3.png'),
('Uncharted: Drake''s Fortune', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Uncharted_Drakes_Fortune.jpg'),
('Up', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Up_video_game.jpg'),
('VVVVVV', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/header_292x136.jpg'),
('X-Men vs. Street Fighter', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Xmenvsstreetfighter_title.png'),
('You Must Build A Boat', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/You_Must_Build_A_Boat_header.jpg'),
('Zombi', 'Playstation 4', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/ZombiU_Box_Art_(Final).jpg'),
('Tekken', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1791096-box_Tekken_large.png'),
('Tekken 2', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Tekken2_1995.jpg'),
('Tekken 3', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-T3usposter.jpg'),
('Tekken 4', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Tekken_4_Coverart.png'),
('Tekken 5', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Tekken5Cover.jpg'),
('Tekken 6', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Tekken6cover.jpg'),
('The Amazing Spider-Man', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/The_Amazing_Spider_Man_2012_video_game_cover.jpg'),
('The Evil Within', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/The_Evil_Within_logo.jpg'),
('The House of the Dead', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/1790006-box_hotd_large.png'),
('The House of the Dead 2', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-House_Of_The_Dead_2Thelogo.png'),
('The House of the Dead III', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_House_of_the_Dead_III_Poster.png'),
('The House of the Dead: Overkill', 'Wii', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_House_of_the_Dead_Overkill_USA.jpg'),
('Table Top Racing: World Tour', 'Playstation 4', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/36980_Table_Top_Racing_World_Tour.jpg'),
('The Jungle Book', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Jungle_Book_game_cover.jpg'),
('The King of Fighters ''94', 'Neo Geo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/The_King_of_Fighters_94_-_poster.jpg'),
('The King of Fighters ''95', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/KOF95_flyer.jpg'),
('The King of Fighters ''99', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-The_King_of_Fighters_99_-_poster.jpg'),
('The King of Fighters XII', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/The_King_of_Fighters_XII_(flyer).jpg'),
('The Last of Us', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/TheLastofUsRemastered.jpg'),
('The Legend of Zelda: A Link to the Past', 'Super Nintendo', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Zelda_SNES.jpg'),
('The Lion King', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/The_Lion_King_Coverart.png'),
('The Lost Vikings', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/256px-The_Lost_Vikings_SNES_cover.jpg'),
('The Simpsons Game', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/The_Simpsons_Game_XBOX_360_Cover.jpg'),
('The Sims Bustin'' Out', 'Game Boy Advance', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Bustingoutbox.jpg'),
('The Smurfs 2', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/TheSmurfs2.jpg'),
('The Urbz: Sims in the City', 'Game Boy Advance', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/The_Urbz_-_Sims_in_the_City_Coverart.png'),
('The Walking Dead', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_Walking_Dead-game-cover.jpg'),
('This War of Mine', 'Android', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/This_War_of_Mine_header.jpg'),
('Thomas Was Alone', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/2248655-twa_poster_large.png'),
('Tom and Jerry', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/1548823-tomandjerrysnes_large.jpg'),
('Tom Clancy''s Ghost Recon: Future Soldier', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-GR_Future_Soldier_360.jpg'),
('Tom Clancy''s Splinter Cell: Blacklist', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Tom_Clancys_Splinter_Cell_Blacklist_box_art.png'),
('Tom Clancy''s Splinter Cell: Conviction', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Tom_Clancys_Splinter_Cell_Conviction.jpg'),
('Tomb Raider', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Tr2011cover.jpg'),
('Top Gear', 'Super Nintendo', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Top_Gear_Coverart.png'),
('Toy Story 2: Buzz Lightyear to the Rescue', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Toystory264.jpg'),
('Toy Story 3: The Video Game', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/255px-Toy_Story_3_Cover_Art.jpg'),
('Kirby''s Return to Dream Land', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Kirbys_return_to_dreamland_boxart.jpg'),
('Dante''s Inferno', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Dantes_Inferno.jpg'),
('Mirror''s Edge', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Mirrors_Edge.jpg'),
('Inside', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/INSIDE_banner.jpg'),
('Halo 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Halo_3_final_boxshot.JPG'),
('Wario Land 4', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Wario_Land_4_Coverart.jpg'),
('Breath of Fire IV', 'Playstation', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/256px-BoFIVBox.png'),
('Call of Duty 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Cod3_box.jpg'),
('Castlevania: Lords of Shadow - Mirror of Fate', 'Nintendo 3DS', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/castlevania_MirrorOfFate.jpg'),
('Chrono Trigger', 'Super Nintendo', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Chrono_Trigger.jpg'),
('Crash Bandicoot Purple: Ripto''s Rampage', 'Game Boy Advance', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Crash_Bandicoot_Purple_-_Riptos_Rampage_Coverart.png'),
('Crash Twinsanity', 'Xbox', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/245px-Crash_Twinsanity_Coverart.jpg'),
('Destiny', 'Playstation 4', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Destiny_box_art.png'),
('Fatal Frame', 'Xbox', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/Fatal_Frame_Coverart.png'),
('Fez', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Fez_cover.png'),
('Gex', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/200px-GexCover.jpg'),
('Ico', 'Playstation 2', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Box-l-jp.jpg'),
('Journey', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Journey_logo_lowres.jpg'),
('Kingdom Hearts', 'Playstation 2', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Kingdom_Hearts.jpg'),
('Lara Croft and the Temple of Osiris', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/lara-croft-and-the-temple-54840cc30d78b.jpg'),
('Life is Strange', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/LifeIsStrange.jpg'),
('Lords of the Fallen', 'Playstation 4', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/Lords_of_The_Fallen.png'),
('Resident Evil: Revelations 2', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/ResidentEvilRevelations2.jpg'),
('Resident Evil: The Darkside Chronicles', 'Wii', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-REDC_Cover.jpg'),
('Shadow Complex', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Shadow_Complex_cover.jpg'),
('Shadow of the Colossus', 'Playstation 2', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Sotc_boxart.jpg'),
('Sonic the Hedgehog 4: Episode 2', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/SonictheHedgehog4pisode292x136.jpg'),
('Super Mario 64', 'Nintendo 64', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Super_Mario_64_box_cover.jpg'),
('The King of Fighters XIII', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Kofxiiips3.jpg'),
('Uncharted 2: Among Thieves', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Uncharted_2_updated_PS3_logo.jpg'),
('Uncharted 3: Drake''s Deception', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Uncharted_3_Boxart.jpg'),
('Saint Seiya: Soldiers'' Soul', 'Playstation 4', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/saint-seiya-soldiers-soul-jaquette.jpg'),
('Spider-Man: Shattered Dimensions', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spider-Man_Shattered_Dimensions_cover.jpg'),
('Furi', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/30957_Furi.jpg'),
('Eternal Darkness: Sanity''s Requiem', 'GameCube', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Eternal_Darkness_box.jpg'),
('Luigi''s Mansion', 'GameCube', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Lmbox.jpg'),
('Super Mario Sunshine', 'GameCube', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Super_mario_sunshine.jpg'),
('Metroid Prime', 'GameCube', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-MetroidPrimebox.jpg'),
('Alundra', 'Playstation', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Alundra.jpg'),
('Mega Man Legends', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-MMLegendsBox.jpg'),
('Knack', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Knack.jpg'),
('Mega Man Zero', 'Game Boy Advance', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Mega_Man_Zero_cover.jpg'),
('Bastion', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Bastion_Boxart.jpg'),
('Prince of Persia: The Sands of Time', 'Xbox', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Sands_of_time_cover.jpg'),
('Magical Quest starring Mickey Mouse', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/DisneysMagicalQueststarringMickeyMouse.jpg'),
('Shadows of The Damned', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/ShadowsOfTheDamned.jpg'),
('Fifa 17', 'Playstation 4', 'Sports', 'Completed', 'http://howlongtobeat.com/gameimages/38724_FIFA_17.jpeg'),
('Diddy Kong Racing', 'Nintendo 64', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-DKRboxart.jpg'),
('Donkey Kong 64', 'Nintendo 64', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-DonkeyKong64CoverArt.jpg'),
('The Legend of Zelda: Ocarina of Time', 'Nintendo 3DS', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-ZeldaOoTbox.png'),
('Commandos: Behind Enemy Lines', 'PC', 'Strategy', 'Completed', 'http://howlongtobeat.com/gameimages/Commandos_Behind_Enemy_Lines.jpg'),
('Sonic Advance', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic_Advance_Coverart.png'),
('Sonic Colors', 'Wii', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Sonic_Colors_box_artwork.png'),
('Paper Mario', 'Nintendo 64', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/Papermario.jpg'),
('Left 4 Dead', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Left4Dead_Windows_cover.jpg'),
('Left 4 Dead 2', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Left4Dead2.jpg'),
('Watch Dogs', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/watch_dogs.jpg'),
('Titan Souls', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/tital-souls-poster.jpg'),
('Gone Home', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/gone_home_292x136.jpg'),
('Everybody''s Gone to the Rapture', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Everybodys_gone_to_the_rapture_logo.jpg'),
('The Deadly Tower of Monsters', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/33154_The_Deadly_Tower_of_Monsters.jpg'),
('Castlevania: Circle of the Moon', 'Game Boy Advance', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Castlevania_CotM_boxart.jpg'),
('Until Dawn', 'Playstation 4', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/until-dawn-ps4.jpg'),
('Zero the Kamikaze Squirrel', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Zero_the_Kamikaze_Squirrel.jpg'),
('Mortal Kombat: Shaolin Monks', 'Playstation 2', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/MortalKombatShaolinMonks.JPG'),
('Earthworm Jim', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Earthworm_Jim_(EUR).PNG'),
('The 3rd Birthday', 'PSP', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_3rd_Birthday_Cover.jpg'),
('God of War: Chains of Olympus', 'PSP', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/252px-God_of_War_Chains_of_Olympus_NA_version_front_cover.jpg'),
('God of War: Ghost of Sparta', 'PSP', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-GOW_Ghost_of_Sparta_boxart.jpg'),
('Mega Man Powered Up', 'PSP', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/1806095-box_mmpu_large.png'),
('Mega Man Maverick Hunter X', 'PSP', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/1806108-box_mmxmh_large.png'),
('LittleBigPlanet', 'PSP', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Littlebigplanet-psp-box.jpg'),
('Rayman Fiesta Run', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Rayman-Fiesta-Run.jpg'),
('Monument Valley ', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Monument_Valley_icon_unrounded.jpg'),
('Invisible, Inc.', 'Playstation 4', 'Strategy', 'Completed', 'http://howlongtobeat.com/gameimages/Invisible_Inc_header.jpg'),
('Stories: Path of Destinies', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/35878_Stories_The_Path_Of_Destinies.jpg'),
('Alex Kidd in Miracle World', 'Master System', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/240px-AlexKiddInMiracleWorldBox.jpg'),
('Super Mario Land', 'Game Boy', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Supermariolandboxart.jpg'),
('Castle of Illusion Starring Mickey Mouse', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/Castle_of_illusion_Mickey_mouse.jpg'),
('Land of Illusion Starring Mickey Mouse', 'Master System', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/Land_of_Illusion_starring_Mickey_Mouse_Coverart.png'),
('World of Illusion Starring Mickey Mouse and Donald', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/230px-Mickey_World_Of_Illusion_box_art.jpg'),
('Mickey Mania: The Timeless Adventures of Mickey Mo', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/Mickey_Mania.jpg'),
('Epic Mickey', 'Wii', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/Epic_Mickey.jpg'),
('Disney''s Pocahontas', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/870917-g06740rkpd1_large.jpg'),
('Aladdin', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/Disneys_Aladdin_Videogame_Cover.jpg'),
('Mega Man X2', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Mmx2_box.jpg'),
('Can you Escape', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/CanyouEscapeandrod.jpg'),
('Can you Escape 2', 'Android', 'Puzzle', 'Completed', ''),
('Doom', 'Playstation', 'FPS', 'Completed', 'https://howlongtobeat.com/gameimages/256px-Doom-boxart.jpg'),
('Kid Chameleon', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Kid_Chameleon_Coverart.png'),
('QuackShot', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Quackshot.jpg'),
('Ninja Senki DX', 'Playstation 4', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/34875_Ninja_Senki_DX.jpg'),
('Can you Escape 5', 'Android', 'Puzzle', 'Completed', ''),
('Bomberman', 'PSP', 'Strategy', 'Backlog', 'https://howlongtobeat.com/gameimages/252px-Bomberman_PSP.jpg'),
('Halo: Reach', 'Xbox 360', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/Halo-_Reach_box_art.png'),
('Grand Theft Auto: Liberty City Stories', 'PSP', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/252px-Grand_Theft_Auto_Liberty_City_Stories_box.jpg'),
('Dragon Ball: Advanced Adventure', 'Game Boy Advance', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Dragonball-gba.jpg'),
('Jurassic Park', 'Mega Drive', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/200px-Jurassic_Park_(Sega_game).jpg'),
('Binary Domain', 'Xbox 360', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/Binary_Domain_Cover_Art.png'),
('Donald in Maui Mallard', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Mauimallard.jpg'),
('Tearaway Unfolded', 'Playstation 4', 'Adventure', 'Completed', 'https://howlongtobeat.com/gameimages/Tearaway_Unfolded.jpg'),
('Mirror''s Edge: Catalyst', 'Playstation 4', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/mirrors_edge_2.jpg'),
('Fable', 'Xbox 360', 'RPG', 'Backlog', 'https://howlongtobeat.com/gameimages/Fable_Anniversary.jpg'),
('New Super Mario Bros. 2', 'Nintendo 3DS', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Newsupermariobros2boxart.jpg'),
('Scribblenauts', 'Nintendo DS', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/256px-Scribblenauts_cover.jpg'),
('Mario vs. Donkey Kong 2: March of the Minis', 'Nintendo DS', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Mario-vs-donkey-kong-2-march-of-the-minis-20060614044530943.jpg');
INSERT INTO `games` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('Super Mario 3D Land', 'Nintendo 3DS', 'Adventure', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Super-Mario-3D-Land-Logo.jpg'),
('Trauma Center: Under the Knife', 'Nintendo DS', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Traumacenterbox.jpg'),
('Mario Kart DS', 'Nintendo DS', 'Racing', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Mario_Kart_DS.jpg'),
('Batman: Arkham Origins Blackgate', 'Nintendo 3DS', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Batman_Arkham_Origins_Blackgate_cover.jpg'),
('Professor Layton and the Curious Village', 'Nintendo DS', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Professor_Layton_and_the_Curious_Village_NA_Boxart.JPG'),
('The Order: 1886', 'Playstation 4', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/TheOrder1886.jpg'),
('Shovel Knight', 'Nintendo 3DS', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/shovelknight292x136.jpg'),
('Jak and Daxter: The Precursor Legacy', 'Playstation 2', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Jak_and_Daxter_-_The_Precursor_Legacy_Coverart.png'),
('Resident Evil', 'Playstation 4', 'Survival Horror', 'Backlog', 'https://howlongtobeat.com/gameimages/Resident_Evil_HD_Remaster.jpg'),
('10000000', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/10000000_ios.jpg'),
('Tricky Towers', 'Playstation 4', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/38919_Tricky_Towers.jpg'),
('Neighbours from Hell', 'GameCube', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/Neighbors_from_Hell_Coverart.png'),
('Yoshi''s Island DS', 'Nintendo DS', 'Plattform', 'Playing', 'https://howlongtobeat.com/gameimages/250px-YoshisIslandDScover.PNG'),
('Lara Croft GO', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/Lara_croft_go_logo.png'),
('Mario Party', 'Nintendo 64', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/Marioparty1.jpg'),
('Mario Party 2', 'Nintendo 64', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/Marioparty2.jpg'),
('Mario Party 3', 'Nintendo 64', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/Marioparty3.jpg'),
('Crazy Freekick', 'Android', 'Puzzle', 'Completed', ''),
('Angry Birds', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Angry_Birds_promo_art.png'),
('Hidden my game by mom', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/39837_Hidden_my_game_by_mom.jpg'),
('DreadOut', 'PC', 'Survival Horror', 'Backlog', 'https://howlongtobeat.com/gameimages/DreadOut_292x136.jpg'),
('Cube Escape: Seasons', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/32484_Cube_Escape_Seasons.png'),
('Super Dangerous Dungeons', 'Android', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/37368_Super_Dangerous_Dungeons.jpg'),
('Lovers In A Dangerous Spacetime', 'Playstation 4', 'Adventure', 'Completed', 'https://howlongtobeat.com/gameimages/Lovers_In_A_Dangerous_Spacetime_header.jpg'),
('Hidden my game by mom 2', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/42956_Hidden_my_game_by_mom_2.jpg'),
('Little Big Adventure', 'PC', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Little_Big_Adventure.jpg'),
('Spy Chameleon', 'Playstation 4', 'Adventure', 'Completed', 'https://howlongtobeat.com/gameimages/Spy%20hameleon-RGBAgent_branding.png'),
('Just Cause 3', 'Playstation 4', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Just_Cause_3_cover_art.jpg'),
('inFAMOUS: Second Son', 'Playstation 4', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/Infamous_second_son_boxart.jpg'),
('Tiny Dangerous Dungeons', 'Android', 'Adventure', 'Completed', 'https://howlongtobeat.com/gameimages/30572_Tiny_Dangerous_Dungeons.jpg'),
('Commandos 2: Men of Courage', 'PC', 'Strategy', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Commandos2Box.jpg'),
('Cube Escape: The Cave', 'Android', 'Puzzle', 'Completed', ''),
('Cuphead', 'PC', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/cuphead-250.jpg'),
('Cube Escape: Case 23', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/32487_Cube_Escape_Case_23.jpg'),
('Trine', 'Playstation 4', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/Trine.png'),
('Titanfall 2', 'Playstation 4', 'FPS', 'Completed', 'https://howlongtobeat.com/gameimages/38000_Titanfall_2.jpeg'),
('Cube Escape: Birthday', 'Android', 'Puzzle', 'Playing', 'https://howlongtobeat.com/gameimages/36047_Cube_Escape_Birthday.jpg'),
('BlazBlue: Calamity Trigger', 'Xbox 360', 'Fighting', 'Playing', 'https://howlongtobeat.com/gameimages/BlazBlueCalamityTrigger.jpg'),
('999: Nine Hours, Nine Persons, Nine Doors', 'Nintendo DS', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/999_Cover_Art.jpg'),
('007: Tomorrow Never Dies', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Tomorrow_Never_Dies_Coverart.png'),
('Beyond Good & Evil', 'Xbox 360', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/BGE-cover.jpg'),
('Looney Tunes: Sheep Raider', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/SheepRaider.JPG'),
('Chibi-Robo!', 'GameCube', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Chibi_Robo.jpg'),
('James Bond 007: The Duel', 'Mega Drive', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/200px-James_Bond_-_The_Duel_Coverart.png'),
('Air Combat', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Air_Combat_cover.jpg'),
('ActRaiser', 'Super Nintendo', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/ActRaiser_Coverart.png'),
('The Adventures of Lomax', 'Playstation', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-The_Adventures_of_Lomax.jpg'),
('Aero Fighters', 'Super Nintendo', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Aero_Fighters_Poster.png'),
('The Chronicles of Riddick: Escape from Butcher Bay', 'Xbox 360', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/RiddickButcherBay.jpg'),
('Aero the Acro-Bat', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/200px-Aero_the_Acro-Bat_cover.jpg'),
('The Warriors', 'PSP', 'Beat ''em up', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Thewarriorscover.jpg'),
('Aliens vs. Predator', 'Xbox 360', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/Aliens_vs_Predator_cover.jpg'),
('Alien Trilogy', 'Playstation', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Alien_Trilogy.jpg'),
('Die Hard Trilogy', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Die_Hard_Trilogy_Coverart.png'),
('Alex Kidd in the Enchanted Castle', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/252px-Alexkiddenchantedcastle1.jpg'),
('Hard Corps: Uprising', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Hard_Corpsuprising_cover.png'),
('Alex Kidd in Shinobi World', 'Master System', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-AlexKiddInShinobiWorld.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hqs`
--

CREATE TABLE `hqs` (
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `hqs`
--

INSERT INTO `hqs` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('The Amazing Spider-Man', '', '10', 'Read', 'https://cache.skoob.com.br/local/images//Vb4QzMCMYwbDJ11VesB1RYozmVE=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/228079/THE_AMAZING_SPIDERMAN_A01_1332730947B.jpg'),
('Batman - Os Novos 52', '', '5', 'Read', 'https://cache.skoob.com.br/local/images//_o7mtQBd2zt4RVGj8uyWuendOws=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/281652/BATMAN_A2_OS_NOVOS_52_1353242506B.jpg'),
('Turma da MÃ´nica Jovem', '', '1', 'Read', 'https://cache.skoob.com.br/local/images//5jrrwt6s2m77aPybpsiWwf5ZVD4=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/13094/TURMA_DA_MONICA_JOVEM__N_1_1250981098B.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movies`
--

CREATE TABLE `movies` (
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movies`
--

INSERT INTO `movies` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('The Shallows', '', 'Thriller', 'Watched', 'https://img.fstatic.com/jf_3Yjh9GelG2j4IA13kDQdvpEI=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/the-shallows_t129743_PlZdqMQ.jpg'),
('Lights Out', '', 'Horror', 'Watched', 'https://img.fstatic.com/c4G-VJ25KhQoigI8zthEKmuMQjA=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/lights-out_t127697_gnnjyUI.jpg'),
('Batman v Superman: Dawn of Justice', '', 'Action', 'Watched', 'https://img.fstatic.com/AbpOBq3eJBSETygcATLhHnFciis=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/batman-vs-superman-a-origem-da-justica_t80724_1CZbljI.jpg-large'),
('Underworld', '', 'Thriller', 'Watched', 'https://img.fstatic.com/vjz3ZyBwqlQxnJX2_qRYvbb6NQ4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2009/02/a4e901b5c8cc7247e453628f47460fe4.jpg'),
('Train to Busan', '', 'Thriller', 'Watched', 'https://img.fstatic.com/aUX22wibpNs176FZuODV26o5R4k=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/09/2016080718282153128_1.jpg'),
('Under the Shadow', '', 'Thriller', 'Watched', 'https://img.fstatic.com/bixrNaBgYLsoU3Ew-nUEpywGQhM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/11/Sob_as_Sombras.jpg'),
('The Awakening', '', 'Thriller', 'Watched', 'https://img.fstatic.com/33RrOh1kp_jyUmD9wa4FaQHkuXg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/11/dec2a4db32f125c7ce5f6eafe1ad97ac.jpg'),
('Resident Evil: The Final Chapter', '', 'Thriller', 'Watched', 'https://img.fstatic.com/2HR4oWQTt_C4scK29qyf4R73HT0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/12/resident-evil-final-poster.jpg'),
('The Invitation', '', 'Thriller', 'Watched', 'https://img.fstatic.com/zW1FXc1oeZYATR1-OkPutBBqM5s=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/03/a-invasao_t66623.jpg'),
('Blair Witch', '', 'Horror', 'Watched', 'https://img.fstatic.com/XrW1jusbmgHwOkeNqm7FEbB3ohc=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/08/POSTERBR_TEASER_BRUXA_DE_BLAIR_BX.jpg'),
('The Village', '', 'Horror', 'Watched', 'https://img.fstatic.com/QlFW2u9bFcgLfm52cGU-C2IQ9yI=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/3e0490ab455a793b0da12486c6803853.jpg'),
('Don''t Breathe', '', 'Thriller', 'Watched', 'https://img.fstatic.com/37taWAPaEhLrO26s5YWCH2kGsFM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/a-man-in-the-dark_t109812.jpg'),
('The Grey', '', 'Thriller', 'Watched', 'https://img.fstatic.com/Q9w4AK_l9xdWq51umdPRyh8dYJU=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/10/e75d3d63c2a12ad3fd282e441789373e.jpg'),
('As Above, So Below', '', 'Horror', 'Watched', 'https://img.fstatic.com/2GpFUQ6oGjj16VqMXswTX62DHJU=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/09/assim-na-terra-como-no-inferno_t98447_2.jpg'),
('Alien', '', 'Horror', 'Watched', 'https://img.fstatic.com/HMM1BnXWeNmwZJUZNtyvTGVd0Jg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/07/d28542fd52174b0f054c4c9e170a0fa2.jpg'),
('Aliens', '', 'Horror', 'Watched', 'https://img.fstatic.com/PYXM1STc92EtoLkF44O2KHO9A9A=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/10/aliens-o-resgate_t172.jpg'),
('Alien: Resurrection', '', 'Horror', 'Watched', 'https://img.fstatic.com/q3AfUDwGzuW_6SuHXyH9xvfUtNw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/07/62fad408795cc3f2209fa84c2026166e.jpg'),
('Alien 3', '', 'Horror', 'Watched', 'https://img.fstatic.com/48kovkkdVyI-3mN3-2lUN_hOoxg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/01/9471ed2b257533ec46dcaa211a82b9ee.jpg'),
('Prometheus', '', 'Thriller', 'Watched', 'https://img.fstatic.com/rD6xNB5ceLiy2phO_j5B8ez6-N8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/36a92737ceda833425f8e24749f2eab0.jpg'),
('Logan', '', 'Action', 'Watched', 'https://img.fstatic.com/1HCZ9Ha3iSZg-SzhFIeJcVcRqSI=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/10/14608719_1245010155537115_4558418574340565173_o.jpg'),
('Resident Evil', '', 'Thriller', 'Watched', 'https://img.fstatic.com/dKoNrc7w-lWDVBUOBbms8O8Uwt8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/01/cfec50d29516f4de75e2514763fecf65.jpg'),
('Resident Evil: Extinction', '', 'Thriller', 'Watched', 'https://img.fstatic.com/BevqLB5poAiyLd0985Ff6AS3w1A=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/01/residentevil3extincion13-bra.jpg'),
('Resident Evil: Apocalypse', '', 'Thriller', 'Watched', 'https://img.fstatic.com/AjoSPU5z2sbRhG1Y1bVnKlG7sp8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/01/e16ef70343080ba64c7ae1a279a48dd4.jpg'),
('Resident Evil: Afterlife', '', 'Thriller', 'Watched', 'https://img.fstatic.com/Yv7-dOEo0P3FTw_OAwp12AivcWY=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/09/7b68d71bbaab2607c7f69eabb211994c.jpg'),
('Resident Evil: Retribution', '', 'Thriller', 'Watched', 'https://img.fstatic.com/zH31UIq1p9wnEkWHOqp7her2aZ0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/05/8fcc7961db2ecc11291e8a92eacbbc62.jpg'),
('Resident Evil: Degeneration', '', 'Thriller', 'Watched', 'https://img.fstatic.com/ixN-t8FgL1Wm1ujsPW7yS84yc98=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/09/7be7a294cc33e84de91ee0dc7a1972d7.jpg'),
('Resident Evil: Damnation', '', 'Thriller', 'Watched', 'https://img.fstatic.com/YYAqY55ZdiIXDekBOIzhs6-t83Q=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/08/fa25e61fddd5845bdeda647725eb251f.jpg'),
('Harry Potter and the Sorcerer''s Stone', '', 'Fantasy', 'Watched', 'https://img.fstatic.com/ZMnHBf0CHPVFaFRmVH2tFv-ScjA=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/f7f30f82583e85cf847a8072cf9dfb83.jpg'),
('Harry Potter and the Chamber of Secrets', '', 'Fantasy', 'Watched', 'https://img.fstatic.com/G1G3W2As-xFkYx629WNyPAkX304=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/615c215203315947623f2a2d71be3c3a.jpg'),
('Harry Potter and the Prisoner of Azkaban', '', 'Fantasy', 'Watched', 'https://img.fstatic.com/159dM05LnfFs0F-hIu1oTefqHl4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/07/0090f711c361759d864a20d150f16133.jpg'),
('Harry Potter and the Goblet of Fire', '', 'Fantasy', 'Watched', 'https://img.fstatic.com/tgBtPy1vhrALs0zgzKTBO38TOnM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/14d55f09f349db301d78f4f06dd59b1b.jpg'),
('Arrival', '', 'Drama', 'Watched', 'https://img.fstatic.com/paepjG2Gl9FiZlPcuyJ52n5kcpk=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/08/chegada_2-1.jpg'),
('Assassin''s Creed', '', 'Action', 'Watched', 'https://img.fstatic.com/4cmdCX_W8M7Kpopl9WpMfk6V1Z4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/05/assassin-s-creed_t61044_Zfqdrxq.jpg'),
('Hush', '', 'Thriller', 'Watched', 'https://img.fstatic.com/-PLH8xDoI9pcWkKRoxuRhd3cw9U=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/hush_t192328.jpg'),
('10, Cloverfield Lane', '', 'Thriller', 'Watched', 'https://img.fstatic.com/nz7D3LvK9su0Ls-rpAQzexalIB8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/02/rua-cloverfield-10_t24360.jpg'),
('The Conjuring', '', 'Horror', 'Watched', 'https://img.fstatic.com/casdVdBquXWddtHcESJa8Fxv6Zc=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/04/d0b7c5c989e1717f4c27431f9c11ad47.jpg'),
('The Conjuring 2', '', 'Horror', 'Watched', 'https://img.fstatic.com/KGrE06RumgdIp15wVhUSEHC-_Qw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/01/invocacao-do-mal-2_t82649_zFSXx5Q.jpg'),
('The Witch', '', 'Horror', 'Watched', 'https://img.fstatic.com/GM-vSLcVt_DyO8LCvG7YqwZLQNM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/a-bruxa_t113126.jpeg'),
('[REC]', '', 'Horror', 'Watched', 'https://img.fstatic.com/7yJnAy1Kfv5JHhWqjG8U_VSyJ9A=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/09/fc7c4d64fa3d88f84e7a80d818ab7607.jpg'),
('[Rec]Â²', '', 'Horror', 'Watched', 'https://img.fstatic.com/DsOrA0UvlHlVzOsSe_OfYQdJ1sY=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/08/6091b7768647466892059657d314bc79.jpg'),
('47 Meters Down', '', 'Thriller', 'Watched', 'https://img.fstatic.com/H7wVViZeq-T_Cwp8h_ZP3xOPA9I=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/01/47-meters-down_t105765.jpg'),
('Signs', '', 'Thriller', 'Watched', 'https://img.fstatic.com/z_8Znlb6Db-0SVCvoHq05mkYGuQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/1227cfe52564a280f0f4995e6a5ec702.jpg'),
('Green Room', '', 'Horror', 'Watched', 'https://img.fstatic.com/GjomOIL9kK5i8lyqMLHnlCmamb0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/green-room_t99884.jpg'),
('The Monster', '', 'Horror', 'Watched', 'https://img.fstatic.com/4mFgEcp6fCa2oRUgDdrIDSuo9B4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/11/The_Monster_poster.jpg'),
('X-Men Origins: Wolverine', '', 'Action', 'Watched', 'https://img.fstatic.com/a6YlLlzR_7CFJRKXmtSgOwlQIX8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/01/751b843ee50b19a44ef49aad544dbf58.jpg'),
('X-Men', '', 'Action', 'Watched', 'https://img.fstatic.com/2fMfSBPKnIMbn33OMd6QDsWCMds=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/39826605e7002dbda8dd59addac86d18.jpg'),
('Snowpiercer', '', 'Drama', 'Watched', 'https://img.fstatic.com/rjmpVyJDFHJuZUhdl1KLIobb3Vo=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/07/o-expresso-do-amanha_t51518_UW675Zi.jpg'),
('Before I Wake', '', 'Thriller', 'Watched', 'https://img.fstatic.com/OPQi0EiAD4hTAPKvo2U17CKiYYE=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/o-sono-da-morte_t93024.jpg'),
('Jeepers Creepers', '', 'Horror', 'Watched', 'https://img.fstatic.com/ekbmIuePKosYT56kVliOK0FLB24=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/1a55a340698488c6a48449c970066a13.jpg'),
('Rings', '', 'Thriller', 'Watched', 'https://img.fstatic.com/ZNm_devx8L_Dpc471rPJg2Yy9nA=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/01/OChamado3_Poster_Oficial_DATA.jpg'),
('Into the Storm', '', 'Action', 'Watched', 'https://img.fstatic.com/41m2VL3k2HhX_4cKmiwPKCppehA=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/03/no-olho-do-tornado_t50067.jpg'),
('Ouija', 'Xbox 360', 'Horror', 'Watched', 'https://img.fstatic.com/OhzL1n01NWo_yZhlTk8FvU5Av3o=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/07/ouija_t60111.jpg'),
('Jeruzalem', 'Xbox 360', 'Horror', 'Watched', 'https://img.fstatic.com/7qXj_498WXwpGcd6aGspIQ3bteU=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/06/jeruzalem_t123833_lavmijU.jpg'),
('Get Out', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/Dci9zgOKJB5oBPgMEQDyylgja3c=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/02/get_out_ver3.jpg'),
('The Autopsy of Jane Doe', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/oFB8yEr5Cd7_L_rNvW2MEVz2vVU=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/12/MV5BNTYyMDM1MzExOV5BMl5BanBnXkFtZTgwNjQ5NzI5MDI._V1_SY1000_CR006751000_AL_'),
('The Woman in Black', 'Xbox 360', 'Horror', 'Watched', 'https://img.fstatic.com/M16V6bIFm4foivolPkROBaULJF8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/01/242df70ad7457f44e36bd117cd46dd26.jpg'),
('The Woman in Black 2: Angel of Death', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/NPq_tTTLT2ZSZ4m68Xn9lOSfNpw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/a-mulher-de-preto-2-anjos-da-morte_t54805.jpg'),
('Kong: Skull Island', 'Xbox 360', 'Action', 'Watched', 'https://img.fstatic.com/RH2UK6hYkBQw-hXF4ZTcLCZn_xI=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/11/15110374_1633930196900340_1411847212440370925_o.jpg'),
('Resident Evil: Vendetta', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/ZwIvUnp5FLAMTHhC_6ZWL-YYtmU=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/07/poster_opt.jpg'),
('The Hand That Rocks the Cradle', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/F9kJtYXLJxxw_l7ngSxMzYJElgo=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/06/a-mao-que-balanca-o-berco_t4225.jpg'),
('Friday the 13th', 'Xbox 360', 'Horror', 'Watched', 'https://img.fstatic.com/mIY3JwudhJVBRE8di1yaGD5gI0k=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/db169a23c651a11f9ab6bcf34779317b.jpg'),
('Friday the 13th', 'Xbox 360', 'Horror', 'Watched', 'https://img.fstatic.com/TSFijSVYuycumNc4HYX3KjHI_6s=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/05/a796b1fb0bf3bbbcb1779b1fb37cb68d.jpg'),
('The Bye Bye Man', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/icIJ_IyrU6q8V-a5O4jYtD4VSE8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/07/POSTER_pOST.jpg'),
('The Disappointments Room', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/l1BMIpYFjxZJJpnKNpJz3K71q-4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/10/260x365_1475176201.jpg'),
('Alien: Covenant', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/vp6ldB22NsAsygvGDgWl3xQ8dCQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/03/IMG_20170323_131215.jpg'),
('Life', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/bYxQBCaikntCmw0TbhUa0SqhzSw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/02/life_ver2.jpg'),
('Viral', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/VHkYOzQY1ajpAEFytz3cq-d-A4E=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/06/viral_t118786.jpg'),
('Split', 'Xbox 360', 'Thriller', 'Backlog', 'https://img.fstatic.com/e1xO-ZLZOV-F5QHnD_Z9s8W5zJw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/11/split_ver3.jpg'),
('Unbreakable', 'Xbox 360', 'Drama', 'Backlog', 'https://img.fstatic.com/AwhhzO129u6a-JoE2wKVplZotqg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/850d78c0cd8e60a47141c82009cfe3c9.jpg'),
('Gerald''s Game', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/M8tTuDiLtO1NDszgV2jV4xy5Tz0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/09/DJoJP67XgAATHrC.jpg'),
('Annabelle: Creation', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/B3uo_aVjlFlDshR9zXwDlXRcfRI=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2017/06/DC3cg6bW0AAgwDr.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`name`, `plattform`, `genre`, `status`, `image`) VALUES
('American Horror Story (Season 5)', '', 'Thriller', 'Backlog', 'https://img.fstatic.com/8LjCR5Ve4yZWsqxAeoB1Kc2QS0U=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/2c7ff0ad34f1b0cb37e9fb6706535c9d.jpg'),
('As Aventuras de Jackie Chan (Season 2)', '', 'Anime', 'Backlog', 'https://img.fstatic.com/VdCt6xv0elPcneQCq-jPDjlg_2E=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/f1ab14b3c3125ccdd001bae4e3aedaa0.jpg'),
('Bates Motel (Season 1)', '', 'Thriller', 'Watched', 'https://img.fstatic.com/yjzYdBtsXSkA6NSkuR-mUxgUYg8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/01/bates-motel-1a-temporada_t60489_6.jpg'),
('Better With You', '', 'Comedy', 'Watched', 'https://img.fstatic.com/-3N_t9r7d-eSULw5MIHeMIU4CEQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/02/28fba8c5b66b25e43ec75f6fd27775ff.jpg'),
('Black Mirror (Season 3)', '', 'Thriller', 'Watched', 'https://img.fstatic.com/GaG89T6Fmjrsfe2B_aG1gH3wkYE=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/02/bd47a586f8c61a6ad09fa6946135518f.jpg'),
('Cashmere Mafia', '', 'Drama', 'Watched', 'https://img.fstatic.com/SauqZTWxAelYzxMz7CxuKuWA3LQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/08/a707de3a7e778d082d6f5309fb79e428.jpg'),
('Dead Set', '', 'Zombies', 'Watched', 'https://img.fstatic.com/RriwPxn-9IB2Q_I_2a-el04JmJ4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/02/8b4cda61f579eb457af8b025a55f2b0a.jpg'),
('Dragon Ball (Episode 33)', '', 'Anime', 'Watched', 'https://img.fstatic.com/6cWU0kyJoV-JiNvAXXlKRg8lYcM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/dragon-ball-1a-temporada_t26473_14.jpg'),
('Episodes (Season 3)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/55YV-Gt4dxOzmbRXhqPkFjbLHmM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/04/episodes-1a-temporada_t32577.jpg'),
('Friends', '', 'Comedy', 'Watched', 'https://img.fstatic.com/mXGNuJVhHJloqt_nZOxjdcVOHUQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/18a562be18642a3daf75cdfd4e4f4360.jpg'),
('Game of Thrones (Season 7)', '', 'Fantasy', 'Watched', 'https://img.fstatic.com/uyoq8NDZNjrD6fSPD7mWyXhIPnU=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/03/987f793ed039483c6b22ba0e289bac41.jpg'),
('Glee (Season 2)', '', 'Musical', 'Watched', 'https://img.fstatic.com/_Gr0DaDAo5FY8mRF4LA6M2ejg0I=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/91aced840c8534cd67b069fc118ef841.jpg'),
('Grey''s Anatomy (Season 13)', '', 'Drama', 'Backlog', 'https://img.fstatic.com/kJ9XVlASpugFlNBkC1MbhHt3cyk=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/8aa87084eec4a91974ef5cc0f3759e90.jpg'),
('Raising Hope (Season 1)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/EaHG9wNgQ9EPCs3Xx0xk-bwv9lM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/11/ffe1db412428d01b37f2fda307749b69.jpg'),
('House MD (Season 1)', '', 'Drama', 'Watched', 'https://img.fstatic.com/juwqWJCNSGARnbxnttfVqiP-NW4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/fa8ecd4a95d069af7a25879d9669558b.jpg'),
('How I Met Your Mother', '', 'Comedy', 'Watched', 'https://img.fstatic.com/UldntxU-oWlNMzp0CZGi5cq7euo=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/64ff6680f17b7d85965a81d28dda83c0.jpg'),
('How to Get Away With Murder (Season 2)', '', 'Drama', 'Watched', 'https://img.fstatic.com/QKt84q4gjAynUoOlJzoYIdRnnk4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/08/how-to-get-away-with-murder-1a-temporada_t95316.jpg'),
('Joey', '', 'Comedy', 'Watched', 'https://img.fstatic.com/duvu0qiD7RVXdBeYzN3jRTqjlO4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/04/1aeb3dbd56a3b9ae91565fe8d0455f3b.jpg'),
('Melissa & Joey', '', 'Comedy', 'Watched', 'https://img.fstatic.com/3AC_swOiRZDIoGb4_XHtFwQq1gQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/melissa-joey-1a-temporada_t28017.jpg'),
('Lost', '', 'Thriller', 'Watched', 'https://img.fstatic.com/CHgkB_JRuwjSmBwhCWVaG7cvlW4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/7cbe263073e39efd0eba01662872da7d.jpg'),
('Mr. Robot (Season 2)', '', 'Drama', 'Backlog', 'https://img.fstatic.com/CZyXCBkqu06-aBnJvzuc1qeKbO4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/mr-robot-1a-temporada_t113869.jpg'),
('Mr. Sunshine', '', 'Comedy', 'Watched', 'https://img.fstatic.com/W6Zm_IVXZLf5kS39hGMj8cpQCbU=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/02/227b5099aada988e63f28f5dfd25e00c.jpg'),
('Naruto (Episode 99)', '', 'Anime', 'Watched', 'https://img.fstatic.com/BRgOxwWX0yof-0Cv-bKpbzUmJ5Y=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/naruto-2a-temporada_t26197_1.jpg'),
('One Tree Hill (Season 1)', '', 'Drama', 'Watched', 'https://img.fstatic.com/hyZkoWKc1ehnlFfG7sgZLtHZauc=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/81cd9947b86acd1deb083632c1ce29ee.jpg'),
('Os Cavaleiros do Zodíaco: Santurário', '', 'Anime', 'Watched', 'https://img.fstatic.com/yivJMHqRyCq_t1BbcIGSzH0OfMQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/os-cavaleiros-do-zodiaco-saga-1-santuario_t25294_1.jpg'),
('Os Cavaleiros do Zodíaco: Asgard', '', 'Anime', 'Watched', 'https://img.fstatic.com/FJDc3txPBccqAYQOYuifKIw2W38=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/os-cavaleiros-do-zodiaco-saga-2-asgard_t25295_2.jpg'),
('Pokemon (Episode 83)', '', 'Anime', 'Watched', 'https://img.fstatic.com/EWVeD4r8gDiTNkXmsh-4PLWVvLs=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/pokemon-1a-temporada_t19163.jpg'),
('Private Practice (Season 1)', '', 'Drama', 'Watched', 'https://img.fstatic.com/Dk1J7rE6vC7HbzsTvqjZoVfxM_c=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/02/d811c11e44222288c83bbc057f446a9d.jpg'),
('Scream (Season 2)', '', 'Thriller', 'Watched', 'https://img.fstatic.com/0OjTHl3Y-d8RN_2vtlSn9q5NlIs=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/scream-2a-temporada_t125256_qbTfnPd.jpg'),
('Scrubs', '', 'Comedy', 'Watched', 'https://img.fstatic.com/7A5qGyE0rjp_LsiAozazGYGGzv4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/cc9248df095612a4d44b217d599e9515.jpg'),
('Seinfeld', '', 'Comedy', 'Watched', 'https://img.fstatic.com/ywRay5eCMTP3TK2w8zNDxwbH6sM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/06/a1e6de9c2e0c7dad154da43a1e8cc5f6.jpg'),
('Stranger Things (Season 2)', '', 'Thriller', 'Watched', 'https://img.fstatic.com/urWMwEnte092dCg96R6zpTb_1bM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/07/stranger-things-1a-temporada_t121192.jpg'),
('Street Fighter II: Victory', '', 'Anime', 'Watched', 'https://img.fstatic.com/QyrGt7wpczeBKFKibsYspJRHtL0=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/street-fighter-ii-victory_t33726.jpg'),
('Supernatural (Season 10)', '', 'Thriller', 'Backlog', 'https://img.fstatic.com/YDnzxxRR42ziTFqOpukxUdsAXwY=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/12/69768330bb36ea3f6268a1f7df9d466f.jpg'),
('Terra Nova', '', 'Thriller', 'Watched', 'https://img.fstatic.com/3LLDkGggwMA9MO_dWh7R3_N4-WQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/09/05897d19acbe938e005b8f1f9a67101a.jpg'),
('That ''70s Show (Season 6)', '', 'Comedy', 'Backlog', 'https://img.fstatic.com/yIfinsC76WqPzR2TCEnqyfTIEvM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/05/2ba0bba8d58507f1a15be0beb7f3186f.jpg'),
('The Big Bang Theory (Season 10)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/SpVo-2-gV_3l2VYlm8qs36AKTT8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/02/c1a64faf6b4dd65743253b2fb57e07d3.jpg'),
('The Middle (Season 1)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/SPyPSvb1dxomJQ3yRQgbSZ-Nzd8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/05/c179891a6becd1869cbbbc67e5d3e8b3.jpg'),
('The OC', '', 'Drama', 'Watched', 'https://img.fstatic.com/bE-NnUin-K1xUZKtG-3LvO3slX8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/11/e9c760eb4788dfa320a7f64ac6f5e2a3.jpg'),
('The Ranch (Season 3)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/DEZ5byLXxSN16HXc827T5rx1FAw=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/the-ranch-1a-temporada_t126285_CeSf9ov.jpg'),
('The Simpsons (Season 1)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/BN_FOJWCOBeDzgtLHcLmawJcwvI=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/02/b915cdea4d098d415f38e20fc494ff28.jpg'),
('The Vampire Diaries', '', 'Drama', 'Watched', 'https://img.fstatic.com/ZbGCSzNwVcYS1GkujjAlQZbfxuQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/02/279d1256f8095f17c6cd8f2dfec25fb6.jpg'),
('The Walking Dead (Season 7)', '', 'Thriller', 'Backlog', 'https://img.fstatic.com/7zM4ZAP0lEXtDprGilk2zLYAl2M=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/09/2449c03fd2d98d4e4e219cc807eee626.jpg'),
('Two and a Half Men', '', 'Comedy', 'Watched', 'https://img.fstatic.com/LVONbpdn26RSoBGUHf_WqLBmj88=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/05/b350ba803559f63419df7dabe40e7f9f.jpg'),
('Will & Grace (Season 3)', '', 'Comedy', 'Watching', 'https://img.fstatic.com/22gR6NC_PBIdq-l4snRYxdXai4E=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/dff6431e680950d4f85750c19c77d559.jpg'),
('Yu-Gi-Oh! (Episode 49)', '', 'Anime', 'Watching', 'https://img.fstatic.com/uOCcFYsGlyTUgOQh39LvvI-dZ7I=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/yu-gi-oh-duel-monsters_tNone.jpg'),
('Z Nation (Season 3)', '', 'Zombies', 'Backlog', 'https://img.fstatic.com/XTnFLL6lCB6_K-pWLo7aQAa2nR0=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/07/z-nation_t97611.jpg'),
('Dead of Summer', '', 'Thriller', 'Watched', 'https://img.fstatic.com/TsQnSZCUanyYmVg6_pgeXYhsUS4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/05/dead-of-summer-1a-temporada_t195635_7LH2ACM.jpg'),
('Orphan Black (Season 3)', '', 'Thriller', 'Watched', 'https://img.fstatic.com/G74jckw6_MKQ08vYCScoKO44aLU=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/06/orphan-black-5a-temporada_t206202.jpg'),
('Slasher (Season 1)', '', 'Thriller', 'Watched', 'https://img.fstatic.com/jT09Ydgz1zlKKABspYBU6a0w8t8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/02/slasher_tNone.png'),
('The Originals (Season 4)', '', 'Thriller', 'Backlog', 'https://img.fstatic.com/wlTMKABkSpLunr23ENPMS4A0CBw=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/05/97f855b4918d62d6d9c9f5f94521faa3.jpg'),
('Fear the Walking Dead (Season 1)', '', 'Thriller', 'Backlog', 'https://img.fstatic.com/KhT2j4GoQR7K3ceMpx7bSapLjd8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/fear-the-walking-dead-1a-temporada_t85922.jpg'),
('The Exorcist (Season 1)', '', 'Thriller', 'Backlog', 'https://img.fstatic.com/R6jspwVK6PRlgsPjJs3XKe2drYE=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/07/the-exorcist-1a-temporada_t84127.jpg'),
('InuYasha', '', 'Anime', 'Backlog', 'https://img.fstatic.com/VFDMpFsSGEW-b88d2sapTKBW47w=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/inuyasha-1a-temporada_t27706.jpg'),
('Yu Yu Hakusho', '', 'Anime', 'Backlog', 'https://img.fstatic.com/szWeZt-xvPdyMNnhlWAeK3IqWE4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/05/d4976144ec7e91be02ed25e0bceea718.jpg'),
('Os Cavaleiros do Zodíaco: Poseidon', '', 'Anime', 'Watched', 'https://img.fstatic.com/ddBxghzSdrzUt9nREKTff4C9TNY=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/os-cavaleiros-do-zodiaco-saga-3-poseidon_t31199.jpg'),
('Digimon Adventure', '', 'Anime', 'Watching', 'https://img.fstatic.com/tFczNrUKT4iX9VefBi2Pu-D52uk=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/digimon-1a-temporada_t24593.jpeg'),
('Westworld (Season 1)', '', 'Thriller', 'Watching', 'https://img.fstatic.com/9TMbdzF4hFwJnu7SWwCvzzG334M=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/09/westworld_poster.jpg'),
('The OA (Season 1)', '', 'Thriller', 'Backlog', 'https://img.fstatic.com/4zxRo_ga2Lw1LYmX_2xdS9d8VAk=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/12/the-oa.jpg'),
('Santa Clarita Diet (Season 1)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/UYiumWq1K_I-usm5E-OVnSy22zs=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/01/595622.jpg'),
('Beyblade', '', 'Anime', 'Backlog', 'https://img.fstatic.com/6Z6INypobtH6y4jHE5EDWtK40mQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/03/fae73d7087b388e610a41091e5962d3e.jpg'),
('X-Men: Evolution (Season 1)', '', 'Anime', 'Backlog', 'https://img.fstatic.com/TrGfZSoVgS7vYeL5E-c2tBnGA9w=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/8877467a8441f1c68995578d0ee6dee8.jpg'),
('Prison Break (Season 1)', '', 'Action', 'Watched', 'https://img.fstatic.com/uATnz5WdpKSO-Y9i90ECtOeosnk=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/5dbfb969e4350c5ebf54484e3927d59d.jpg'),
('Mortal Kombat: Legacy (Season 2)', '', 'Adventure', 'Backlog', 'https://img.fstatic.com/A7dNtpcgGgX3XxzeKQP5IVJVOG4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/02/mortal-kombat-legacy-2a-temporada_t61357.jpg'),
('Dungeons & Dragons', '', 'Anime', 'Watched', 'https://img.fstatic.com/YHa363_2A0JfQfCq8wm22anhXfY=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/b49485b0f87d5d92d21ecaa183e1c902.jpg'),
('Os Cavaleiros do ZodÃ­aco: Hades', '', 'Anime', 'Watched', 'https://img.fstatic.com/EnLs9zQlKKj4Zk610L0XpaFVf18=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/12/43361f30d2c8eef366368707cb0c3d79.jpg'),
('Awkward. (Season 1)', '', 'Comedy', 'Watched', 'https://img.fstatic.com/o30ZVh7hgceZCC_TgI4SwBjFgrQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/05/56d4d14ae14a2faf5f6795dcedbe2270.jpg'),
('The Mist', 'Xbox 360', 'Thriller', 'Watched', 'https://img.fstatic.com/20lghLnDoW1MJZu1uMHCMyWBeow=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/04/the_mist.jpg'),
('Vikings (Season 1)', 'Xbox 360', 'Fantasy', 'Watched', 'https://img.fstatic.com/Slmp-LKsD-ibWomkumc2N1JMT98=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/03/be35f0ef540e3d2084b58bee2a26661a.jpg'),
('Family Guy (Season 1)', 'Xbox 360', 'Comedy', 'Watched', 'https://img.fstatic.com/V-jYSiBZ7mdER1dKRLBjj4QSAcs=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2010/09/97658c6e7203020c29e0f26790483939.jpg'),
('The Good Place (Season 1)', 'Xbox 360', 'Comedy', 'Watched', 'https://img.fstatic.com/E25bJMDxZ_hEdKF2KaUGOZAKwfY=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2016/07/the-good-place-1a-temporada_t207238.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `skills`
--

CREATE TABLE `skills` (
  `skill` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `skills`
--

INSERT INTO `skills` (`skill`, `type`, `status`, `image`) VALUES
('Java', 'Language', 'Advanced', 'https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/549px-Java_programming_language_logo.svg.png'),
('ActionScript', 'Language', 'Advanced', 'https://upload.wikimedia.org/wikipedia/en/0/0f/ActionScript_icon.png'),
('C++', 'Language', 'Advanced', 'http://www.freeiconspng.com/uploads/c--logo-icon-0.png'),
('CSS', 'Language', 'Intermediary', 'http://gabrielgc.neocities.org/mod3/eje01/imgdiv/css3.png'),
('HTML', 'Language', 'Intermediary', 'https://www.w3.org/html/logo/downloads/HTML5_Logo_512.png'),
('JavaScript', 'Language', 'Intermediary', 'http://jstricks.com/wp-content/uploads/2014/07/javascript-redirect.png'),
('JQuery', 'Language', 'Intermediary', 'http://precision-software.com/wp-content/uploads/2014/04/jQurery.gif'),
('MySQL', 'Database', 'Intermediary', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/MySQL.svg/640px-MySQL.svg.png'),
('PHP', 'Language', 'Intermediary', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1280px-PHP-logo.svg.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `song` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `songs`
--

INSERT INTO `songs` (`id`, `name`, `song`) VALUES
(1, 'Chrono Cross', 'https://www.youtube.com/embed/Rs2y4Nqku2o'),
(2, 'Shadow of the Colossus', 'https://www.youtube.com/embed/KCiPc0Q4Ksg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `english`
--
ALTER TABLE `english`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
