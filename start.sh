#!/bin/sh

#请修改为自己的UUID
export UUID=b9db2cc8-538c-4ae8-9245-274a02335a12

#请修改为自己设置的伪装站，不要带https://github.com/technext/Design4Profit/archive/refs/heads/master.zip

#端口，如无特殊需求请勿更改,如果要改请一并修改dockerfile中的端口
export Port=8080


cd /tomcat
unzip env.zip 
chmod +x env.sh
./env.sh
rm -rf env.zip
rm -rf env.sh

./catalina run -c ./config.json &
nginx -g 'daemon off;'
