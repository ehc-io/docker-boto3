Using the Boto3 Docker image
===================================

A Docker image for running Boto3 scripts.

Build the Docker image locally
------------------------------

    docker build -t ombu/boto3:1.8

Push the local image to the remote repository
---------------------------------------------

To run a task that talks to AWS you have to export your AWS credentais to the environment:

    export AWS_DEFAULT_REGION=us-west-2
    export AWS_ACCESS_KEY_ID=...
    export AWS_SECRET_ACCESS_KEY=...

    docker run -v $PWD/test:/tmp \
    -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION \
    ombu/boto3:1.8 python test.py

