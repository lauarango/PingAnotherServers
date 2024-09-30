#!/bin/bash

host_ips="host_ip_list"
for ip in $(cat host_ip_list)
do
  ping -c1 $host_ips &> /dev/null
  if [ $? -eq 0 ]; then
  echo "$host_ips Good Network Connectivity"
  else
  echo "$host_ips Bad Network Connectivity"
  fi
  
