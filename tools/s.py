#!/usr/bin/python

#[Python] Joomla & Wordpress Founder v1.0
#By INJ3CTOR_M4 // facebook.com/H4ck19
#Greets To : All Friend'z

import re, urllib, urllib2, os, sys
from urlparse import urlparse
from platform import system

if system() == 'Linux':
    os.system('clear')
if system() == 'Windows':
    os.system('cls')

logo = '''
    ____  _                ______           __    __             
   / __ )(_)___  ____ _   / ____/________ _/ /_  / /_  ___  _____
  / __  / / __ \/ __ `/  / / __/ ___/ __ `/ __ \/ __ \/ _ \/ ___/
 / /_/ / / / / / /_/ /  / /_/ / /  / /_/ / /_/ / /_/ /  __/ /  _ 
/_____/_/_/ /_/\__, /   \____/_/   \__,_/_.___/_.___/\___/_/  (_)
              /____/                                             

'''
	
def Bing_it(ip):
	alllinks = []
	i = 1
	while (i <= 1000):
		bing = urllib2.urlopen('http://www.bing.com/search?q='+urllib.quote_plus('ip:'+ip)+'&first='+str(i)).read()
		if re.search('"sw_next"', bing):
			urls = re.findall('<h2><a href="(.*?)"', bing)
			for url in urls:
				url = urlparse(url)
				alllinks.append(url.scheme+"://"+url.netloc+"/")
			i = i + 10
		else:
			urls = re.findall('<h2><a href="(.*?)"', bing)
			for url in urls:
				url = urlparse(url)
				alllinks.append(url.scheme+"://"+url.netloc+"/")
			break
	final = list(set(alllinks))
	print '\nFound : '+str(len(final))+' Unique Domain.'
	script = raw_input("\nScript? # ")
	if script == 'wordpress':
		for url in final:
			try:
				wpcheck = urllib2.urlopen(url+'wp-login.php').getcode()
				if wpcheck == 200:
					print (url)
			except :
				pass
	elif script == 'joomla':
		for url in final:
			try:
				jomcheck = urllib2.urlopen(url+'administrator/').read()
				if re.search('Joomla!', jomcheck):
					print (url)
			except :
				pass

print (logo)
try:
	ip = sys.argv[1]
	print '\n\n\t\t[+] Grabbing '+ip+' begun\n\n'
	Bing_it(ip)

except IndexError:
	print '\t\tUsage: python '+sys.argv[0]+' [127.0.0.1]\n'