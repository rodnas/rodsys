<?php
function curl_get_contents($url)
{
	$ch = curl_init();
	$timeout = 5;

	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_HEADER, false);
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
	
	$data = curl_exec($ch);
	
	curl_close($ch);
	
	return $data;
}

echo "hurra<br>";
//$url = 'https://www.tidebit.com//api/v2/tickers/btcusd.json';
$url = "http://api.napiarfolyam.hu?valuta=eur";
$btccontents = curl_get_contents($url);
echo '<pre>';
//echo $btccontents;
$xml=simplexml_load_string($btccontents) or die("Error: Cannot create object");
//print_r($xml);
print_r($xml->valuta->item[1]);
print_r($xml->deviza->item[1]);
//$first_name = (string)$xml->me->item->firstname;
echo '<br>';
die();

/*
$url = 'https://www.tidebit.com//api/v2/tickers/ethusd.json';
$ethcontents = curl_get_contents($url);
echo $ethcontents;
*/

$soap_params = array(
 'soap_version' => 'SOAP_1_1',
 'trace' => 1,
);
echo '<br><br>';
$soapClient = new Soapclient("http://www.mnb.hu/arfolyamok.asmx?singleWsdl", $soap_params);
$result = $soapClient->GetExchangeRates(array('startDate' => "2018-11-15", 'endDate' => "2018-11-15", 'currencyNames' => "USD,EUR"));
//$movies = new SimpleXMLElement($result->GetExchangeRatesResult);
$movies = new SimpleXMLElement($result->GetExchangeRatesResult);
//echo $movies->movie[0]->plot;
echo $movies;
echo '<pre>';
var_dump($result);
?>