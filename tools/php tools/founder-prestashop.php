<?php
@set_time_limit(0);
error_reporting(0);

echo "
                                                        
,--.   ,--.            ,--.       ,--.                  
|   `.'   |,--.--.     |  | ,---. |  |,-. ,---. ,--.--. 
|  |'.'|  ||  .--',--. |  || .-. ||     /| .-. :|  .--' 
|  |   |  ||  |   |  '-'  /' '-' '|  \  \\   --.|  |    
`--'   `--'`--'    `-----'  `---' `--'`--'`----'`--'    
                                                        
\n\n";
echo "\n==========================================================\n".
     "|| Welcome To PrestaShop Extract Site From IP           ||\n".
	 "==========================================================\n".
	 "|| Coded By : MrJoker - Libyan Attacker                ||\n".
	 "==========================================================\n".
	 "|| Skype : live:mr9_9 - Face : 1337MrJoker              ||\n".
	 "==========================================================\n".
	 "|| Usage : php {$argv[0]}                           ||\n".
     "==========================================================\n";

echo "Server Target IP : ";
$ip=trim(fgets(STDIN,1024));
$sites = bingReverse($ip);
echo "\n\t Total site loaded : ".count($sites)."\n\n";
foreach($sites as $site){
$getcontents=@get_source($site);
echo "[#] Scaning : $site\n";
if (preg_match('#PrestaShop#i', $getcontents)) {
	    
       	echo "[+] PrestaShop Site = $site "."\n";
                echo "\n";
				$fopen = fopen("PrestaShop.txt","a+");
				fwrite($fopen,"$site"."\n");
				fclose($fopen);
        } else {
                echo "\n";
                echo "[-] Not PrestaShop"."\n";
                echo "\n";
 
        }
}
function bingReverse($ip){
	$ch = curl_init();
	$i = 1;
	while($i){
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch, CURLOPT_URL, "http://www.bing.com/search?q=ip%3A$ip&first=$i");
		curl_setopt($ch, CURLOPT_USERAGENT, 'msnbot/1.0 (+http://search.msn.com/msnbot.htm)');
		curl_setopt($ch, CURLOPT_ENCODING, "gzip, deflate, compress");
		$data = curl_exec($ch);
		preg_match_all('/<h2><a href="(.*?)"/', $data, $matches);
		$links = array_unique($matches[1]);
		foreach($links as $link){
			$allLinks[] = correctit($link);
		}
		if(!preg_match('#"sw_next"#', $data)) break;
		$i+=10;
	}
	curl_close($ch);
	if(!empty($allLinks) && is_array($allLinks)){
		return array_unique($allLinks);
	}
}
function correctit($http){
	if((strpos(trim($http), "http://") === 0) || (strpos(trim($http), "https://") === 0)){
		return parse_url($http, PHP_URL_HOST);
	}else{	return trim($http);	}
}       
function get_source($link, $safemode = false, $agent){
	if($safemode === true) sleep(1);
	if(!$agent){ $agent='Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)'; }
	if(!function_exists('curl_init')){
		return file_get_contents($link);
	}else{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_URL, $link);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
		curl_setopt($ch, CURLOPT_USERAGENT, $agent);
		curl_setopt($ch, CURLOPT_ENCODING, 0);
		curl_setopt($ch, CURLOPT_TIMEOUT, 30);
		$data = curl_exec($ch);
		curl_close($ch);
		
		return $data;
	}
}
?>