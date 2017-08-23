<?php
ob_start();

/************************************

Zone-H Mass Deface Poster

Coded By Mr.Ferksh .... 

www.hack-ar.com

*************************************/

// curl var mi ?



$sub = get_loaded_extensions();

if(!in_array("curl", $sub)){

die('Curl eklentisi Yьklь degil Bu serverde Зalismaz Lьtfen server Yцneticisi ile irtibata geciniz');

}



// sari sari цrdekler ucusuyorrrrrr...

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<style>

body{margin:0px;font-style:normal;font-size:10px;color:#FFFFFF;font-family:Verdana,Arial;background-color:#3a3a3a;scrollbar-face-color: #303030;scrollbar-highlight-color: #5d5d5d;scrollbar-shadow-color: #121212;scrollbar-3dlight-color: #3a3a3a;scrollbar-arrow-color: #9d9d9d;scrollbar-track-color: #3a3a3a;scrollbar-darkshadow-color: #3a3a3a;}

input,

.kbrtm,select{background:#303030;color:#FFFFFF;fon t-family:Verdana,Arial;font-size:10px;vertical-align:middle; height:18; border-left:1px solid #5d5d5d; border-right:1px solid #121212; border-bottom:1px solid #121212; border-top:1px solid #5d5d5d;}

button{background-color: #666666; font-size: 8pt; color: #FFFFFF; font-family: Tahoma; border: 1 solid #666666;}

body,td,th { font-family: verdana; color: #d9d9d9; font-size: 11px;}body { background-color: #303030;}

textarea,option{background:#303030;color:#FFFFFF;f ont-family:Verdana,Arial;font-size:10px;vertical-align:middle; border-left:1px solid #121212; border-right:1px solid #5d5d5d; border-bottom:1px solid #5d5d5d; border-top:1px solid #121212;}

</style>


<title>Mr.Ferksh Zone-H Mass Deface Poster</title>

<style type="text/css">

.style1 {

text-align: center;

}

.style2 {

font-weight: bold;

}

.style3 {

font-size: large;

color: #FF0000;

}

div#option {

background:#303030;color:#FFFFFF;font-family:Verdana,Arial;font-size:10px;vertical-align:middle; border-left:1px solid #121212; border-right:1px solid #5d5d5d; border-bottom:1px solid #5d5d5d; border-top:1px solid #121212;



}

</style>

</head>

<?php

if($_POST) {

$hacker = $_POST['defacer'];

$method = $_POST['hackmode'];

$neden = $_POST['reason'];

$site = $_POST['domain'];



// bosmu dolumu

if ($hacker == "") {



die ("<center>Kim Deface Ettiyse Onun Adini Yaziniz<center>");

}

elseif($method == "--------SELECT--------") {

die("<center>Method Bildirmek Zorundasiniz</center>");

}

elseif($neden == "--------SELECT--------") {



die("<center>Bir Neden Bildirmek Zorundasiniz</center>");

}

elseif($site == "") {



die("<center>Lьtfen Hacklediginiz Siteleri Yaziniz</center>");

}





$i = 0;

$sites = explode("\n", $site);

while($i < count($sites)) {

if(substr($sites[$i], 0, 4) != "http") {

$sites[$i] = "http://".$sites[$i];



}



poster("http://zone-h.org/notify/single", $hacker, $method, $neden, $sites[$i]);



++$i;

}

echo "<center><p>Hacklediginiz Siteler Zone-h 'e Postlanmistir</p></center>";



}else{



echo '<center>

<img src="http://store2.up-00.com/2016-07/1469229952381.jpg"></img>

<form action="" method="post">

<div id="option">

<p>Name HacKer<br />

<span class="ok"><input type="text" name="defacer" size="40" /></span> </p>



<p>Hacked Site ,,? <br /><select name="hackmode">

<option >--------SELECT--------</option>

<option value="1">known vulnerability (i.e. unpatched system)</option>

<option

value="2" >undisclosed (new) vulnerability</option>

<option

value="3" >configuration / admin. mistake</option>

<option

value="4" >brute force attack</option>



<option

value="5" >social engineering</option>

<option

value="6" >Web Server intrusion</option>

<option

value="7" >Web Server external module intrusion</option>

<option

value="8" >Mail Server intrusion</option>

<option

value="9" >FTP Server intrusion</option>

<option

value="10" >SSH Server intrusion</option>



<option

value="11" >Telnet Server intrusion</option>

<option

value="12" >RPC Server intrusion</option>

<option

value="13" >Shares misconfiguration</option>

<option

value="14" >Other Server intrusion</option>

<option

value="15" >SQL Injection</option>

<option

value="16" >URL Poisoning</option>



<option

value="17" >File Inclusion</option>

<option

value="18" >Other Web Application bug</option>

<option

value="19" >Remote administrative panel access through bruteforcing</option>

<option

value="20" >Remote administrative panel access through password guessing</option>

<option

value="21" >Remote administrative panel access through social engineering</option>

<option

value="22" >Attack against the administrator/user (password stealing/sniffing)</option>



<option

value="23" >Access credentials through Man In the Middle attack</option>

<option

value="24" >Remote service password guessing</option>

<option

value="25" >Remote service password bruteforce</option>

<option

value="26" >Rerouting after attacking the Firewall</option>

<option

value="27" >Rerouting after attacking the Router</option>

<option

value="28" >DNS attack through social engineering</option>



<option

value="29" >DNS attack through cache poisoning</option>

<option

value="30" >Not available</option>

</select></p>

<p> wht HacKed ? <br /><select name="reason">



<option >--------SELECT--------</option>

<option

value="1" >Heh...just for fun!</option>

<option

value="2" >Revenge against that website</option>

<option

value="3" >Political reasons</option>

<option

value="4" >As a challenge</option>

<option

value="5" >I just want to be the best defacer</option>



<option

value="6" >Patriotism</option>

<option

value="7" >Not available</option>

</select> </p>



<p>Domain HacKed<br />

<span class="fur">Site.com  ok </span><br />

<span class=""><textarea name="domain" cols="43" rows="17"></textarea></span> </p>

<p><input type="submit" value="# Mr.Ferksh " />

</form>
<div class ="sub">By Mr.Ferksh </div>

<br>

</div>

</center>';



}



function poster($url, $hacker, $hackmode,$reson, $site )

{



$k = curl_init();

curl_setopt($k, CURLOPT_URL, $url);

curl_setopt($k,CURLOPT_POST,true);

curl_setopt($k, CURLOPT_POSTFIELDS,"defacer=".$hacker."&domain1=". $site."&hackmode=".$hackmode."&reason=".$reson);

curl_setopt($k,CURLOPT_FOLLOWLOCATION, true);

curl_setopt($k, CURLOPT_RETURNTRANSFER, true);



$kubra = curl_exec($k);

curl_close($k);

return $kubra;

}



?>

<body>

</body>

</html> 