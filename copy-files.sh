#!/bin/bash

CONFIG=$1

cp -f $CONFIG/hdfs-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/core-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/hdfs-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/mapred-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/yarn-site.xml /usr/lib/hadoop/etc/.
cp -f $CONFIG/hive-site.xml /usr/lib/hive/conf/.

cp /etc/resolv.conf /etc/resolv.conf.old
cp -f $CONFIG/resolve.conf /etc/resolv.conf

