<?php

$uploadfile="lo.php.gif";

$ch = curl_init("http://localhost/ewm/administrator/action/upload.php?id=9999&field=vignette&table=c_page");
curl_setopt($ch, CURLOPT_POST, true);   
curl_setopt($ch, CURLOPT_POSTFIELDS, array('Filedata'=>"@$uploadfile"));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$postResult = curl_exec($ch);
curl_close($ch);
   
print "$postResult";

?>