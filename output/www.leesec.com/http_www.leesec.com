*************************     scan info     *************************
# this is a http type scan
url:	http://www.leesec.com
isneighborhost:	False

*************************   scan services   *************************

Step 1. Running Auxiliary Plugins

>>>loading plugins
{'./plugins/Info_Collect': ['neighborhost.py', 'subdomain.py', 'crawler.py', 'robots.py', 'portscan.py', 'whatweb.py'], './plugins/System': ['iismethod.py', 'dnszone.py', 'openssl.py', 'iisshort.py', 'webdav.py', 'phpmyadmin_null_password.py'], './plugins/Weak_Password': ['sshcrack.py'], './plugins/Sensitive_Info': ['backupfile.py', 'compressedfile.py', 'senpath.py', 'probefile.py'], './plugins/Web_Applications': ['espcms_search_inject.py', 'discuz_x2_5_path_disclosure.py', 'shopex_phpinfo_disclosure.py', 'dedecms_downloadphp_url_redict.py', 'discuz7_2fap_php_sqlinject.py', 'bo_blog_tag_php_xss.py', 'wordpress_reflect_xss.py', 'espcms_sql_inject.py', 'wordpress_xmlrpc.py'], './plugins': [], './plugins/Common': ['fileinclusion.py']}

>>>running plugin:./plugins/Info_Collect/neighborhost.py

>>>running plugin:./plugins/Info_Collect/subdomain.py

>>>running plugin:./plugins/Info_Collect/crawler.py
plugin run

>>>running plugin:./plugins/Info_Collect/robots.py
plugin run
http://www.leesec.com/robots.txt

>>>running plugin:./plugins/Info_Collect/portscan.py

>>>running plugin:./plugins/Info_Collect/whatweb.py
plugin run
cms: WordPress
cmsversion: 3.9.2
HTTPServer: nginx
X-Powered-By: PHP/5.3.28
services changed to:	{'url': 'http://www.leesec.com', 'HTTPServer': u'nginx', 'cms': 'WordPress', 'X-Powered-By': u'PHP/5.3.28', 'cmsversion': u'3.9.2'}


Step 2. Running Other Plugins

>>>running plugin:./plugins/System/iismethod.py

>>>running plugin:./plugins/System/dnszone.py

>>>running plugin:./plugins/System/openssl.py

>>>running plugin:./plugins/System/iisshort.py

>>>running plugin:./plugins/System/webdav.py

>>>running plugin:./plugins/System/phpmyadmin_null_password.py

>>>running plugin:./plugins/Weak_Password/sshcrack.py

>>>running plugin:./plugins/Sensitive_Info/backupfile.py
plugin run

>>>running plugin:./plugins/Sensitive_Info/compressedfile.py

>>>running plugin:./plugins/Sensitive_Info/senpath.py

>>>running plugin:./plugins/Sensitive_Info/probefile.py

>>>running plugin:./plugins/Web_Applications/espcms_search_inject.py

>>>running plugin:./plugins/Web_Applications/discuz_x2_5_path_disclosure.py

>>>running plugin:./plugins/Web_Applications/shopex_phpinfo_disclosure.py

>>>running plugin:./plugins/Web_Applications/dedecms_downloadphp_url_redict.py

>>>running plugin:./plugins/Web_Applications/discuz7_2fap_php_sqlinject.py

>>>running plugin:./plugins/Web_Applications/bo_blog_tag_php_xss.py

>>>running plugin:./plugins/Web_Applications/wordpress_reflect_xss.py

>>>running plugin:./plugins/Web_Applications/espcms_sql_inject.py

>>>running plugin:./plugins/Web_Applications/wordpress_xmlrpc.py

>>>running plugin:./plugins/Common/fileinclusion.py
plugin run


*************************    scan result    *************************
retinfo:	[{'content': 'User-agent: *\nDisallow: /wp-admin/\nDisallow: /wp-includes/\n', 'type': 'Robots.txt Sensitive Information', 'level': 'info'}, {'content': {u'HTTPServer': {u'string': [u'nginx']}, u'WordPress': {u'version': [u'3.9.2']}, u'X-Powered-By': {u'string': [u'PHP/5.3.28']}}, 'type': 'Web Application Recognition', 'level': 'info'}]

services:	{'url': 'http://www.leesec.com', 'HTTPServer': u'nginx', 'cms': 'WordPress', 'X-Powered-By': u'PHP/5.3.28', 'cmsversion': u'3.9.2'}