#!/bin/bash

docker run -v $PWD/test:/tmp \
-e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_DEFAULT_REGION \
ombu/boto3:1.8 python