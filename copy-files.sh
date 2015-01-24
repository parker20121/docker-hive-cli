#!/bin/bash

CONFIG=$1

if [ $CONFIG != "memex" ] or [ $CONFIG != "xdata" ]
  then
    echo "Please choose configuration"
    echo "usage: ./copy-config.sh [memex|xdata]
    exit 0 
fi

cp -f $CONFIG/hdfs-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/core-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/hdfs-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/mapred-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/yarn-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/hive-site.xml /usr/lib/hive/conf/.

cp /etc/resolv.conf /etc/resolv.conf.old
cp -f $CONFIG/resolv.conf /etc/resolv.conf

if [ $CONFIG == "memex" ]
  then
    cp /etc/hosts /etc/hosts.old
    cp -f $CONFIG/hosts /etc/hosts
fi
