<?php

require_once 'simplehtmldom_1_9_1/simple_html_dom.php';

function console_log( $data ){
  echo '<script>';
  echo 'alert('. json_encode( $data ) .')';
  echo '</script>';
}

$games = array('https://eshop-prices.com/games/5692-disc-room?currency=BRL',
				'https://eshop-prices.com/games/5218-hades?currency=BRL',
				'https://eshop-prices.com/games/296-the-sexy-brutale?currency=BRL',
				'https://eshop-prices.com/games/5396-filament?currency=BRL',
				'https://eshop-prices.com/games/252-snipperclips-cut-it-out-together?currency=BRL',
				'https://eshop-prices.com/games/1566-super-smash-bros-ultimate?currency=BRL',
				'https://eshop-prices.com/games/5334-super-mario-3d-world-bowser-s-fury?currency=BRL',
				'https://eshop-prices.com/games/164-mario-kart-8-deluxe?currency=BRL',
				'https://eshop-prices.com/games/5430-ori-and-the-will-of-the-wisps?currency=BRL',
				'https://eshop-prices.com/games/1793-new-super-mario-bros-u-deluxe?currency=BRL',
				'https://eshop-prices.com/games/2701-the-legend-of-zelda-link-s-awakening?currency=BRL',
				'https://eshop-prices.com/games/2576-astral-chain?currency=BRL',
				'https://eshop-prices.com/games/2361-katana-zero?currency=BRL',
				'https://eshop-prices.com/games/1487-pokemon-let-s-go-pikachu?currency=BRL',
				'https://eshop-prices.com/games/962-captain-toad-treasure-tracker?currency=BRL',
				'https://eshop-prices.com/games/3984-heaven-dust?currency=BRL',
				'https://eshop-prices.com/games/2307-she-remembered-caterpillars?currency=BRL',
				'https://eshop-prices.com/games/5662-they-bleed-pixels?currency=BRL',
				'https://eshop-prices.com/games/6191-golden-force?currency=BRL',
				'https://eshop-prices.com/games/5478-vigil-the-longest-night?currency=BRL',
				'https://eshop-prices.com/games/2225-baba-is-you?currency=BRL',
				'https://eshop-prices.com/games/4768-crosscode?currency=BRL');

$result = array();
				
$curl_handle=curl_init();
curl_setopt($curl_handle, CURLOPT_URL,'https://eshop-prices.com/games/5692-disc-room?currency=BRL');
curl_setopt($curl_handle, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl_handle, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
$config['useragent'] = 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:17.0) Gecko/20100101 Firefox/17.0';
curl_setopt($curl_handle, CURLOPT_USERAGENT, $config['useragent']);

foreach ($games as &$game) {
	curl_setopt($curl_handle, CURLOPT_URL, $game);

	$query = curl_exec($curl_handle);

	$html = str_get_html($query);

	if (!empty($html))
	{
		$value = $html->find('.price-value', 2);
		$teste = $value->find('.discounted', 0);
		if ($teste != null) {
			array_push($result, "$game: " . $value->innertext);
		}
	}
}

console_log($result);

curl_close($curl_handle);
?>