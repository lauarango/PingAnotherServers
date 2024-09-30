#!/bin/bash

host_ips="host_ip_list"
for ip in $(cat host_ip_list)
do
  ping -c1 $ip &> /dev/null
  if [ $? -eq 0 ]; then
  echo "$ip Good Network Connectivity"
  else
  echo "$ip Bad Network Connectivity"
  fi
done
