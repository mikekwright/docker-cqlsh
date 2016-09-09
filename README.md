Docker CQLSH
================================

This is a simple repository that contains the Dockerfile and code for creating
a docker image that has the cqlsh command.   

You can use this container to connect to a cassandra cluster using the below
command: 

        docker run -it --rm mikewright/cqlsh <cassandra-host>

## Bash script for command line

This script below is something that you can use to add to your path that will
allow you to basically have cqlsh running on any machine that has docker without
the need to install python, pip, etc.   

        #!/usr/bin/env bash
        # vim: ft=sh:
        DOCKER_CQLSH_IMAGE=mikewright/cqlsh:5.0.3 
        DOCKER_COMMAND="docker run -it --rm -v $PWD:/code -w /code $DOCKER_CQLSH_IMAGE "
        $DOCKER_COMMAND $@

