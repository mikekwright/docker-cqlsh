Docker CQLSH
================================

This is a simple repository that contains the Dockerfile and code for creating
a docker image that has the cqlsh command.   

You can use this container to connect to a cassandra cluster using the below
command: 

        docker run -it --rm mikewright/cqlsh <cassandra-host>

