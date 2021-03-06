#!/usr/bin/python2.7
#coding:utf-8

import pymongo
from dummy import * 

info = {
	'NAME':'MongoDB Unauthorized Access',
	'AUTHOR':'yangbh',
	'TIME':'20141112',
	'WEB':'http://drops.wooyun.org/%E8%BF%90%E7%BB%B4%E5%AE%89%E5%85%A8/2470',
	'DESCRIPTION':'MongoDB配置不当导致未授权访问'
}

def Audit(services):
	retinfo = None
	output = ''
	if services.has_key('ip') and services.has_key('ports'):
		port = None
		ip = services['ip']
		if 27017 in services['ports']:
			port = 27017
		elif 28017 in services['ports']:
			port = 27017
		if port:
			try:
				connection = pymongo.MongoClient(ip,port)
				# connection.api.authenticate("root","1234")
				# db = connection.admin
				# db.system.users.find_one()
				dbs = connection.database_names()
				output = ip + ':' + str(port)+'/'+str(dbs)
				security_hole(ip+':'+str(port)+'/'+str(dbs))
			except pymongo.errors.OperationFailure,e:
				print 'Exception',e
				# pass
	return (retinfo,output)
# ----------------------------------------------------------------------------------------------------
#	untest yet
# ----------------------------------------------------------------------------------------------------
if __name__=='__main__':
	services = {'ip':'10.183.0.51','ports':[27017]}
	pprint(Audit(services))
	pprint(services)