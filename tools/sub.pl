 #!/usr/bin/perl

    #Gr33tz to  All AnonGhost Team

    #Soon V2 Perfect *.*

    

     

    use HTTP::Request;

    use LWP::UserAgent;

    if($^O =~ /Win/){

     

       system("cls");

       system("color a");

       system("title SubDomain Checker v1");

     

    }else{

     

       system("clear");

    }

    print q{

     

                              *------------------------*

                              | SubDomain Checker  |

                              |  by Hani Xavi      |

                              *------------------------*

                                          |

                                          |

                             +--------------------------+

                             |    Greetz to All     |

                             |   AnonGhost Team|

                             +--------------------------+

     

     

    };

    sleep(1);

     

    print "Target (without http://) :";

    $host = <>;

    chomp($host);

    $zeb = "http://www.ewhois.com/".$host."\/";

    $fuck = LWP::UserAgent->new();

    $klawii = $fuck->request(HTTP::Request->new(GET=>$zeb));

    $ipp = $klawii->content;

    if($ipp =~ m/<span id=\"ip_display\">(.*?)<\/span>/) {

     

      print "\n [+] Host IP : $1 \n";

    }

     

    $tbone = LWP::UserAgent->new();

        $tbone->agent('Mozilla/5.0 (Windows; U; Windows NT 5.1; de-LI; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 (.NET CLR 3.5.30729)');

        $tembaka = "http://www.pagesinventory.com/search/?s=".$host."";

        $klawi = $tbone->request(HTTP::Request->new(GET=>$tembaka));

        $resullt = $klawi->content;

     

    while($resullt =~ m/<td><a href=\"\/domain\/(.*?).html\">/g ) {

     

      print "\n     [*]Subdomain: $1\n";

      sleep(1);

      open(a, ">>sub.txt");

    print a "http://$1\n";

    close(a);

     

    }

    print "\n\nResult in sub.txt\n";

     

    if($^O =~ /Win/){

     

       system("start https://www.facebook.com/mark.vs.hanixavi");

     

    }else{

     

       system("firefox https://www.facebook.com/mark.vs.hanixavi");

    }