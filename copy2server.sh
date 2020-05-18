#!/bin/bash
echo "Copy to the webserver"
scp -o ProxyJump=alfred@132.180.198.9 -r $@ root@132.180.198.115:/share/www/net/httpd/htdocs/jsxgraph/wp
