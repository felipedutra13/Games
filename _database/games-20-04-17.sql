-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20-Abr-2017 às 14:29
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

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
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `books`
--

INSERT INTO `books` (`name`, `genre`, `status`, `image`) VALUES
('Os Crimes ABC', 'Drama', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/R0ycfw2fSwFy19AoxXaSxhO6HR8=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/1215/OS_CRIMES_ABC_14259329731215SK1425932973B.jpg'),
('A Cabana', 'Drama', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/38fzmKhJesP9LfvOQxoO3neFaT0=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/57/A_CABANA_1398878150B.jpg'),
('Os Elefantes Não Esquecem', 'Drama', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/MKKEPxfFiznemyg78o-AJkTOVlQ=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/1198/OS_ELEFANTES_NAO_ESQUECEM_1328575416B.jpg'),
('Assassinato no Expresso do Oriente', 'Drama', 'Read', 'https://cache.skoob.com.br/local/images//B1V0ExJF2ALet0K30NAFP-Awqzs=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/1043/ASSASSINATO_NO_EXPRESSO_DO_ORI_14669553641043SK1466955364B.jpg'),
('God of War', 'Fantasy', 'Read', 'https://dkrvo6vcdo4u7.cloudfront.net/WT4GRHMmttS3cpDvKwRK20raGAM=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/274997/GOD_OF_WAR_1350943915B.jpg');

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
  `platform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dlc`
--

INSERT INTO `dlc` (`name`, `platform`, `genre`, `status`, `image`) VALUES
('Age of Mythology: The Titans', 'PC', 'Strategy', 'Completed', 'https://howlongtobeat.com/gameimages/Age_of_Mythology_-_The_Titans_Liner.jpg'),
('Batman: Arkham City - Catwoman', 'Xbox 360', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/250px-ArkhamCity.jpg'),
('Commandos: Beyond the Call of Duty', 'PC', 'Strategy', 'Backlog', 'https://howlongtobeat.com/gameimages/Commandos_Beyond_the_Call_of_Duty.jpg'),
('Far Cry 3: Blood Dragon', 'Xbox 360', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/FC3_Blood_Dragon_Cover.jpg'),
('The Last of Us: Left Behind', 'Playstation 4', 'Action', 'Completed', 'https://howlongtobeat.com/gameimages/The-last-of-us-cover.png'),
('Thomas Was Alone: Benjamin''s Flight', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/2248655-twa_poster_large.png'),
('Outlast: Whistleblower', 'PC', 'Survival Horror', 'Completed', 'https://howlongtobeat.com/gameimages/OutlastWhistleblowerDLC.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `plattform` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`id`, `name`, `plattform`, `genre`, `status`, `image`) VALUES
(1, '10000000', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/10000000_ios.jpg'),
(2, 'Age of Mythology', 'PC', 'Strategy', 'Completed', 'http://howlongtobeat.com/gameimages/225px-Age_of_Mythology_Liner.jpg'),
(3, 'Alan Wake', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Alan-wake-0.jpg'),
(5, 'Alien: Isolation', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Alien_Isolation.jpg'),
(6, 'Assassin''s Creed', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Assassins_Creed.jpg'),
(7, 'Assassin''s Creed II', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Assassins_Creed_2_Box_Art.JPG'),
(9, 'Batman: Arkham Asylum', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Arkham_Asylum.jpg'),
(10, 'Batman: Arkham City', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-ArkhamCity.jpg'),
(11, 'Batman: Arkham Knight', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Batman_Arkham_Knight_Cover_Art.jpg'),
(12, 'Batman: Arkham Origins', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Batman-Arkham-Origins-Box-Art.jpg'),
(13, 'BattleBlock Theater', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Battleblockcover.png'),
(14, 'BioShock', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Bioshockcoverfinalcropped.jpg'),
(15, 'Blur', 'Xbox 360', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/Blur_(video_game).jpg'),
(16, 'Bomberman World', 'Playstation', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-BombManWorldCover.jpg'),
(17, 'Braid', 'PC', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Braidlogo.jpg'),
(18, 'Brothers: A Tale of Two Sons', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Brothers_A_Tale_of_Two_Sons_cover_art.jpg'),
(19, 'Call of Duty', 'PC', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Codbox.jpg'),
(20, 'Call of Duty 2', 'PC', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Call_of_Duty_2_Box.jpg'),
(21, 'Call of Duty: Black Ops II', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/275px-Call_of_Duty_Black_Ops_II_Game_Cover.png'),
(22, 'Call of Duty: Modern Warfare 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Call_of_Duty_Modern_Warfare_3_box_art.png'),
(23, 'Castle Crashers', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Cboxcastlecrashers.jpg'),
(24, 'Castle of Illusion Starring Mickey Mouse', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Castleofillusionremake_2013.jpg'),
(25, 'Castlevania: Aria of Sorrow', 'Game Boy Advance', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-AriaofSorrowCover.jpg'),
(26, 'Castlevania: Dracula X', 'Super Nintendo', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/CastlevaniaDraculaX.JPG'),
(27, 'Castlevania: Lords of Shadow', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Castlevania_Lords_of_Shadow.png'),
(28, 'Castlevania: Lords of Shadow 2', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Castlevania_Lords_of_Shadow_2_boxart.jpg'),
(29, 'Castlevania: Symphony of the Night', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Castlevania_SOTN_PAL.jpg'),
(30, 'Catherine', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Catherine_Cover_Art.png'),
(31, 'Chrono Cross', 'Playstation', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Chronocrossbox.jpg'),
(32, 'Crash Bandicoot', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Crash_Bandicoot_Cover.png'),
(33, 'Crash Bandicoot 2: Cortex Strikes Back', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Crash2.jpg'),
(34, 'Crash Bandicoot 2: N-Tranced', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Crash_Bandicoot_2_-_N-Tranced_Coverart.png'),
(35, 'Crash Bandicoot 3: Warped', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Crash_Bandicoot_3_Warped_Original_Box_Art.jpg'),
(36, 'Crash Bandicoot: The Huge Adventure', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Crash_Huge_adventure.png'),
(37, 'Crash Bandicoot: The Wrath of Cortex', 'Xbox', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/CrashWrathofcortex_boxart.jpg'),
(38, 'Crash Bash', 'Playstation', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/252px-CrashBashCover.png'),
(39, 'Crash Nitro Kart', 'Playstation 2', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-CrashNKConsoleFree.jpg'),
(40, 'Crash Team Racing', 'Playstation', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/CrashTeamRacingNACover.png'),
(41, 'Crash: Mind over Mutant', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Crash_-_Mind_over_Mutant_Coverart.png'),
(42, 'Crysis', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Crysis_Cover.jpg'),
(43, 'Cut the Rope', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/200px-Cut_the_Rope_logo.png'),
(44, 'Darksiders', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Darksiders_Cover.jpg'),
(45, 'Darkstalkers: The Night Warriors', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/DarkstalkersTheNightWarriors.JPG'),
(46, 'Daze Before Christmas', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Daze_before_christmas_box_art.jpg'),
(47, 'Dead Island', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/DeadIslandGameoftheYearEdition.jpg'),
(48, 'Dead Space', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Dead_Space_Box_Art.jpg'),
(49, 'Dead Space 2', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Dead_Space_2_Box_Art.jpg'),
(50, 'Dead Space 3', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Dead_Space_3_PC_game_cover.jpg'),
(52, 'Deadlight', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/DeadlightBox.jpg'),
(53, 'Deus Ex GO', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/39388_Deus_Ex_GO.jpg'),
(54, 'Dino Crisis', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Dino_Crisis.jpg'),
(55, 'Dino Crisis 2', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Dino_Crisis_2.jpg'),
(56, 'Dishonored', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/220px-Dishonored_box_art_Bethesda.jpg'),
(57, 'Disney Universe', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/251px-Disney-Universe.jpg'),
(58, 'Aladdin', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Disneys_Aladdin_Videogame_Cover.jpg'),
(59, 'Hercules Action Game', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Herculesactiongameposter.jpg'),
(60, 'Magical Quest 3 Starring Mickey & Donald', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/412lV6uIMIL.jpg'),
(61, 'Tarzan', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/220px-Tarzan_(video_game).jpg'),
(62, 'Donald Duck: Goin'' Quackers', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Donald_Duck_Quack_Attack.jpg'),
(63, 'Donkey Kong', 'Nintendinho', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/150px-Donkey_Kong_arcade.jpg'),
(64, 'Donkey Kong 3', 'Nintendinho', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Donkeykong3_arcade.jpg'),
(65, 'Donkey Kong Country', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Dkc_snes_boxart.jpg'),
(66, 'Donkey Kong Country 2: Diddy''s Kong Quest ', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/DK_Country_2.jpg'),
(67, 'Donkey Kong Country 3: Dixie Kong''s Double Trouble', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Dkc3_snes_boxart.jpg'),
(68, 'Donkey Kong Country Returns', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Donkeykongcountryreturns.jpg'),
(69, 'Donkey Kong Jr', 'Nintendinho', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Donkey_Kong_Jr._arcade_game.png'),
(70, 'Dragon Ball GT: Final Bout', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Db_gtfinalbout_box.jpg'),
(71, 'Dragon Ball Xenoverse', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/dragon-ball-xenoverse.jpg'),
(72, 'Dragon Ball Z: Budokai', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Dbzbox.jpg'),
(73, 'Dragon Ball Z: Budokai 3', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1814867-box_dbzb3_large.png'),
(74, 'Dragon Ball Z: Idainaru Dragon Ball Densetsu', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/2131800-dbz_psx_large.jpg'),
(75, 'Dragon Ball Z: Ultimate Battle 22', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1814883-box_dbzub22_large.png'),
(76, 'DuckTales: Remastered', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/DuckTales_Remastered.jpg'),
(77, 'El Chavo Kart', 'Xbox 360', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/ElChavoKart.jpg'),
(78, 'F.E.A.R.', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/FEAR_DVD_box_art.jpg'),
(79, 'Far Cry 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Far-cry-3-box-art-xbox-360.jpg'),
(80, 'Far Cry 4', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Far_Cry_4_box_art.jpg'),
(81, 'Far Cry', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/FarCryClassic.jpg'),
(82, 'Fatal Fury 2', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Fatal_Fury_2_cover.JPG'),
(83, 'Fatal Fury 3: Road to the Final Victory', 'Neo Geo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Fatal_Fury_3_(cover).jpg'),
(84, 'Fatal Fury: King of Fighters', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Fatal_Fury_(cover).jpg'),
(85, 'Fight Night Champion', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Fight_Night_Champion.jpg'),
(86, 'Fighting Force', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-PS2FightingForceCover.jpg'),
(87, 'Forza Horizon', 'Xbox 360', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Forza_Horizon_boxart.jpg'),
(88, 'Galerians', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Galerians_Coverart.png'),
(89, 'Gears of War', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Gears_of_War.png'),
(90, 'Gears of War 2', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Gow2_offbox.jpg'),
(91, 'Gears of War 3', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Gears_of_War_3_box_artwork.png'),
(92, 'Gears of War: Judgment', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Gears_of_War-_Judgment_cover.jpg'),
(93, 'God of War', 'Playstation 2', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Gowbox.jpg'),
(94, 'God of War II', 'Playstation 2', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Gow2-2.jpg'),
(95, 'God of War III', 'Playstation 4', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/256px-God_of_War_III_not_final_art.jpg'),
(96, 'Goof Troop', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-SNES_Goof_Troop_Box.jpg'),
(97, 'Grand Theft Auto 2', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Gta2cover.jpg'),
(98, 'Grand Theft Auto V', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/2006041-gta5_2_large.png'),
(99, 'Grand Theft Auto: San Andreas', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/GTASABOX.jpg'),
(100, 'Grand Theft Auto: Vice City', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Vice-city-cover.jpg'),
(101, 'Guacamelee!: Super Turbo Championship Edition', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Guacamelee!SuperTurboChampionshipEdition.jpg'),
(102, 'Guilty Gear', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Guilty_Gear_Coverart.png'),
(103, 'Guitar Hero', 'Playstation 2', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Guitarhero-cover.jpg'),
(104, 'Guitar Hero II', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Guitar_Hero_II.jpg'),
(105, 'Half-Life', 'PC', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Half-Life_Cover_Art.jpg'),
(106, 'Halo 2', 'Xbox', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Halo2-cover.png'),
(107, 'Halo: Combat Evolved', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Halo-combat-evolved-anniversary-dvd.jpg'),
(108, 'Harry Potter and the Chamber of Secrets', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Harry_Potter_and_the_Chamber_of_Secrets_Coverart.png'),
(109, 'Harry Potter and the Philosopher''s Stone', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/HPstonebox.jpg'),
(110, 'Harry Potter and the Prisoner of Azkaban', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-HP_prisoner_of_azkaban.png'),
(111, 'Hitman GO', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/HitmanGoscreen568x568.jpg'),
(112, 'Home Alone', 'Super Nintendo', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-HomeAlone1game.jpg'),
(113, 'Homefront', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Homefront.jpg'),
(114, 'How to Survive', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/HowToSurviveBoxartXBLA.jpg'),
(115, 'Injustice: Gods Among Us', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Injustice_Gods_Among_Us_Cover_Art.jpg'),
(116, 'Jackie Chan Stuntmaster', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/JackieChanStuntmaster.jpg'),
(117, 'Jurassic Park: The Game', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Jurassicpark-game-logo.jpg'),
(118, 'Killer Instinct', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Killer_Instinct_flyer.jpg'),
(119, 'Kirby: Nightmare in Dream Land', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/KirbyNightmareinDreamLand.png'),
(120, 'Klonoa: Door to Phantomile', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Klonoa_doortophplaystation_front.jpg'),
(121, 'Klonoa: Empire of Dreams', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Klonoa_Empire_of_Dreams_Packaging02.jpg'),
(122, 'Lara Croft and the Guardian of Light', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Lara_Croft_and_the_Guardian_of_Light_cover.jpg'),
(123, 'Leo''s Fortune', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/LeosFortune.jpg'),
(124, 'Limbo', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Cboxlimbo.jpg'),
(125, 'Lollipop Chainsaw', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Lollipop_Chainsaw_Cover_Art.png'),
(126, 'Lost: Via Domus', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-LostViaDomusCover_small.jpg'),
(127, 'Mario Kart 64', 'Nintendo 64', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mario_Kart_64box.png'),
(128, 'Mario Kart: Super Circuit', 'Game Boy Advance', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Circuit.jpg'),
(132, 'Mario vs. Donkey Kong', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mario_vs._Donkey_Kong_Coverart.png'),
(133, 'Marvel Super Heroes vs. Street Fighter', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Marvelsuperheroesvsstreetfighter_title.png'),
(134, 'Marvel vs. Capcom 2', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1856047-box_mvc2_large.jpg'),
(135, 'Marvel vs. Capcom: Clash of Super Heroes', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Marvel_vs_Capcom.png'),
(136, 'Max Payne', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Maxpaynebox.jpg'),
(137, 'Max Payne 2: The Fall of Max Payne', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Max_Payne_2.jpg'),
(138, 'Max Payne 3', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Maxpayne3.jpg'),
(139, 'Max: The Curse of Brotherhood', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Max,_The_Curse_of_Brotherhood_box_art.jpg'),
(140, 'Medal of Honor', 'Playstation', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Medal_of_Honor.png'),
(141, 'Mega Man', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Mega_Man_1_box_artwork.jpg'),
(142, 'Mega Man 2', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Megaman2_box.jpg'),
(143, 'Mega Man 3', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/200px-Megaman3_box.jpg'),
(144, 'Mega Man 4', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/200px-Megaman4_box.jpg'),
(145, 'Mega Man 5', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Megaman5_box.jpg'),
(146, 'Mega Man 6', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Megaman6_box.jpg'),
(147, 'Mega Man 7', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mega_Man_7_Coverart.jpg'),
(148, 'Mega Man 8', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mega_Man_8_Coverart.jpg'),
(149, 'Mega Man X', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Mega_Man_X_Coverart.png'),
(150, 'Metal Gear Solid', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Metal_Gear_Solid_cover_art.png'),
(151, 'Michael Jordan: Chaos in the Windy City', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/220px-MjordanSNES_boxart.jpg'),
(152, 'Middle-Earth: Shadow of Mordor', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Middle-earthShadowofMordor_292x136.jpg'),
(153, 'Mighty No. 9', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Mighty_No_9_splash.jpg'),
(154, 'Mortal Kombat', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_game_flyer.png'),
(155, 'Mortal Kombat 4', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/255px-Mortal_Kombat_4_cover.jpg'),
(156, 'Mortal Kombat II', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/205px-Mortal_Kombat_II_cover.JPG'),
(157, 'Mortal Kombat vs. DC Universe', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_vs._DC_Universe_Coverart.png'),
(158, 'Mortal Kombat X', 'Playstation 4', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_X_Cover_Art.png'),
(159, 'Mortal Kombat: Armageddon', 'Xbox', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/MKAPS2.jpg'),
(160, 'Mortal Kombat: Deadly Alliance', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/MortalKombatDeadlyAlliancecover.jpg'),
(161, 'Mortal Kombat: Deception', 'Xbox', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_-_Deception_Coverart.png'),
(162, 'Mortal Kombat 9', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Mortal_Kombat_Komplete_Edition.jpg'),
(163, 'Need for Speed: Underground', 'PC', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/Nfsu-win-cover.jpg'),
(164, 'Need for Speed: Underground 2', 'PC', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/Nfsunderground2-win-cover.jpg'),
(165, 'New Super Mario Bros.', 'Nintendo DS', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-NewSuperMarioBrothers.jpg'),
(166, 'New Super Mario Bros. Wii', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-NewSuperMarioBrosWiiBoxart.png'),
(167, 'Newer Super Mario Bros. Wii', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/newer_super_mario_bros__wii.jpg'),
(168, 'Ninja Gaiden', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Ninja_Gaiden_(NES).jpg'),
(169, 'Ninja Gaiden II: The Dark Sword of Chaos', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Ninja_Gaiden_II-_The_Dark_Sword_of_Chaos_boxart.jpg'),
(170, 'Ninja Gaiden III: The Ancient Ship of Doom', 'Nintendinho', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Ninja_Gaiden_III_The_Ancient_Ship_of_Doom.jpg'),
(171, 'Outlast', 'PC', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/Outlast_cover.jpg'),
(173, 'Parasite Eve', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Parasite_Eve_Coverart.png'),
(174, 'Parasite Eve II', 'Playstation', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Parasite_Eve_II_Coverart.png'),
(175, 'Pepsiman', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Pepsiman.jpg'),
(176, 'Plants vs. Zombies', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-PlantsVsZombiesCover400ppx.png'),
(177, 'Pokemon FireRed', 'Game Boy Advance', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/Pokemon_FireRed_Coverart.png'),
(178, 'Pokemon Ruby', 'Game Boy Advance', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/Pokemon_Ruby_NA.jpg'),
(179, 'Portal', 'PC', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Portal_standalonebox.jpg'),
(180, 'Portal 2', 'Xbox 360', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Portal2cover.jpg'),
(181, 'Rayman Jungle Run', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/RaymanJungleRun.jpg'),
(182, 'Rayman Legends', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Rayman_Legends_Box_Art.jpg'),
(183, 'Rayman Origins', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Rayman_Origins_Box_Art.jpg'),
(184, 'Red Dead Redemption', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Red_Dead_Redemption.jpg'),
(185, 'Resident Evil', 'Playstation', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Resident_Evil_1_cover_art.jpg'),
(186, 'Resident Evil 2', 'Playstation', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Resident_Evil_2.jpg'),
(187, 'Resident Evil 3: Nemesis', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resident_Evil_3_Cover.jpg'),
(188, 'Resident Evil 4', 'PC', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resi4-gc-cover.jpg'),
(189, 'Resident Evil 5', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resident_Evil_5_Box_Artwork.jpg'),
(190, 'Resident Evil 6', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Resident_Evil_6_Cover_Art.png'),
(191, 'Resident Evil Code: Veronica X', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/610963-resident_evil_code_veronica_x_large.jpg'),
(192, 'Resident Evil Zero', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/33676_Resident_Evil_0_HD_Remaster.jpg'),
(193, 'Resident Evil: Revelations', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Resident_evil_rev._2012_Capcom.png'),
(194, 'Resident Evil: Survivor', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-ResidentEvil_Survivor_front.jpg'),
(195, 'Resident Evil: The Umbrella Chronicles', 'Wii', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Resident_evil_the_umbrella_chronicles_uscover.jpg'),
(196, 'Rise of the Tomb Raider', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Rise_of_the_Tomb_Raider.jpg'),
(197, 'Rival Schools: United By Fate', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Rival_Schools_cover.jpg'),
(198, 'Saint Seiya: The Sanctuary', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1094259-foto_saint_seiya__knights_of_the_zodiac___the_sanctuary_large.jpg'),
(199, 'Silent Hill', 'Playstation', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Silent_Hill_video_game_cover.png'),
(200, 'Silent Hill 2', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Silent_Hill_2.jpg'),
(201, 'Silent Hill 3', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sh3_boxart.jpg'),
(202, 'Silent Hill 4: The Room', 'Playstation 2', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Silent2002.jpg'),
(203, 'Sleeping Dogs', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/260px-Sleeping_Dogs_-_Square_Enix_video_game_cover.jpg'),
(204, 'Sonic & Knuckles', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/sonicandknuckles.jpg'),
(205, 'Sonic Generations', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic_Generations_Logo.jpg'),
(206, 'Sonic the Hedgehog', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic1_box_usa.jpg'),
(207, 'Sonic the Hedgehog 2', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic2_European_Box.jpg'),
(208, 'Sonic the Hedgehog 3', 'Mega Drive', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Sonic3-box-us-225.jpg'),
(209, 'Sonic the Hedgehog 4: Episode 1', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic_4_Logo.png'),
(210, 'South Park: The Stick of Truth', 'Xbox 360', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/SouthParkTheStickOfTruth.jpg'),
(211, 'Spider-Man', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Smboxpsx.jpg'),
(212, 'Spider-Man 2', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spider-Man_2_Coverart_PC.png'),
(213, 'Spider-Man 2: Enter Electro', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spider-Man_2_-_Enter_Electro_Coverart.png'),
(214, 'SpongeBob SquarePants: Plankton''s Robotic Revenge', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/SpongeBob_SquarePants_Planktons_Robotic_Revenge_NA_game_cover.jpg'),
(215, 'Spyro the Dragon', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spyro_the_Dragon.jpg'),
(216, 'Spyro: Year of the Dragon', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Spyro-year_of_the_dragon.png'),
(218, 'Street Fighter', 'Arcade', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Street_Fighter_game_flyer.png'),
(219, 'Street Fighter Alpha 2', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_Alpha_2_flyer.png'),
(220, 'Street Fighter Alpha 3', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_Alpha_3_flyer.png'),
(221, 'Street Fighter Alpha: Warriors'' Dreams', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_Alphawd_flyer.png'),
(222, 'Street Fighter EX Plus Alpha', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/StreetFighterEXPlusAlpha_large.png'),
(223, 'Street Fighter EX2 Plus', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/StreetFighterEXPlus.JPG'),
(224, 'Street Fighter II', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/9640-streetfighter-ii-wii_large.jpg'),
(225, 'Street Fighter III 3rd Strike: Fight for the Futur', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Street_Fighter_III_3rd_Strike_(flyer).png'),
(226, 'Street Fighter X Tekken', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/StreetFighter-X-Tekken_box_art.jpg'),
(227, 'Super Bomberman', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super.Bomberman.Box.Art.SNES.PAL.png'),
(228, 'Super Bomberman 2', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Bomberman2SNES_boxart.JPG'),
(229, 'Super Bomberman 3', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Superbomberman3boxart.jpg'),
(230, 'Super Bomberman 4', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Super_bomberman_4.jpeg'),
(231, 'Super Bomberman 5', 'Super Nintendo', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/200px-SuperBomberman5.jpg'),
(232, 'Super Mario Bros.', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_Bros._box.png'),
(233, 'Super Mario Bros. 2', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_Bros_2.jpg'),
(234, 'Super Mario Bros. 3', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_Bros._3_coverart.png'),
(235, 'Super Mario Bros.: The Lost Levels', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Mariobros2japanbox.jpg'),
(236, 'Super Mario Galaxy', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-SuperMarioGalaxy.jpg'),
(237, 'Super Mario Galaxy 2', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Super_Mario_Galaxy_2_Box_Art.jpg'),
(238, 'Super Mario Kart', 'Super Nintendo', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Supermariokart_box.JPG'),
(239, 'Super Mario World', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Mario_World_Coverart.png'),
(240, 'Super Mario World 2: Yoshi''s Island', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Yisland_box.jpg'),
(241, 'Super Metroid', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Smetroidbox.jpg'),
(242, 'Super Smash Bros.', 'Nintendo 64', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Supersmashbox.jpg'),
(243, 'Super Smash Bros. Melee', 'GameCube', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Super_Smash_Bros_Melee_Players_Ch.jpg'),
(244, 'Super Street Fighter IV', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/SuperSF4.jpg'),
(245, 'Ultimate Marvel vs. Capcom 3', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/UMvC3_Cover.jpg'),
(246, 'Ultimate Mortal Kombat 3', 'Super Nintendo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Ultimate_MK3.png'),
(247, 'Uncharted: Drake''s Fortune', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Uncharted_Drakes_Fortune.jpg'),
(248, 'Up', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Up_video_game.jpg'),
(249, 'VVVVVV', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/header_292x136.jpg'),
(250, 'X-Men vs. Street Fighter', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Xmenvsstreetfighter_title.png'),
(251, 'You Must Build A Boat', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/You_Must_Build_A_Boat_header.jpg'),
(252, 'Zombi', 'Playstation 4', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/ZombiU_Box_Art_(Final).jpg'),
(253, 'Tekken', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/1791096-box_Tekken_large.png'),
(254, 'Tekken 2', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Tekken2_1995.jpg'),
(255, 'Tekken 3', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-T3usposter.jpg'),
(256, 'Tekken 4', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Tekken_4_Coverart.png'),
(257, 'Tekken 5', 'Playstation 2', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Tekken5Cover.jpg'),
(258, 'Tekken 6', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/Tekken6cover.jpg'),
(259, 'The Amazing Spider-Man', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/The_Amazing_Spider_Man_2012_video_game_cover.jpg'),
(260, 'The Evil Within', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/The_Evil_Within_logo.jpg'),
(261, 'The House of the Dead', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/1790006-box_hotd_large.png'),
(262, 'The House of the Dead 2', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/250px-House_Of_The_Dead_2Thelogo.png'),
(263, 'The House of the Dead III', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_House_of_the_Dead_III_Poster.png'),
(264, 'The House of the Dead: Overkill', 'Wii', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_House_of_the_Dead_Overkill_USA.jpg'),
(265, 'Table Top Racing: World Tour', 'Playstation 4', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/36980_Table_Top_Racing_World_Tour.jpg'),
(266, 'The Jungle Book', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Jungle_Book_game_cover.jpg'),
(267, 'The King of Fighters ''94', 'Neo Geo', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/The_King_of_Fighters_94_-_poster.jpg'),
(268, 'The King of Fighters ''95', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/KOF95_flyer.jpg'),
(269, 'The King of Fighters ''99', 'Playstation', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-The_King_of_Fighters_99_-_poster.jpg'),
(270, 'The King of Fighters XII', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/The_King_of_Fighters_XII_(flyer).jpg'),
(271, 'The Last of Us', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/TheLastofUsRemastered.jpg'),
(273, 'The Legend of Zelda: A Link to the Past', 'Super Nintendo', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Zelda_SNES.jpg'),
(274, 'The Lion King', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/The_Lion_King_Coverart.png'),
(275, 'The Lost Vikings', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/256px-The_Lost_Vikings_SNES_cover.jpg'),
(276, 'The Simpsons Game', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/The_Simpsons_Game_XBOX_360_Cover.jpg'),
(277, 'The Sims Bustin'' Out', 'Game Boy Advance', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Bustingoutbox.jpg'),
(278, 'The Smurfs 2', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/TheSmurfs2.jpg'),
(279, 'The Urbz: Sims in the City', 'Game Boy Advance', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/The_Urbz_-_Sims_in_the_City_Coverart.png'),
(280, 'The Walking Dead', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_Walking_Dead-game-cover.jpg'),
(281, 'This War of Mine', 'Android', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/This_War_of_Mine_header.jpg'),
(282, 'Thomas Was Alone', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/2248655-twa_poster_large.png'),
(284, 'Tom and Jerry', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/1548823-tomandjerrysnes_large.jpg'),
(285, 'Tom Clancy''s Ghost Recon: Future Soldier', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-GR_Future_Soldier_360.jpg'),
(286, 'Tom Clancy''s Splinter Cell: Blacklist', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Tom_Clancys_Splinter_Cell_Blacklist_box_art.png'),
(287, 'Tom Clancy''s Splinter Cell: Conviction', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Tom_Clancys_Splinter_Cell_Conviction.jpg'),
(288, 'Tomb Raider', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Tr2011cover.jpg'),
(289, 'Top Gear', 'Super Nintendo', 'Racing', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Top_Gear_Coverart.png'),
(290, 'Toy Story 2: Buzz Lightyear to the Rescue', 'Playstation', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Toystory264.jpg'),
(291, 'Toy Story 3: The Video Game', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/255px-Toy_Story_3_Cover_Art.jpg'),
(292, 'Kirby''s Return to Dream Land', 'Wii', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Kirbys_return_to_dreamland_boxart.jpg'),
(293, 'Dante''s Inferno', 'Xbox 360', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/Dantes_Inferno.jpg'),
(294, 'Mirror''s Edge', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Mirrors_Edge.jpg'),
(295, 'Inside', 'PC', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/INSIDE_banner.jpg'),
(296, 'Halo 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Halo_3_final_boxshot.JPG'),
(297, 'Wario Land 4', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Wario_Land_4_Coverart.jpg'),
(298, 'Assassin''s Creed III', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Assassins_Creed_III_Game_Cover.jpg'),
(300, 'Badland', 'Playstation 4', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/BADLAND.jpg'),
(301, 'Blue Estate: The Game', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Blue-Estate_20140626004240.jpg'),
(302, 'Breath of Fire IV', 'Playstation', 'RPG', 'Completed', 'http://howlongtobeat.com/gameimages/256px-BoFIVBox.png'),
(303, 'Call of Duty 3', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Cod3_box.jpg'),
(304, 'Castlevania: Lords of Shadow - Mirror of Fate', 'Xbox 360', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/castlevania_MirrorOfFate.jpg'),
(305, 'Child of Light', 'Xbox 360', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/240px-Child_of_Light_art.jpg'),
(306, 'Chrono Trigger', 'Super Nintendo', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Chrono_Trigger.jpg'),
(307, 'Clock Tower', 'Super Nintendo', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Clocktower1.jpg'),
(308, 'Crash Bandicoot Purple: Ripto''s Rampage', 'Game Boy Advance', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Crash_Bandicoot_Purple_-_Riptos_Rampage_Coverart.png'),
(309, 'Spyro Orange: The Cortex Conspiracy', 'Game Boy Advance', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Spyro_Orange_-_The_Cortex_Conspiracy_Coverart.png'),
(310, 'Crash of the Titans', 'Xbox 360', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-NTSCTitans.jpg'),
(311, 'Crash Tag Team Racing', 'Playstation 2', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/CrashTagTeamRacingCover.jpg'),
(312, 'Crash Twinsanity', 'Xbox', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/245px-Crash_Twinsanity_Coverart.jpg'),
(313, 'Dark Souls', 'Xbox 360', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Dark_Souls_Cover_Art.jpg'),
(314, 'Dead Island: Riptide', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/DeadIslandRiptide.jpg'),
(315, 'Dead Rising', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Deadrising_boxart.jpg'),
(316, 'Dead Space: Extraction', 'Wii', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/Dead_Space_Extraction.jpg'),
(317, 'Destiny', 'Playstation 4', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/Destiny_box_art.png'),
(318, 'Deus Ex', 'PC', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Dxcover.jpg'),
(319, 'Devil May Cry', 'Xbox 360', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-DMC1FrontCover.jpg'),
(320, 'Doom 3', 'Xbox 360', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Doom3box.jpg'),
(321, 'Fallout 3', 'Xbox 360', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Fallout_3_cover_art.PNG'),
(322, 'Fatal Frame', 'Playstation 2', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/Fatal_Frame_Coverart.png'),
(323, 'Fez', 'Xbox 360', 'Puzzle', 'Playing', 'http://howlongtobeat.com/gameimages/250px-Fez_cover.png'),
(324, 'Final Fantasy Tactics', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Fftbox.jpg'),
(325, 'Gex', 'Playstation', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/200px-GexCover.jpg'),
(326, 'Harry Potter and the Goblet of Fire', 'Playstation 2', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/HP_goblet_of_fire.png'),
(327, 'Haunting Ground', 'Playstation 2', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-HauntingGround_NA_PS2cover.jpg'),
(328, 'Hitman: Codename 47', 'PC', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Hitman47_artwork.jpg'),
(329, 'Ico', 'Playstation 2', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Box-l-jp.jpg'),
(330, 'Jersey Devil', 'Playstation', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Jersey_Devil_PSX.jpg'),
(331, 'Journey', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/256px-Journey_logo_lowres.jpg'),
(332, 'Kingdom Hearts', 'Playstation 2', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Kingdom_Hearts.jpg'),
(333, 'Klonoa 2: Lunatea''s Veil', 'Playstation 2', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/225px-Klonoa2.jpg'),
(334, 'Lara Croft and the Temple of Osiris', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/lara-croft-and-the-temple-54840cc30d78b.jpg'),
(335, 'Legacy of Kain: Soul Reaver', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Legacy_Of_Kain-_Sould_Reaver_Cover.jpg'),
(336, 'Legend of Legaia', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Legend_of_Legaia_Coverart.png'),
(337, 'Life is Strange', 'Xbox 360', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/LifeIsStrange.jpg'),
(338, 'Lords of the Fallen', 'Playstation 4', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Lords_of_The_Fallen.png'),
(339, 'Mario Kart Wii', 'Wii', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Mario_Kart_Wii.png'),
(340, 'Mario & Luigi: Superstar Saga', 'Game Boy Advance', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-MarioAndLuigiSuperstarSagaGBACoverArtUS.jpg'),
(341, 'Mark of the Ninja', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Mark_of_the_Ninja_artwork.jpg'),
(342, 'Metal Gear Solid 2: Sons of Liberty', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Metalgear2boxart.jpg'),
(343, 'Naruto Shippuden: Ultimate Ninja Storm 2 ', 'Xbox 360', 'Fighting', 'Backlog', 'http://howlongtobeat.com/gameimages/Naruto_Shippuden_UNS_2_Box_Art.jpg'),
(344, 'Ninja: Shadow of Darkness', 'Playstation', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Ninja_shadow_of_darkness_cover.jpg'),
(345, 'Pandemonium', 'Playstation', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Pandemonium_box.jpg'),
(346, 'Pikmin', 'Wii', 'Puzzle', 'Backlog', 'http://howlongtobeat.com/gameimages/Pikmin_cover_art.jpg'),
(347, 'Resident Evil: Revelations 2', 'Xbox 360', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/ResidentEvilRevelations2.jpg'),
(348, 'Resident Evil: The Darkside Chronicles', 'Wii', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-REDC_Cover.jpg'),
(349, 'Rule of Rose', 'Playstation 2', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-RuleofRose.jpg'),
(350, 'Shadow Complex', 'Xbox 360', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Shadow_Complex_cover.jpg'),
(351, 'Shadow of the Colossus', 'Playstation 2', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Sotc_boxart.jpg'),
(352, 'Silent Hill: Origins', 'PSP', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/Silent_Hill_Origins.jpg'),
(353, 'Siren', 'Playstation 2', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Siren_art_box.jpg'),
(354, 'Sonic & Sega All-Stars Racing', 'Xbox 360', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-SEGA_Racing.jpg'),
(355, 'Sonic the Hedgehog 4: Episode 2', 'Xbox 360', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/SonictheHedgehog4pisode292x136.jpg'),
(357, 'Super Mario 64', 'Nintendo 64', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Super_Mario_64_box_cover.jpg'),
(358, 'Super Mario RPG: Legend of the Seven Stars', 'Super Nintendo', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-SuperMarioRPGSNESCoverArtUS.jpg'),
(359, 'Super Smash Bros. Brawl', 'Wii', 'Fighting', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-SSBB_Cover.jpg'),
(360, 'The King of Fighters XIII', 'Xbox 360', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Kofxiiips3.jpg'),
(361, 'The Legend of Dragoon', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Legend_of_Dragoon.jpg'),
(362, 'Trine', 'PC', 'Puzzle', 'Backlog', 'http://howlongtobeat.com/gameimages/Trine.png'),
(363, 'Uncharted 2: Among Thieves', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/Uncharted_2_updated_PS3_logo.jpg'),
(364, 'Vagrant Story', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Vagrantstorybox.jpg'),
(365, 'Warcraft: Orcs & Humans', 'PC', 'Strategy', 'Backlog', 'http://howlongtobeat.com/gameimages/Warcraft_-_Orcs_and_Humans_Coverart.png'),
(366, 'XCOM: Enemy Unknown', 'Xbox 360', 'Strategy', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-XCOM_Enemy_Unknown_Game_Cover.jpg'),
(367, 'Xenoblade Chronicles', 'Wii', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-XenobladeBox.png'),
(368, 'Xenogears', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Xenogears_box.jpg'),
(369, 'Uncharted 3: Drake''s Deception', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Uncharted_3_Boxart.jpg'),
(370, 'Saint Seiya: Soldiers'' Soul', 'Playstation 4', 'Fighting', 'Completed', 'http://howlongtobeat.com/gameimages/saint-seiya-soldiers-soul-jaquette.jpg'),
(371, 'Saint Seiya: The Hades', 'Playstation 2', 'Fighting', 'Backlog', 'http://howlongtobeat.com/gameimages/1094938-saint_seiya_the_hades_capa_large.jpg'),
(373, 'Spider-Man: Shattered Dimensions', 'Xbox 360', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Spider-Man_Shattered_Dimensions_cover.jpg'),
(374, 'Split / Second', 'Xbox 360', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Split_Second_Velocity_EU_Cover.jpg'),
(375, 'Ape Escape', 'Playstation', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Ape_Escape_UK.jpg'),
(376, 'Furi', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/30957_Furi.jpg'),
(377, 'Sonic Adventure', 'Xbox 360', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Sonic_Adventure.PNG'),
(378, 'Eternal Darkness: Sanity''s Requiem', 'GameCube', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Eternal_Darkness_box.jpg'),
(380, 'Luigi''s Mansion', 'GameCube', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Lmbox.jpg'),
(381, 'Mario Kart: Double Dash!!', 'GameCube', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Mario_Kart_Double_Dash.jpg'),
(382, 'Super Mario Sunshine', 'GameCube', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Super_mario_sunshine.jpg'),
(383, 'Metroid Prime', 'GameCube', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-MetroidPrimebox.jpg'),
(384, 'Alundra', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/252px-Alundra.jpg'),
(385, 'Mega Man Legends', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-MMLegendsBox.jpg'),
(386, 'Dark', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/DarkEU.jpg'),
(387, 'Twisted Metal', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Twisted_Metal_cover.jpg');
INSERT INTO `games` (`id`, `name`, `plattform`, `genre`, `status`, `image`) VALUES
(388, 'Need for Speed: Most Wanted', 'Playstation 2', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/Nfsmw-win-cover.jpg'),
(389, 'Forza Horizon 2', 'Xbox 360', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/Forza_Horizon_2_Cover_Art.png'),
(390, 'Dragon Ball Z: Budokai 2', 'Playstation 2', 'Fighting', 'Backlog', 'http://howlongtobeat.com/gameimages/1814866-box_dbzb2_large.png'),
(391, 'Tom Clancy''s Splinter Cell', 'Playstation 2', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Tharealsplintercell.jpg'),
(392, 'Burnout', 'Playstation 2', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Burnout.jpg'),
(393, 'Knack', 'Playstation 4', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/Knack.jpg'),
(394, 'Resident Evil', 'Playstation 4', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/Resident_Evil_HD_Remaster.jpg'),
(395, 'Transformers: Devastation', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Transformers_Devastation_cover_art.jpg'),
(396, 'Digimon World', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Digimonworld.jpg'),
(397, 'Metroid: Zero Mission', 'Game Boy Advance', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Zmbox.jpg'),
(399, 'The Binding of Isaac', 'PC', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/TheBindingofIsaac_292x136.jpg'),
(401, 'The Lost Vikings 2', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/220px-Lost_Vikings_2_Boxshot.jpg'),
(402, 'Mega Man Zero', 'Game Boy Advance', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Mega_Man_Zero_cover.jpg'),
(403, 'Grand Theft Auto III', 'Playstation 2', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-GTA3boxcover.jpg'),
(404, 'Grand Theft Auto IV', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-GTAIV_Logo.jpg'),
(405, 'Rock n'' Roll Racing', 'Super Nintendo', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Rock_N_Roll_Racing_Cover.jpg'),
(406, 'Top Gear 2', 'Super Nintendo', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Top_Gear_2_cover.jpg'),
(407, 'Blackthorne', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-BlackthorneSNES.jpg'),
(408, 'Saints Row: Gat out of Hell', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Saints_Row_Gat_Out_of_Hell.jpg'),
(409, 'Metro 2033', 'Xbox 360', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Metro2033_wiki.jpg'),
(410, 'EarthBound', 'Super Nintendo', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-EarthBound_Box.jpg'),
(411, 'Zombies Ate My Neighbors ', 'Super Nintendo', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/150px-Zombies_Ate_My_Neighbors_box.jpg'),
(412, 'Bastion', 'Xbox 360', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Bastion_Boxart.jpg'),
(414, 'Prince of Persia: The Sands of Time', 'Playstation 2', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Sands_of_time_cover.jpg'),
(415, 'Onimusha: Warlords', 'Playstation 2', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Onimusha_-_Warlords_Coverart.png'),
(416, 'Driver', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Driver_Coverart.png'),
(417, 'Magical Quest starring Mickey Mouse', 'Super Nintendo', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/DisneysMagicalQueststarringMickeyMouse.jpg'),
(418, 'The Great Circus Mystery Starring Mickey & Minnie', 'Super Nintendo', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/2363860-snes_greatcircusmysterystarringmickeymouse_large.jpg'),
(419, 'Syphon Filter', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/252px-Syphon_Filter.jpg'),
(420, 'Batman Begins', 'Playstation 2', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Batman_Begins_Xbox_art.jpg'),
(421, 'Shadows of The Damned', 'Xbox 360', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/ShadowsOfTheDamned.jpg'),
(422, 'Fifa 17', 'Playstation 4', 'Sports', 'Completed', 'http://howlongtobeat.com/gameimages/38724_FIFA_17.jpeg'),
(423, 'Diddy Kong Racing', 'Nintendo 64', 'Racing', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-DKRboxart.jpg'),
(424, 'Banjo-Kazooie', 'Nintendo 64', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-BanjoKazooieCover500px.jpg'),
(425, 'Banjo-Kazooie: Grunty''s Revenge', 'Game Boy Advance', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Bkgruntysrevengentsc.jpg'),
(426, 'Donkey Kong 64', 'Nintendo 64', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-DonkeyKong64CoverArt.jpg'),
(427, 'The Legend of Zelda: Ocarina of Time', 'Nintendo 64', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-ZeldaOoTbox.png'),
(428, 'Advance Wars', 'Game Boy Advance', 'Strategy', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Advance_Wars_Coverart.jpg'),
(429, 'Commandos: Behind Enemy Lines', 'PC', 'Strategy', 'Completed', 'http://howlongtobeat.com/gameimages/Commandos_Behind_Enemy_Lines.jpg'),
(430, 'Machinarium', 'Android', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Machinarium-cover_art.png'),
(431, 'Little Inferno', 'Android', 'Puzzle', 'Backlog', 'http://howlongtobeat.com/gameimages/2248642-inferno629_large.jpg'),
(432, 'Superbrothers: Sword & Sworcery EP', 'Android', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/SuperbrothersSwordSworceryEP.jpg'),
(433, 'Sonic Advance', 'Game Boy Advance', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Sonic_Advance_Coverart.png'),
(434, 'Sonic Colors', 'Wii', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Sonic_Colors_box_artwork.png'),
(435, 'Paper Mario', 'Nintendo 64', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/Papermario.jpg'),
(436, 'Red Steel', 'Wii', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Red-steel-20060926031145442.jpg'),
(437, 'Guitar Hero III: Legends of Rock', 'Playstation 2', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Guitar-hero-iii-cover-image.jpg'),
(438, 'Sonic Advance 2', 'Game Boy Advance', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Sonic_Advance_2_Coverart.png'),
(439, 'The Sims 2', 'Game Boy Advance', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/The_sims_2.jpg'),
(440, 'Left 4 Dead', 'PC', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/252px-Left4Dead_Windows_cover.jpg'),
(441, 'Real Bout Fatal Fury Special: Dominated Mind', 'Playstation', 'Fighting', 'Backlog', 'http://howlongtobeat.com/gameimages/RealBoutFatalFurySpecialDominatedMind.jpg'),
(442, 'Singularity', 'Xbox 360', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/Singularity_cover.jpg'),
(443, 'Okami', 'Playstation 2', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-OkamiNTSCcoverFinal.jpg'),
(444, 'Bayonetta', 'Xbox 360', 'Hack and Slash', 'Playing', 'http://howlongtobeat.com/gameimages/Bayonetta_Box_Art.jpg'),
(445, 'Viewtiful Joe', 'Playstation 2', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-VJbox.jpg'),
(446, 'Left 4 Dead 2', 'Xbox 360', 'FPS', 'Completed', 'http://howlongtobeat.com/gameimages/250px-Left4Dead2.jpg'),
(447, 'Final Fantasy VII', 'Playstation', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Ffviibox.jpg'),
(448, 'Watch Dogs', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/watch_dogs.jpg'),
(449, 'The Simpsons Hit & Run', 'Playstation 2', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/The_Simpsons_Hit_and_Run_cover.png'),
(450, 'Rage', 'Xbox 360', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/Rage_cover.jpg'),
(451, 'Titan Souls', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/tital-souls-poster.jpg'),
(452, 'Gone Home', 'Playstation 4', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/gone_home_292x136.jpg'),
(453, 'Obscure', 'Playstation 2', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Obscure_cover.jpg'),
(454, 'Everybody''s Gone to the Rapture', 'Playstation 4', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Everybodys_gone_to_the_rapture_logo.jpg'),
(455, 'The Deadly Tower of Monsters', 'Playstation 4', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/33154_The_Deadly_Tower_of_Monsters.jpg'),
(456, 'Impossible Mission', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Mission_Impossible_for_N64,_Front_Cover.jpg'),
(457, 'Crysis 2', 'Xbox 360', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/Crysis_2_cover.png'),
(458, 'BioShock 2', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Bioshock_2_boxart.jpg'),
(460, 'Castlevania: Circle of the Moon', 'Game Boy Advance', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Castlevania_CotM_boxart.jpg'),
(461, 'Castlevania: Harmony of Dissonance', 'Game Boy Advance', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-CVHOD-front.jpg'),
(464, 'Until Dawn', 'Playstation 4', 'Survival Horror', 'Completed', 'http://howlongtobeat.com/gameimages/until-dawn-ps4.jpg'),
(465, 'Fear Effect', 'Playstation', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/254px-Fear_Effect.jpg'),
(466, 'Vampire Night', 'Playstation 2', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Vampire_Night.jpg'),
(468, 'Aero the Acro-Bat', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/200px-Aero_the_Acro-Bat_cover.jpg'),
(470, 'Zero the Kamikaze Squirrel', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Zero_the_Kamikaze_Squirrel.jpg'),
(472, 'Super Mario Paper', 'Wii', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Super_Paper_Mario_cover.jpg'),
(474, 'Tatsunoko vs Capcom: Ultimate All Stars', 'Wii', 'Fighting', 'Backlog', 'http://howlongtobeat.com/gameimages/Tatsunoko_Vs_Capcom_box_artwork.png'),
(475, 'Zack & Wiki: Quest for Barbaros'' Treasure', 'Wii', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Zack_and_Wiki_-_Quest_for_Barbaros_Treasure_Coverart.png'),
(476, 'Sin & Punishment: Star Successor', 'Wii', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/SinPunishmentStarSuccessorBox.jpg'),
(477, 'Mad Max', 'Xbox 360', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/384px-Mad_Max_2015.jpg'),
(478, 'El Shaddai: Ascension of the Metatron', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/El_Shaddai_Game_Cover_Art.png'),
(479, 'Alpha Protocol', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/Alpha_Protocol_cover.jpg'),
(480, 'Deadly Premonition', 'Xbox 360', 'Survival Horror', 'Backlog', 'http://howlongtobeat.com/gameimages/Deadly_Premonition_cover_art.jpg'),
(481, 'Vanquish', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Vanquish.jpg'),
(482, 'Resonance of Fate', 'Xbox 360', 'RPG', 'Backlog', 'http://howlongtobeat.com/gameimages/Resonance_of_Fate_Cover_Art.jpg'),
(483, 'Call of Juarez', 'Xbox 360', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Boxcallofjuarez.jpg'),
(485, 'Mortal Kombat: Shaolin Monks', 'Playstation 2', 'Adventure', 'Completed', 'http://howlongtobeat.com/gameimages/MortalKombatShaolinMonks.JPG'),
(486, 'Call of Duty 4: Modern Warfare', 'Xbox 360', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/Call_of_Duty_4_Modern_Warfare.jpg'),
(490, 'Earthworm Jim', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Earthworm_Jim_(EUR).PNG'),
(491, 'Teenage Mutant Ninja Turtles: Turtles in Time', 'Super Nintendo', 'Beat ''em up', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Turtles_in_Time_SNES_cover.jpg'),
(492, 'Final Fight', 'Super Nintendo', 'Beat ''em up', 'Backlog', 'http://howlongtobeat.com/gameimages/254px-Final_Fight_(flyer).jpg'),
(493, 'Metal Warriors', 'Super Nintendo', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/382985-metal_warriors_boxart_large.jpg'),
(494, 'Demon''s Crest', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Demonscrest_us.jpg'),
(495, 'Skyblazer', 'Super Nintendo', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/220px-Skyblazer_cover.jpg'),
(496, 'Conker''s Bad Fur Day', 'Nintendo 64', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/250px-Conkersbfdbox.jpg'),
(497, 'Lemmings', 'Super Nintendo', 'Puzzle', 'Backlog', 'http://howlongtobeat.com/gameimages/220px-Lemmings-BoxScan.jpg'),
(498, 'ActRaiser', 'Super Nintendo', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/ActRaiser_Coverart.png'),
(499, 'The 3rd Birthday', 'PSP', 'Action', 'Completed', 'http://howlongtobeat.com/gameimages/The_3rd_Birthday_Cover.jpg'),
(500, 'God of War: Chains of Olympus', 'PSP', 'Hack and Slash', 'Completed', 'http://howlongtobeat.com/gameimages/252px-God_of_War_Chains_of_Olympus_NA_version_front_cover.jpg'),
(501, 'God of War: Ghost of Sparta', 'PSP', 'Hack and Slash', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-GOW_Ghost_of_Sparta_boxart.jpg'),
(502, 'Patapon', 'PSP', 'Strategy', 'Backlog', 'http://howlongtobeat.com/gameimages/Patapon.jpg'),
(503, 'Lumines', 'PSP', 'Puzzle', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-Lumines.jpg'),
(504, 'LocoRoco', 'PSP', 'Puzzle', 'Backlog', 'http://howlongtobeat.com/gameimages/252px-LocoRoco_Coverart.png'),
(505, 'Mega Man Powered Up', 'PSP', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/1806095-box_mmpu_large.png'),
(506, 'Mega Man Maverick Hunter X', 'PSP', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/1806108-box_mmxmh_large.png'),
(507, 'Age of Zombies', 'PSP', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/AgeOfZombies_banner.jpg'),
(508, 'LittleBigPlanet', 'PSP', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Littlebigplanet-psp-box.jpg'),
(509, 'To the Moon', 'PC', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/tothemoonfirbirdgames.jpg'),
(510, 'Sly Cooper and the Thievius Raccoonus', 'Playstation 2', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Sly_Cooper_and_the_Thievius_Raccoonus_Coverart.png'),
(511, 'Rayman Fiesta Run', 'Android', 'Plattform', 'Completed', 'http://howlongtobeat.com/gameimages/Rayman-Fiesta-Run.jpg'),
(512, 'Monument Valley ', 'Android', 'Puzzle', 'Completed', 'http://howlongtobeat.com/gameimages/Monument_Valley_icon_unrounded.jpg'),
(514, 'Invisible, Inc.', 'Playstation 4', 'Strategy', 'Completed', 'http://howlongtobeat.com/gameimages/Invisible_Inc_header.jpg'),
(515, 'Stories: Path of Destinies', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/35878_Stories_The_Path_Of_Destinies.jpg'),
(516, 'Tiny Troopers: Joint Ops', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/22499_Tiny_Troopers_Joint_Ops.jpg'),
(520, 'Sonic Rivals', 'PSP', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Sonic_Rivals.jpg'),
(522, 'Half-Life 2', 'Xbox 360', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/256px-421px-HL2box.jpg'),
(524, 'Battlefield 3', 'Xbox 360', 'FPS', 'Backlog', 'http://howlongtobeat.com/gameimages/Bf3-pc-cover.jpg'),
(525, 'Gex: Enter the Gecko', 'Playstation', 'Plattform', 'Backlog', 'http://howlongtobeat.com/gameimages/Gex2Cover.jpg'),
(526, 'Color Guardians', 'Playstation 4', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/Color_Guardians_header.jpg'),
(527, 'The Swindle', 'Playstation 4', 'Action', 'Backlog', 'http://howlongtobeat.com/gameimages/The_Swindle_header.jpg'),
(528, 'Day of the Tentacle', 'Playstation 4', 'Adventure', 'Backlog', 'http://howlongtobeat.com/gameimages/35880_Day_of_the_Tentacle_Remastered.jpg'),
(529, 'This War of Mine: The Little Ones', 'Playstation 4', 'Strategy', 'Backlog', 'http://howlongtobeat.com/gameimages/34142_This_War_of_Mine_The_Little_Ones.jpg'),
(530, 'Streets of Rage', 'Mega Drive', 'Beat ''em up', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Streets_of_Rage_(cover).jpg'),
(531, 'de Blob', 'Wii', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/De-Blob-US.jpg'),
(532, 'Alex Kidd in Miracle World', 'Master System', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/240px-AlexKiddInMiracleWorldBox.jpg'),
(533, 'Super Mario Land', 'Game Boy', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Supermariolandboxart.jpg'),
(536, 'Alex Kidd in the Enchanted Castle', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/252px-Alexkiddenchantedcastle1.jpg'),
(537, 'Castle of Illusion Starring Mickey Mouse', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Castle_of_illusion_Mickey_mouse.jpg'),
(538, 'Land of Illusion Starring Mickey Mouse', 'Master System', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Land_of_Illusion_starring_Mickey_Mouse_Coverart.png'),
(539, 'World of Illusion Starring Mickey Mouse and Donald', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/230px-Mickey_World_Of_Illusion_box_art.jpg'),
(540, 'Mickey Mania: The Timeless Adventures of Mickey Mo', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Mickey_Mania.jpg'),
(541, 'Fantasia', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Fantasia_coverart_for_Sega_Mega_Drive_game.jpg'),
(542, 'Epic Mickey', 'Wii', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Epic_Mickey.jpg'),
(543, 'Disney''s Pocahontas', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/870917-g06740rkpd1_large.jpg'),
(544, 'Aladdin', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/Disneys_Aladdin_Videogame_Cover.jpg'),
(545, 'Prototype', 'Xbox 360', 'Hack and Slash', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-PROTOTYPE.png'),
(546, 'Mega Man X2', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Mmx2_box.jpg'),
(547, 'Can you Escape', 'Android', 'Puzzle', 'Completed', 'https://howlongtobeat.com/gameimages/CanyouEscapeandrod.jpg'),
(550, 'Rayman Adventures', 'Android', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/rayman-adventures-destacada.jpg'),
(551, 'Oddworld: Stranger''s Wrath ', 'Android', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Oddworld_-_Strangers_Wrath_Coverart.png'),
(552, 'Super Action Hero', 'Android', 'Plattform', 'Backlog', ''),
(555, 'Punch Quest', 'Android', 'Fighting', 'Backlog', 'https://howlongtobeat.com/gameimages/punch_quest_ios.jpg'),
(556, 'Can you Escape 2', 'Android', 'Puzzle', 'Completed', ''),
(557, 'Lazy Raiders', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Lazy_Raiders_cover.jpg'),
(558, 'The Room', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/the_room_ios.jpg'),
(559, 'World of Goo', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/WoG-BoxArt.png'),
(561, 'Blendoku', 'Android', 'Puzzle', 'Backlog', ''),
(562, 'Duet', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/Duet_jandroid.jpg'),
(563, 'Tiny Thief', 'Android', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Tiny_Thief.jpg'),
(564, 'The Silent Age', 'Android', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/The_Silent_Age.jpg'),
(565, 'Pudding Monsters', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/Pudding-Monsters.png'),
(566, 'Valiant Hearts: The Great War', 'Android', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/ValiantHeartsTheGreatWar292x136.jpg'),
(567, 'The WUUUUUUUUUUUU', 'Android', 'Puzzle', 'Backlog', ''),
(568, 'Yu-Gi-Oh! Legacy of the Duelist', 'PC', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Yu-Gi-Oh!_Legacy_of_the_Duelist.jpg'),
(569, 'MÃ´nica no Castelo do DragÃ£o', 'Mega Drive', 'Adventure', 'Backlog', ''),
(570, 'Turma da MÃ´nica em: O Resgate', 'Master System', 'Plattform', 'Backlog', ''),
(571, 'The Darkness', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/258px-Darkness_cover.jpg'),
(572, 'Joe & Mac', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Joe_and_Mac_Coverart.png'),
(573, 'Doom', 'Playstation', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Doom-boxart.jpg'),
(574, 'Quake', 'PC', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Quake1cover.jpg'),
(575, 'Sunset Riders', 'Super Nintendo', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Sunset_Riders_arcade_flyer.jpg'),
(576, 'Full Throttle', 'PC', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Full_Throttle_artwork.jpg'),
(577, 'Hook', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/hook_SNES.jpg'),
(580, 'Resident Evil: Operation Raccoon City', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/OperationRaccoonCity.jpg'),
(581, 'Resident Evil Outbreak', 'Playstation 2', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Resevil_outbreak_a.jpg'),
(582, 'Resident Evil: Dead Aim', 'Playstation 2', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Residentevildeadaim.jpg'),
(583, 'Kid Chameleon', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Kid_Chameleon_Coverart.png'),
(584, 'Ninja Gaiden Black ', 'Xbox', 'Hack and Slash', 'Backlog', 'https://howlongtobeat.com/gameimages/NinjaGaidenBlack.JPG'),
(585, 'Pitfall: The Lost Expedition', 'Playstation 2', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Pitfall_-_The_Lost_Expedition_Coverart.jpg'),
(586, 'Pitfall: The Mayan Adventure', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/200px-Pitfall_The_Mayan_Adventure-cover.jpg'),
(587, 'Syndicate', 'Xbox 360', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/240px-20110912_synd_no_rating_jpg_jpgcopy.jpg'),
(588, 'QuackShot', 'Mega Drive', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Quackshot.jpg'),
(589, 'LittleBigPlanet 3', 'Playstation 4', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/LittleBigPlanet_3_boxart.jpg'),
(590, 'Not a Hero', 'Playstation 4', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/NOT_A_HERO_header.jpg'),
(591, 'Ninja Senki DX', 'Playstation 4', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/34875_Ninja_Senki_DX.jpg'),
(592, 'TorqueL', 'Playstation 4', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/TorqueL_header.jpg'),
(593, 'Azkend 2: The World Beneath', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/Azkend_2_The_World_Beneath.jpg'),
(594, 'Can you Escape 5', 'Android', 'Puzzle', 'Completed', ''),
(595, 'The Adventures of Lomax', 'Playstation', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-The_Adventures_of_Lomax.jpg'),
(596, 'Herc''s Adventures', 'Playstation', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Hercs_adventures_sega_saturn.jpg'),
(597, 'Ghoul Patrol', 'Super Nintendo', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/220px-GhoulpatrolSNES.JPG'),
(598, 'Final Fantasy Type-0', 'PSP', 'RPG', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Final_Fantasy_Type-0_logo.jpg'),
(599, 'Bomberman', 'PSP', 'Strategy', 'Backlog', 'https://howlongtobeat.com/gameimages/252px-Bomberman_PSP.jpg'),
(600, 'Leedmees', 'Xbox 360', 'Puzzle', 'Backlog', ''),
(601, 'Halo: Reach', 'Xbox 360', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/Halo-_Reach_box_art.png'),
(602, 'Vampire: The Masquerade - Bloodlines', 'PC', 'RPG', 'Backlog', 'https://howlongtobeat.com/gameimages/VampireTheMasqueradeBloodlinesCoverart.png'),
(603, 'Grand Theft Auto: Liberty City Stories', 'PSP', 'Action', 'Playing', 'https://howlongtobeat.com/gameimages/252px-Grand_Theft_Auto_Liberty_City_Stories_box.jpg'),
(604, 'Dragon Ball: Advanced Adventure', 'Game Boy Advance', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Dragonball-gba.jpg'),
(605, 'Dragon Ball Z: The Legacy of Goku', 'Game Boy Advance', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Dragon_Ball_Z_The_Legacy_of_Goku.jpg'),
(606, 'Jurassic Park', 'Mega Drive', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/200px-Jurassic_Park_(Sega_game).jpg'),
(607, 'Oddworld: Abe''s Oddysee', 'Playstation', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Abes_Oddysee_Cover.jpg'),
(608, 'Wild Arms', 'Playstation', 'RPG', 'Backlog', 'https://howlongtobeat.com/gameimages/Wildarmscase.jpg'),
(609, 'Binary Domain', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Binary_Domain_Cover_Art.png'),
(610, 'Chester Cheetah: Too Cool to Fool', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/220px-Chester_Cheetah_-_Too_Cool_to_Fool_Coverart.png'),
(611, 'Donald in Maui Mallard', 'Mega Drive', 'Plattform', 'Completed', 'https://howlongtobeat.com/gameimages/250px-Mauimallard.jpg'),
(612, 'Tomba!', 'Playstation', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Tombi_cover_pal.jpg'),
(613, 'Bomberman Wars', 'Playstation', 'Strategy', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Bomberman_Wars.jpg'),
(614, 'Tearaway Unfolded', 'Playstation 4', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Tearaway_Unfolded.jpg'),
(615, 'Lumo', 'Playstation 4', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/37433_Lumo.jpg'),
(616, 'Nights: Journey of Dreams', 'Wii', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/NiGHTS.jpg'),
(617, 'Spec Ops: The Line', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/2066519-spec_ops_thelinelarge.jpg'),
(618, 'Corpse Party', 'PSP', 'Survival Horror', 'Backlog', 'https://howlongtobeat.com/gameimages/CorpseParty.png'),
(619, 'Inversion', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Inversion_coverart.jpg'),
(620, 'I am Alive', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/I_Am_Alive_Cover_Art.png'),
(621, 'Spyro 2: Ripto''s Rage!', 'Playstation', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/252px-Spyro_2_-_Riptos_Rage_Coverart.png'),
(622, 'Bubsy in: Claws Encounters of the Furred Kind', 'Super Nintendo', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/680612-bubymg0f_large.jpg'),
(623, 'Blasto', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/blasto_psx.jpg'),
(624, 'Capcom vs. SNK: Millennium Fight 2000 Pro', 'Playstation', 'Fighting', 'Backlog', 'https://howlongtobeat.com/gameimages/2179473-box_cvsp_large.png'),
(625, 'Totally Spies!', 'Game Boy Advance', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Totally_Spies_(GBA_box_art).jpg'),
(626, 'Dragon Ball Z: Shin Budokai', 'PSP', 'Fighting', 'Backlog', 'https://howlongtobeat.com/gameimages/1814875-box_dbzsb_large.jpg'),
(627, 'Tomb Raider', 'Playstation', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Tomb_Raider_1_Box.jpg'),
(629, 'Klonoa 2: Dream Champ Tournament', 'Game Boy Advance', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Klonoa_2_Dream_Champ_Tournament_Packaging02.jpg'),
(630, 'Klonoa Heroes: Densetsu no Star Medal', 'Game Boy Advance', 'Adventure', 'Backlog', ''),
(631, 'Borderlands', 'Xbox 360', 'FPS', 'Backlog', 'https://howlongtobeat.com/gameimages/Borderlandscover.jpg'),
(632, 'A King''s Tale: Final Fantasy XV', 'Playstation 4', 'Beat ''em up', 'Backlog', 'https://howlongtobeat.com/gameimages/41599_A_Kings_Tale_Final_Fantasy_XV.jpg'),
(633, 'The Legend of Zelda: Twilight Princess', 'Wii', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-TP_Wii.jpg'),
(634, 'NiGHTS into Dreams...', 'Xbox 360', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/Nights_into_Dreamsdotdotdot_Coverart.png'),
(635, 'Naruto: Ninja Council', 'Game Boy Advance', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/2215059-box_narutonc.jpg'),
(636, 'Pokemon Mystery Dungeon: Red Rescue Team', 'Game Boy Advance', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/200px-Pokemon_Mystery_Dungeon_-_Blue_Rescue_Team_Coverart.png'),
(637, 'The Lost World: Jurassic Park', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/The_Lost_World_-_Jurassic_Park_(video_game).jpg'),
(638, 'Shin Megami Tensei: Persona', 'PSP', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Shin_Megami_Tensei_Persona_Cover.jpg'),
(639, 'Medabots: Metabee', 'Game Boy Advance', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/MedabotsMetabee.JPG'),
(640, 'The Legend of Zelda: The Minish Cap', 'Game Boy Advance', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-TMC_Box_Art.JPG'),
(642, 'PokÃ©Park Wii: Pikachu''s Adventure', 'Wii', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/PokeparkWii.png'),
(643, 'The Sims 2: Castaway', 'PSP', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-The_Sims_2_-_Castaway_Coverart.png'),
(644, 'Looney Tunes: Sheep Raider', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/SheepRaider.JPG'),
(645, 'Metal Slug', 'Playstation', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/225px-Metal_Slug_(cover).jpg'),
(646, 'Croc: Legend of the Gobbos', 'Playstation', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Croc_Legend_of_the_Gobbos.jpg'),
(647, 'Kirby Super Star', 'Super Nintendo', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/250px-Kirby_Super_Star_Coverart.png'),
(648, 'Marvel: Ultimate Alliance', 'PSP', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-Ultimate_alliance.PNG'),
(649, '10 Second Ninja X ', 'Playstation 4', 'Plattform', 'Backlog', 'https://howlongtobeat.com/gameimages/38775_10_Second_Ninja_X.jpg'),
(650, 'Lovers In A Dangerous Spacetime', 'Playstation 4', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/Lovers_In_A_Dangerous_Spacetime_header.jpg'),
(651, 'Curses ''N Chaos', 'Playstation 4', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Curses_N_Chaos_header.jpg'),
(653, 'Bully', 'Xbox 360', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/bully.jpg'),
(654, 'Alien 3', 'Super Nintendo', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/alien_3.jpg'),
(655, 'Letter Quest: Grimm''s Journey', 'Android', 'Puzzle', 'Backlog', 'https://howlongtobeat.com/gameimages/LetterQuestGrimmsJourney.jpg'),
(656, 'Mirror''s Edge: Catalyst', 'Playstation 4', 'Action', 'Backlog', 'https://howlongtobeat.com/gameimages/mirrors_edge_2.jpg'),
(657, 'The Witcher 3: Wild Hunt', 'Xbox 360', 'RPG', 'Backlog', 'https://howlongtobeat.com/gameimages/256px-TW3_Wild_Hunt_logo.png'),
(658, 'Ori and the Blind Forest', 'PC', 'Adventure', 'Backlog', 'https://howlongtobeat.com/gameimages/Ori_and_the_Blind_Forest_Logo.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hqs`
--

CREATE TABLE `hqs` (
  `name` varchar(50) NOT NULL,
  `edition` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `hqs`
--

INSERT INTO `hqs` (`name`, `edition`, `status`, `image`) VALUES
('Amazing Fantasy', '15', 'Read', 'https://cache.skoob.com.br/local/images//2zfVdNZzZnm6jjEVIBjrn1763gE=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/268534/AMAZING_FANTASY_A15_1348577679B.jpg'),
('The Amazing Spider-Man', '1', 'Read', 'https://cache.skoob.com.br/local/images//Vb4QzMCMYwbDJ11VesB1RYozmVE=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/228079/THE_AMAZING_SPIDERMAN_A01_1332730947B.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movies`
--

CREATE TABLE `movies` (
  `name` varchar(50) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movies`
--

INSERT INTO `movies` (`name`, `genre`, `status`, `image`) VALUES
('The Shallows', 'Thriller', 'Watched', 'https://img.fstatic.com/jf_3Yjh9GelG2j4IA13kDQdvpEI=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/the-shallows_t129743_PlZdqMQ.jpg'),
('Lights Out', 'Horror', 'Watched', 'https://img.fstatic.com/c4G-VJ25KhQoigI8zthEKmuMQjA=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/lights-out_t127697_gnnjyUI.jpg'),
('Batman v Superman: Dawn of Justice', 'Action', 'Watched', 'https://img.fstatic.com/AbpOBq3eJBSETygcATLhHnFciis=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/batman-vs-superman-a-origem-da-justica_t80724_1CZbljI.jpg-large'),
('Underworld', 'Thriller', 'Watched', 'https://img.fstatic.com/vjz3ZyBwqlQxnJX2_qRYvbb6NQ4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2009/02/a4e901b5c8cc7247e453628f47460fe4.jpg'),
('Train to Busan', 'Thriller', 'Watched', 'https://img.fstatic.com/aUX22wibpNs176FZuODV26o5R4k=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/09/2016080718282153128_1.jpg'),
('Under the Shadow', 'Thriller', 'Watched', 'https://img.fstatic.com/bixrNaBgYLsoU3Ew-nUEpywGQhM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/11/Sob_as_Sombras.jpg'),
('The Awakening', 'Thriller', 'Watched', 'https://img.fstatic.com/33RrOh1kp_jyUmD9wa4FaQHkuXg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/11/dec2a4db32f125c7ce5f6eafe1ad97ac.jpg'),
('Resident Evil: The Final Chapter', 'Thriller', 'Watched', 'https://img.fstatic.com/2HR4oWQTt_C4scK29qyf4R73HT0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/12/resident-evil-final-poster.jpg'),
('The Invitation', 'Thriller', 'Watched', 'https://img.fstatic.com/zW1FXc1oeZYATR1-OkPutBBqM5s=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/03/a-invasao_t66623.jpg'),
('Bone Tomahawk', 'Thriller', 'Backlog', 'https://img.fstatic.com/eHpYBWxr3xtCfDFRGcFHgSrMHa0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/07/bone-tomahawk_t68339.jpg'),
('Blair Witch', 'Horror', 'Watched', 'https://img.fstatic.com/XrW1jusbmgHwOkeNqm7FEbB3ohc=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/08/POSTERBR_TEASER_BRUXA_DE_BLAIR_BX.jpg'),
('The Village', 'Horror', 'Watched', 'https://img.fstatic.com/QlFW2u9bFcgLfm52cGU-C2IQ9yI=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/3e0490ab455a793b0da12486c6803853.jpg'),
('Don''t Breathe', 'Thriller', 'Watched', 'https://img.fstatic.com/37taWAPaEhLrO26s5YWCH2kGsFM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/a-man-in-the-dark_t109812.jpg'),
('The Grey', 'Thriller', 'Watched', 'https://img.fstatic.com/Q9w4AK_l9xdWq51umdPRyh8dYJU=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/10/e75d3d63c2a12ad3fd282e441789373e.jpg'),
('As Above, So Below', 'Horror', 'Watched', 'https://img.fstatic.com/2GpFUQ6oGjj16VqMXswTX62DHJU=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/09/assim-na-terra-como-no-inferno_t98447_2.jpg'),
('Alien', 'Horror', 'Watched', 'https://img.fstatic.com/HMM1BnXWeNmwZJUZNtyvTGVd0Jg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/07/d28542fd52174b0f054c4c9e170a0fa2.jpg'),
('Aliens', 'Horror', 'Watched', 'https://img.fstatic.com/PYXM1STc92EtoLkF44O2KHO9A9A=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/10/aliens-o-resgate_t172.jpg'),
('Alien: Resurrection', 'Horror', 'Watched', 'https://img.fstatic.com/q3AfUDwGzuW_6SuHXyH9xvfUtNw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/07/62fad408795cc3f2209fa84c2026166e.jpg'),
('Alien 3', 'Horror', 'Watched', 'https://img.fstatic.com/48kovkkdVyI-3mN3-2lUN_hOoxg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/01/9471ed2b257533ec46dcaa211a82b9ee.jpg'),
('Prometheus', 'Thriller', 'Backlog', 'https://img.fstatic.com/rD6xNB5ceLiy2phO_j5B8ez6-N8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/36a92737ceda833425f8e24749f2eab0.jpg'),
('Logan', 'Action', 'Watched', 'https://img.fstatic.com/1HCZ9Ha3iSZg-SzhFIeJcVcRqSI=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/10/14608719_1245010155537115_4558418574340565173_o.jpg'),
('Resident Evil', 'Thriller', 'Watched', 'https://img.fstatic.com/dKoNrc7w-lWDVBUOBbms8O8Uwt8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/01/cfec50d29516f4de75e2514763fecf65.jpg'),
('Resident Evil: Extinction', 'Thriller', 'Watched', 'https://img.fstatic.com/BevqLB5poAiyLd0985Ff6AS3w1A=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/01/residentevil3extincion13-bra.jpg'),
('Resident Evil: Apocalypse', 'Thriller', 'Watched', 'https://img.fstatic.com/AjoSPU5z2sbRhG1Y1bVnKlG7sp8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/01/e16ef70343080ba64c7ae1a279a48dd4.jpg'),
('Resident Evil: Afterlife', 'Thriller', 'Watched', 'https://img.fstatic.com/Yv7-dOEo0P3FTw_OAwp12AivcWY=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/09/7b68d71bbaab2607c7f69eabb211994c.jpg'),
('Resident Evil: Retribution', 'Thriller', 'Watched', 'https://img.fstatic.com/zH31UIq1p9wnEkWHOqp7her2aZ0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/05/8fcc7961db2ecc11291e8a92eacbbc62.jpg'),
('Resident Evil: Degeneration', 'Thriller', 'Watched', 'https://img.fstatic.com/ixN-t8FgL1Wm1ujsPW7yS84yc98=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/09/7be7a294cc33e84de91ee0dc7a1972d7.jpg'),
('Resident Evil: Damnation', 'Thriller', 'Watched', 'https://img.fstatic.com/YYAqY55ZdiIXDekBOIzhs6-t83Q=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/08/fa25e61fddd5845bdeda647725eb251f.jpg'),
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 'Watched', 'https://img.fstatic.com/ZMnHBf0CHPVFaFRmVH2tFv-ScjA=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/f7f30f82583e85cf847a8072cf9dfb83.jpg'),
('Harry Potter and the Chamber of Secrets', 'Fantasy', 'Watched', 'https://img.fstatic.com/G1G3W2As-xFkYx629WNyPAkX304=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/615c215203315947623f2a2d71be3c3a.jpg'),
('Harry Potter and the Prisoner of Azkaban', 'Fantasy', 'Watched', 'https://img.fstatic.com/159dM05LnfFs0F-hIu1oTefqHl4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/07/0090f711c361759d864a20d150f16133.jpg'),
('Harry Potter and the Goblet of Fire', 'Fantasy', 'Watched', 'https://img.fstatic.com/tgBtPy1vhrALs0zgzKTBO38TOnM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/14d55f09f349db301d78f4f06dd59b1b.jpg'),
('Harry Potter and the Order of the Phoenix', 'Fantasy', 'Backlog', 'https://img.fstatic.com/fqRmQJnkChIet1i_QHiXXZkrfzQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/10/082b007a669ee9c2faae1fb30336eada.jpg'),
('Arrival', 'Drama', 'Backlog', 'https://img.fstatic.com/paepjG2Gl9FiZlPcuyJ52n5kcpk=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/08/chegada_2-1.jpg'),
('Split', 'Thriller', 'Backlog', 'https://img.fstatic.com/e1xO-ZLZOV-F5QHnD_Z9s8W5zJw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/11/split_ver3.jpg'),
('Warcraft', 'Fantasy', 'Backlog', 'https://img.fstatic.com/-denQjLnbrF7W75zWTI2rja4qOc=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/warcraft-o-primeiro-encontro-de-dois-mundos_t14786.jpg'),
('Assassin''s Creed', 'Action', 'Backlog', 'https://img.fstatic.com/4cmdCX_W8M7Kpopl9WpMfk6V1Z4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/05/assassin-s-creed_t61044_Zfqdrxq.jpg'),
('Interstellar', 'Fantasy', 'Backlog', 'https://img.fstatic.com/FlbnR1rC_CsQyZ-2xkLWRs6gTbg=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/09/interestelar_t27814_14.jpg'),
('Hush', 'Thriller', 'Watched', 'https://img.fstatic.com/-PLH8xDoI9pcWkKRoxuRhd3cw9U=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/hush_t192328.jpg'),
('10, Cloverfield Lane', 'Thriller', 'Watched', 'https://img.fstatic.com/nz7D3LvK9su0Ls-rpAQzexalIB8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/02/rua-cloverfield-10_t24360.jpg'),
('The Conjuring', 'Horror', 'Watched', 'https://img.fstatic.com/casdVdBquXWddtHcESJa8Fxv6Zc=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/04/d0b7c5c989e1717f4c27431f9c11ad47.jpg'),
('The Conjuring 2', 'Horror', 'Watched', 'https://img.fstatic.com/KGrE06RumgdIp15wVhUSEHC-_Qw=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/01/invocacao-do-mal-2_t82649_zFSXx5Q.jpg'),
('The Witch', 'Horror', 'Watched', 'https://img.fstatic.com/GM-vSLcVt_DyO8LCvG7YqwZLQNM=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/a-bruxa_t113126.jpeg'),
('[REC]', 'Horror', 'Watched', 'https://img.fstatic.com/7yJnAy1Kfv5JHhWqjG8U_VSyJ9A=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/09/fc7c4d64fa3d88f84e7a80d818ab7607.jpg'),
('[Rec]Â²', 'Horror', 'Watched', 'https://img.fstatic.com/DsOrA0UvlHlVzOsSe_OfYQdJ1sY=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/08/6091b7768647466892059657d314bc79.jpg'),
('[Rec]Â³: GÃ©nesis', 'Horror', 'Backlog', 'https://img.fstatic.com/KynvXG7UbOj3SLVmIdHaDMPzTdY=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/06/d48b985b67e2b8ee8a7974535f4f28df.jpg'),
('47 Meters Down', 'Thriller', 'Watched', 'https://img.fstatic.com/H7wVViZeq-T_Cwp8h_ZP3xOPA9I=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/01/47-meters-down_t105765.jpg'),
('The Wailing', 'Thriller', 'Backlog', 'https://img.fstatic.com/xnK49voeYTtjikDmw61WV0v56jo=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/05/gokseong_t120343_daMviwT.jpg'),
('Signs', 'Thriller', 'Watched', 'https://img.fstatic.com/z_8Znlb6Db-0SVCvoHq05mkYGuQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/1227cfe52564a280f0f4995e6a5ec702.jpg'),
('In the Heart of the Sea', 'Action', 'Backlog', 'https://img.fstatic.com/SZRCrdyGYq9wkYF5wopbu-8Gcao=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/10/no-coracao-do-mar_t77559.jpg'),
('Jungle Book', 'Adventure', 'Backlog', 'https://img.fstatic.com/KLzWGazXfm13UftILeLJ2xUPsCQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/03/9dc8ea37be9c368fc895a3562dd885a0.jpg'),
('Green Room', 'Horror', 'Watched', 'https://img.fstatic.com/GjomOIL9kK5i8lyqMLHnlCmamb0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/green-room_t99884.jpg'),
('The Monster', 'Horror', 'Backlog', 'https://img.fstatic.com/4mFgEcp6fCa2oRUgDdrIDSuo9B4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/11/The_Monster_poster.jpg'),
('X-Men Origins: Wolverine', 'Action', 'Watched', 'https://img.fstatic.com/a6YlLlzR_7CFJRKXmtSgOwlQIX8=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/01/751b843ee50b19a44ef49aad544dbf58.jpg'),
('X-Men', 'Action', 'Watched', 'https://img.fstatic.com/2fMfSBPKnIMbn33OMd6QDsWCMds=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/39826605e7002dbda8dd59addac86d18.jpg'),
('X2', 'Action', 'Backlog', 'https://img.fstatic.com/NMqqee8rMOtZhHLUQDHnwMp6_no=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/aba84cedc1f51b5db44c93c7d5495a2f.jpg'),
('The Omen', 'Horror', 'Backlog', 'https://img.fstatic.com/YfXZ_Im9KZ4q6xKd04Q_V3hNSko=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/08/61b6d3e343ff5c78527bd92f547b36c3.jpg'),
('Predestination', 'Action', 'Backlog', 'https://img.fstatic.com/xaQfYU478BgYjdYN6CrXEF9QaB0=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/09/predestination_t102250.jpg'),
('Snowpiercer', 'Drama', 'Watched', 'https://img.fstatic.com/rjmpVyJDFHJuZUhdl1KLIobb3Vo=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/07/o-expresso-do-amanha_t51518_UW675Zi.jpg'),
('Before I Wake', 'Thriller', 'Backlog', 'https://img.fstatic.com/OPQi0EiAD4hTAPKvo2U17CKiYYE=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/o-sono-da-morte_t93024.jpg'),
('Room', 'Drama', 'Backlog', 'https://img.fstatic.com/2CTwBQYN09axv4Pmn5JcfTXP5Bc=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/07/room_t98036.jpeg'),
('Jeepers Creepers', 'Horror', 'Backlog', 'https://img.fstatic.com/ekbmIuePKosYT56kVliOK0FLB24=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/1a55a340698488c6a48449c970066a13.jpg'),
('The Lord of the Rings: The Fellowship of the Ring', 'Fantasy', 'Backlog', 'https://img.fstatic.com/KigUBJdF9nL_ZkGMDamOJb7smC4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/b4dd52b5f7d02409561cf315e3518bd3_2.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `name` varchar(50) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`name`, `genre`, `status`, `image`) VALUES
('American Horror Story (Season 4)', 'Thriller', 'Watching', 'https://img.fstatic.com/8LjCR5Ve4yZWsqxAeoB1Kc2QS0U=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/12/2c7ff0ad34f1b0cb37e9fb6706535c9d.jpg'),
('As Aventuras de Jackie Chan (Season 1)', 'Anime', 'Watched', 'https://img.fstatic.com/VdCt6xv0elPcneQCq-jPDjlg_2E=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/f1ab14b3c3125ccdd001bae4e3aedaa0.jpg'),
('Bates Motel (Season 1)', 'Thriller', 'Watched', 'https://img.fstatic.com/yjzYdBtsXSkA6NSkuR-mUxgUYg8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/01/bates-motel-1a-temporada_t60489_6.jpg'),
('Better With You', 'Comedy', 'Watched', 'https://img.fstatic.com/-3N_t9r7d-eSULw5MIHeMIU4CEQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/02/28fba8c5b66b25e43ec75f6fd27775ff.jpg'),
('Black Mirror (Season 3)', 'Thriller', 'Watched', 'https://img.fstatic.com/GaG89T6Fmjrsfe2B_aG1gH3wkYE=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/02/bd47a586f8c61a6ad09fa6946135518f.jpg'),
('Cashmere Mafia', 'Drama', 'Watched', 'https://img.fstatic.com/SauqZTWxAelYzxMz7CxuKuWA3LQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/08/a707de3a7e778d082d6f5309fb79e428.jpg'),
('Dead Set', 'Zombies', 'Watched', 'https://img.fstatic.com/RriwPxn-9IB2Q_I_2a-el04JmJ4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/02/8b4cda61f579eb457af8b025a55f2b0a.jpg'),
('Dragon Ball (Episode 28)', 'Anime', 'Watching', 'https://img.fstatic.com/6cWU0kyJoV-JiNvAXXlKRg8lYcM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/dragon-ball-1a-temporada_t26473_14.jpg'),
('Episodes (Season 3)', 'Comedy', 'Watched', 'https://img.fstatic.com/55YV-Gt4dxOzmbRXhqPkFjbLHmM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/04/episodes-1a-temporada_t32577.jpg'),
('Friends', 'Comedy', 'Watched', 'https://img.fstatic.com/mXGNuJVhHJloqt_nZOxjdcVOHUQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/18a562be18642a3daf75cdfd4e4f4360.jpg'),
('Game of Thrones (Season 6)', 'Fantasy', 'Watched', 'https://img.fstatic.com/uyoq8NDZNjrD6fSPD7mWyXhIPnU=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/03/987f793ed039483c6b22ba0e289bac41.jpg'),
('Glee (Season 2)', 'Musical', 'Watched', 'https://img.fstatic.com/_Gr0DaDAo5FY8mRF4LA6M2ejg0I=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/91aced840c8534cd67b069fc118ef841.jpg'),
('Grey''s Anatomy (Season 12)', 'Drama', 'Backlog', 'https://img.fstatic.com/kJ9XVlASpugFlNBkC1MbhHt3cyk=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/8aa87084eec4a91974ef5cc0f3759e90.jpg'),
('Raising Hope (Season 1)', 'Comedy', 'Watched', 'https://img.fstatic.com/EaHG9wNgQ9EPCs3Xx0xk-bwv9lM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/11/ffe1db412428d01b37f2fda307749b69.jpg'),
('House MD (Season 1)', 'Drama', 'Watched', 'https://img.fstatic.com/juwqWJCNSGARnbxnttfVqiP-NW4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/fa8ecd4a95d069af7a25879d9669558b.jpg'),
('How I Met Your Mother', 'Comedy', 'Watched', 'https://img.fstatic.com/UldntxU-oWlNMzp0CZGi5cq7euo=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/64ff6680f17b7d85965a81d28dda83c0.jpg'),
('How to Get Away With Murder (Season 2)', 'Drama', 'Watched', 'https://img.fstatic.com/QKt84q4gjAynUoOlJzoYIdRnnk4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/08/how-to-get-away-with-murder-1a-temporada_t95316.jpg'),
('Joey', 'Comedy', 'Watched', 'https://img.fstatic.com/duvu0qiD7RVXdBeYzN3jRTqjlO4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/04/1aeb3dbd56a3b9ae91565fe8d0455f3b.jpg'),
('Melissa & Joey', 'Comedy', 'Watched', 'https://img.fstatic.com/3AC_swOiRZDIoGb4_XHtFwQq1gQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/melissa-joey-1a-temporada_t28017.jpg'),
('Lost', 'Thriller', 'Watched', 'https://img.fstatic.com/CHgkB_JRuwjSmBwhCWVaG7cvlW4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/7cbe263073e39efd0eba01662872da7d.jpg'),
('Mr. Robot (Season 2)', 'Drama', 'Backlog', 'https://img.fstatic.com/CZyXCBkqu06-aBnJvzuc1qeKbO4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/mr-robot-1a-temporada_t113869.jpg'),
('Mr. Sunshine', 'Comedy', 'Watched', 'https://img.fstatic.com/W6Zm_IVXZLf5kS39hGMj8cpQCbU=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/02/227b5099aada988e63f28f5dfd25e00c.jpg'),
('Naruto (Episode 99)', 'Anime', 'Watched', 'https://img.fstatic.com/BRgOxwWX0yof-0Cv-bKpbzUmJ5Y=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/naruto-2a-temporada_t26197_1.jpg'),
('One Tree Hill (Season 1)', 'Drama', 'Watched', 'https://img.fstatic.com/hyZkoWKc1ehnlFfG7sgZLtHZauc=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/81cd9947b86acd1deb083632c1ce29ee.jpg'),
('Os Cavaleiros do Zodíaco: Santurário', 'Anime', 'Watched', 'https://img.fstatic.com/yivJMHqRyCq_t1BbcIGSzH0OfMQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/os-cavaleiros-do-zodiaco-saga-1-santuario_t25294_1.jpg'),
('Os Cavaleiros do Zodíaco: Asgard', 'Anime', 'Watched', 'https://img.fstatic.com/FJDc3txPBccqAYQOYuifKIw2W38=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/os-cavaleiros-do-zodiaco-saga-2-asgard_t25295_2.jpg'),
('Pokemon (Episode 83)', 'Anime', 'Watched', 'https://img.fstatic.com/EWVeD4r8gDiTNkXmsh-4PLWVvLs=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/pokemon-1a-temporada_t19163.jpg'),
('Private Practice (Season 1)', 'Drama', 'Watched', 'https://img.fstatic.com/Dk1J7rE6vC7HbzsTvqjZoVfxM_c=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/02/d811c11e44222288c83bbc057f446a9d.jpg'),
('Scream (Season 2)', 'Thriller', 'Watched', 'https://img.fstatic.com/0OjTHl3Y-d8RN_2vtlSn9q5NlIs=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/scream-2a-temporada_t125256_qbTfnPd.jpg'),
('Scrubs', 'Comedy', 'Watched', 'https://img.fstatic.com/7A5qGyE0rjp_LsiAozazGYGGzv4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/cc9248df095612a4d44b217d599e9515.jpg'),
('Seinfeld', 'Comedy', 'Watched', 'https://img.fstatic.com/ywRay5eCMTP3TK2w8zNDxwbH6sM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/06/a1e6de9c2e0c7dad154da43a1e8cc5f6.jpg'),
('Stranger Things (Season 1)', 'Thriller', 'Watched', 'https://img.fstatic.com/urWMwEnte092dCg96R6zpTb_1bM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/07/stranger-things-1a-temporada_t121192.jpg'),
('Street Fighter II: Victory', 'Anime', 'Watched', 'https://img.fstatic.com/QyrGt7wpczeBKFKibsYspJRHtL0=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/street-fighter-ii-victory_t33726.jpg'),
('Supernatural (Season 9)', 'Thriller', 'Backlog', 'https://img.fstatic.com/YDnzxxRR42ziTFqOpukxUdsAXwY=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/12/69768330bb36ea3f6268a1f7df9d466f.jpg'),
('Terra Nova', 'Thriller', 'Watched', 'https://img.fstatic.com/3LLDkGggwMA9MO_dWh7R3_N4-WQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/09/05897d19acbe938e005b8f1f9a67101a.jpg'),
('That ''70s Show (Season 2)', 'Comedy', 'Watching', 'https://img.fstatic.com/yIfinsC76WqPzR2TCEnqyfTIEvM=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/05/2ba0bba8d58507f1a15be0beb7f3186f.jpg'),
('The Big Bang Theory (Season 10)', 'Comedy', 'Backlog', 'https://img.fstatic.com/SpVo-2-gV_3l2VYlm8qs36AKTT8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/02/c1a64faf6b4dd65743253b2fb57e07d3.jpg'),
('The Middle (Season 1)', 'Comedy', 'Watched', 'https://img.fstatic.com/SPyPSvb1dxomJQ3yRQgbSZ-Nzd8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/05/c179891a6becd1869cbbbc67e5d3e8b3.jpg'),
('The OC', 'Drama', 'Watched', 'https://img.fstatic.com/bE-NnUin-K1xUZKtG-3LvO3slX8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/11/e9c760eb4788dfa320a7f64ac6f5e2a3.jpg'),
('The Ranch (Season 2)', 'Comedy', 'Watched', 'https://img.fstatic.com/DEZ5byLXxSN16HXc827T5rx1FAw=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/03/the-ranch-1a-temporada_t126285_CeSf9ov.jpg'),
('The Simpsons (Season 1)', 'Comedy', 'Watched', 'https://img.fstatic.com/BN_FOJWCOBeDzgtLHcLmawJcwvI=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/02/b915cdea4d098d415f38e20fc494ff28.jpg'),
('The Vampire Diaries (Season 8)', 'Drama', 'Watching', 'https://img.fstatic.com/ZbGCSzNwVcYS1GkujjAlQZbfxuQ=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/02/279d1256f8095f17c6cd8f2dfec25fb6.jpg'),
('The Walking Dead (Season 7)', 'Thriller', 'Backlog', 'https://img.fstatic.com/7zM4ZAP0lEXtDprGilk2zLYAl2M=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/09/2449c03fd2d98d4e4e219cc807eee626.jpg'),
('Two and a Half Men', 'Comedy', 'Watched', 'https://img.fstatic.com/LVONbpdn26RSoBGUHf_WqLBmj88=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/05/b350ba803559f63419df7dabe40e7f9f.jpg'),
('Will & Grace (Season 2)', 'Comedy', 'Watched', 'https://img.fstatic.com/22gR6NC_PBIdq-l4snRYxdXai4E=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/dff6431e680950d4f85750c19c77d559.jpg'),
('Yu-Gi-Oh! (Episode 49)', 'Anime', 'Watched', 'https://img.fstatic.com/uOCcFYsGlyTUgOQh39LvvI-dZ7I=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/yu-gi-oh-duel-monsters_tNone.jpg'),
('Z Nation (Season 2)', 'Zombies', 'Backlog', 'https://img.fstatic.com/XTnFLL6lCB6_K-pWLo7aQAa2nR0=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/07/z-nation_t97611.jpg'),
('Dead of Summer', 'Thriller', 'Watched', 'https://img.fstatic.com/TsQnSZCUanyYmVg6_pgeXYhsUS4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/05/dead-of-summer-1a-temporada_t195635_7LH2ACM.jpg'),
('Orphan Black (Season 3)', 'Thriller', 'Watching', 'https://img.fstatic.com/G74jckw6_MKQ08vYCScoKO44aLU=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/06/orphan-black-5a-temporada_t206202.jpg'),
('Slasher (Season 1)', 'Thriller', 'Backlog', 'https://img.fstatic.com/jT09Ydgz1zlKKABspYBU6a0w8t8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/02/slasher_tNone.png'),
('The Originals (Season 4)', 'Thriller', 'Backlog', 'https://img.fstatic.com/wlTMKABkSpLunr23ENPMS4A0CBw=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/05/97f855b4918d62d6d9c9f5f94521faa3.jpg'),
('Fear the Walking Dead (Season 1)', 'Thriller', 'Backlog', 'https://img.fstatic.com/KhT2j4GoQR7K3ceMpx7bSapLjd8=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/08/fear-the-walking-dead-1a-temporada_t85922.jpg'),
('The Exorcist (Season 1)', 'Thriller', 'Backlog', 'https://img.fstatic.com/R6jspwVK6PRlgsPjJs3XKe2drYE=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/07/the-exorcist-1a-temporada_t84127.jpg'),
('Sense8 (Season 1)', 'Adventure', 'Backlog', 'https://img.fstatic.com/ckVDrtntjfeWaUBPH8dNyQbSQlg=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/06/sense8-1a-temporada_t92039.jpg'),
('InuYasha', 'Anime', 'Backlog', 'https://img.fstatic.com/VFDMpFsSGEW-b88d2sapTKBW47w=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/inuyasha-1a-temporada_t27706.jpg'),
('Yu Yu Hakusho', 'Anime', 'Backlog', 'https://img.fstatic.com/szWeZt-xvPdyMNnhlWAeK3IqWE4=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2012/05/d4976144ec7e91be02ed25e0bceea718.jpg'),
('Os Cavaleiros do Zodíaco: Poseidon', 'Anime', 'Watched', 'https://img.fstatic.com/ddBxghzSdrzUt9nREKTff4C9TNY=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/os-cavaleiros-do-zodiaco-saga-3-poseidon_t31199.jpg'),
('Digimon', 'Anime', 'Backlog', 'https://img.fstatic.com/tFczNrUKT4iX9VefBi2Pu-D52uk=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/11/digimon-1a-temporada_t24593.jpeg'),
('Westworld (Season 1)', 'Thriller', 'Watching', 'https://img.fstatic.com/9TMbdzF4hFwJnu7SWwCvzzG334M=/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/09/westworld_poster.jpg'),
('The OA (Season 1)', 'Thriller', 'Backlog', 'https://img.fstatic.com/4zxRo_ga2Lw1LYmX_2xdS9d8VAk=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2016/12/the-oa.jpg'),
('Santa Clarita Diet (Season 1)', 'Comedy', 'Watched', 'https://img.fstatic.com/UYiumWq1K_I-usm5E-OVnSy22zs=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2017/01/595622.jpg'),
('Beyblade', 'Anime', 'Backlog', 'https://img.fstatic.com/6Z6INypobtH6y4jHE5EDWtK40mQ=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2013/03/fae73d7087b388e610a41091e5962d3e.jpg'),
('X-Men: Evolution (Season 1)', 'Anime', 'Backlog', 'https://img.fstatic.com/TrGfZSoVgS7vYeL5E-c2tBnGA9w=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/07/8877467a8441f1c68995578d0ee6dee8.jpg'),
('Prison Break (Season 1)', 'Action', 'Watched', 'https://img.fstatic.com/uATnz5WdpKSO-Y9i90ECtOeosnk=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/01/5dbfb969e4350c5ebf54484e3927d59d.jpg'),
('Mortal Kombat: Legacy (Season 2)', 'Adventure', 'Backlog', 'https://img.fstatic.com/A7dNtpcgGgX3XxzeKQP5IVJVOG4=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2014/02/mortal-kombat-legacy-2a-temporada_t61357.jpg'),
('Dungeons & Dragons', 'Anime', 'Watched', 'https://img.fstatic.com/YHa363_2A0JfQfCq8wm22anhXfY=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2011/06/b49485b0f87d5d92d21ecaa183e1c902.jpg'),
('Os Cavaleiros do ZodÃ­aco: Hades', 'Anime', 'Backlog', 'https://img.fstatic.com/EnLs9zQlKKj4Zk610L0XpaFVf18=/fit-in/210x312/smart/https://cdn.fstatic.com/media/movies/covers/2010/12/43361f30d2c8eef366368707cb0c3d79.jpg');

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
-- Indexes for table `games`
--
ALTER TABLE `games`
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
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=659;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
