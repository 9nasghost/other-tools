<html>
<head>
<title>
./Zone-h mass poster
</title>
<style>
body
{
background:linear-gradient(red,#ff4444,yellow,#f05032);
 
 
}
</style>
</head>
<body>
<td align='center'><img src='http://shopget24.com/images/sampledata/hack-run.png' height="0" width="0"</td></tr>
<?php
echo "<center><div style='font-family:Comic Sans MS;color:blue;'><b>Coded by Black Sniper and Kuroi'SH</b></div></center>\n"
extract($_POST);
if(isset($valider))
{
echo "##Mass posting\n";
$fp=fopen("resource.txt","w");
fwrite($fp,$sites."\n");
fclose($fp);
$fileread=file("resource.txt");
for($i=0;$i<count($fileread);$i++)
{
//get the line of textarea
$ln[$i]=strtok($fileread[$i],"\n");
$init=curl_init("http://zone-h.org/notify/single");
$postdatas="defacer=".$notifiername."&domain1=".$ln[$i]."&hackmode=1&reason=1";
$postdatas2=hacker=xx&team=xx&url=xx&
curl_setopt($init, CURLOPT_POST, true);
curl_setopt($init,CURLOPT_POSTFIELDS,$postdatas);
curl_setopt($init,CURLOPT_RETURNTRANSFER,true);
$exec=curl_exec($init);
curl_close($init);
if(preg_match("#ERROR#",$exec)==1)
{
echo $ln[$i]." ####### NO, error found in the response...\n";
 
}
else
{
 
echo $ln[$i]." ####### YES, no errors found in the response...\n";
 
}
}
 
}
else
 
{
echo "<center><form method='post' action=''><br />
<input type='text' name='notifiername' placeholder='Your defacer name' /><br />
<textarea name='sites' cols=35 rows=10></textarea><br />
<input type='submit' name='valider' /><br />
</form>
</center>
";
}
 
 
 
 
 
 
 
?>
</body>
</html>