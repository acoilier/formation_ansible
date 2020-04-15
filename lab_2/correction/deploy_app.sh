#!/bin/bash
ansible -m template -i inventory -a "src=index.nginx-debian.html dest=/var/www/html/index.nginx-debian.html" web
