#!/usr/bin/python2.7
#coding:utf-8

from dummy import *

info = {
	'NAME':'Crawl Href Links',
	'AUTHOR':'yangbh',
	'TIME':'20140725',
	'WEB':''
}

def Audit(services):
	output = ''
	if services.has_key('url'):
		output += 'plugin run' + os.linesep
		args = Strategy(url=url,max_depth=5,max_count=500,concurrency=10,
			timeout=10,time=6*3600,headers=None,cookies=None,ssl_verify=False,
			same_host=False,same_domain=True,keyword=None)
		crawler = Crawler(args)
		crawler.start()
		#pprint([i for i in crawler.visitedHrefs]+[i for i in crawler.unvisitedHrefs])
		crawler.saveAllHrefsToFile()

	return (None,output)
# ----------------------------------------------------------------------------------------------------
#
# ----------------------------------------------------------------------------------------------------
if __name__=='__main__':
	services = {'url':'http://www.leesec.com'}
	pprint(Audit(services))
	pprint(services)