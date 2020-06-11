#!/bin/bash

#sh安装zabbix和percona模板

#下载zabbix清华镜像
rpm -ivh https://mirrors.tuna.tsinghua.edu.cn/zabbix/zabbix/4.0/rhel/7/x86_64/zabbix-release-4.0-2.el7.noarch.rpm
#替换yum为清华镜像
sed -i 's#http://repo.zabbix.com#https://mirrors.tuna.tsinghua.edu.cn/zabbix#g' /etc/yum.repos.d/zabbix.repo
yum install zabbix-agent -y
#安装php
yum install php php-mysql -y  --skip-broken
#安装percona模板
yum install -y https://www.percona.com/downloads/percona-monitoring-plugins/percona-monitoring-plugins-1.1.8/binary/redhat/7/x86_64/percona-zabbix-templates-1.1.8-1.noarch.rpm

cp /var/lib/zabbix/percona/templates/userparameter_percona_mysql.conf  /etc/zabbix/zabbix_agentd.d/










