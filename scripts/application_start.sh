export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # loads nvm bash_completion (node is in path now)

pm2 delete all || echo 'nothing to delete'

cd /home/ec2-user/express-app

pm2 start dist/main.js --name 'nest-js-api' -f -i 0