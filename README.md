# docker-hive-cli

Docker files to generate a Hive CLI to Hadoop cluster. The output is 
a docker image, which can be posted to Docker Hub. It can be configured 
to run using one of two configurations: memex or darpa 


Instructions
============
Run in directory with Dockerfile to create new image
>> sudo docker build --rm=true -t="parker20121/xdata-hive:v1" .

Create and run new container from new v1 image
>> sudo docker run -t -i parker20121/xdata-hive:v1 /bin/bash

To copy the data from a data volume to the host, mount the volume 
from another container and use the cp command to copy the data to the host
>> sudo docker run --rm -v [path to config files]:/host:rw parker20121/xdata-hive:v1 /
        --volumes-from dvc1 cp -r /var/www/html /host/dvc1_files

>> sudo docker run --rm -v [path to config files]:/host:rw parker20121/xdata-hive:v1 /
        --volumes-from dvc1 cp -r /var/www/html /host/dvc1_files

