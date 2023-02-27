#!/bin/bash

#downlad node and npm
curl -o- 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node 

# create our working directory if it dosent exist

DIR='/home/ec2-user/express-app'
if [ -d "$DIR"]; then
    echo "${DIR} exists"
else 
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi