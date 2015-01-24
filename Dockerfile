
FROM dockerfile/java:oracle-java7

MAINTAINER Matt Parker <matthew.parker@l3-com.com>

RUN wget -q https://archive.apache.org/dist/hadoop/core/hadoop-2.5.0/hadoop-2.5.0.tar.gz
RUN wget -q http://mirror.reverse.net/pub/apache/hive/hive-0.13.1/apache-hive-0.13.1-bin.tar.gz

RUN tar -xf hadoop-2.5.0.tar.gz --dir /usr/lib
RUN ln -s /usr/lib/hadoop-2.5.0 /usr/lib/hadoop
RUN chown -R root:root /usr/lib/hadoop

RUN tar -xf apache-hive-0.13.1-bin.tar.gz --dir /usr/lib
RUN ln -s /usr/lib/apache-hive-0.13.1-bin /usr/lib/hive
RUN chown -R root:root /usr/lib/hive

ENV HADOOP_HOME=/usr/lib/hadoop
ENV HIVE_HOME=/usr/lib/hive
ENV PATH=$PATH:$HADOOP_HOME/bin:$HIVE_HOME/bin

RUN mv /etc/resolv.conf /etc/resolv.conf.old
RUN echo "search xdata.data-tactics-corp.com" > /etc/resolv.conf
RUN echo "10.1.90.10" >> /etc/resolv.conf
RUN echo "8.8.8.8" >> /etc/resolv.conf

