
FROM dockerfile/java:oracle-java7

MAINTAINER Matt Parker <matthew.parker@l3-com.com>

RUN wget -q http://archive.cloudera.com/cdh5/cdh/5/hadoop-2.5.0-cdh5.3.0.tar.gz
RUN wget -q http://archive.cloudera.com/cdh5/cdh/5/hbase-0.98.6-cdh5.3.0.tar.gz
RUN wget -q http://archive.cloudera.com/cdh5/cdh/5/hive-0.13.1-cdh5.3.0.tar.gz

RUN tar -xf hadoop-2.5.0-cdh5.3.0.tar.gz --dir /usr/lib
RUN ln -s /usr/lib/hadoop-2.5.0-cdh5.3.0 /usr/lib/hadoop
RUN chown -R root:root /usr/lib/hadoop

RUN tar -xf apache-hive-0.13.1-cdh5.3.0.tar.gz --dir /usr/lib
RUN ln -s /usr/lib/apache-hive-0.13.1-cdh5.3.0 /usr/lib/hive
RUN chown -R root:root /usr/lib/hive

RUN tar -xf hbase-0.98.6-cdh5.3.0.tar.gz --dir /usr/lib
RUN ln -s /usr/lib/hbase-0.98.6-cdh5.3.0 /usr/lib/hbase
RUN chown -R root:root /usr/lib/hbase

ENV HADOOP_HOME=/usr/lib/hadoop
ENV HIVE_HOME=/usr/lib/hive
ENV HBASE_HOME=/usr/lib/hbase
ENV PATH=$PATH:$HADOOP_HOME/bin:$HIVE_HOME/bin:$HBASE_HOME/bin

