#!/bin/bash

ping -c1 google.com &> /dev/null
  if [ $? -eq 0 ]; then
  echo Good Network Connectivity
  else
  echo Bad Network Connectivity
  fi
  
