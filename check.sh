#!/bin/bash

file= "$PIN_HOME/apps/DE_BILL_MI_BRM/alarmistica/flags/intervencao.flag"

# Check if services are running 
for service in $BRM_SERVICES
do
    if  [ps -ef | grep $service | grep -v grep | awk 'NR>1{for (i=1;i<=NF;i++)if($i==1) print "Services not running", i}' ]; then
        echo $service " is not running correctly"
    else
        if [ -f "$file" ]; then
          echo "Flag exists. The service will not start"
        else
          echo "$file not found. Starting all services"
          pin_ctl start all
        fi      
    fi  
done
