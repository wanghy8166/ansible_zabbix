#!/bin/bash
if cat /etc/rc.local |grep -v ^# |grep -v ^$ | grep "/usr/local/zabbix_agents/sbin/zabbix_agentd" >/dev/null 
then echo "已存在，不用处理" 
else echo "/usr/local/zabbix_agents/sbin/zabbix_agentd" >> /etc/rc.local && chmod +x /etc/rc.d/rc.local && echo "不存在，已处理" 
fi
