#!/bin/bash

sudo chmod -R 777 /home/ec2-user/express-app

#navigate into our working directory
#loads nvm bash_completion (node is in)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"] && \. "$NVM_DIR/bash_completion"

#install node modules
npm install --save
#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null & 