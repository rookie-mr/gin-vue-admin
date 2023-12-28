#!/bin/bash

# build server for ecs version
GOOS=linux GOARCH=amd64 go build /Users/zhangguangpu/src/gin-vue-admin/server

# build web
cd /Users/zhangguangpu/src/gin-vue-admin/web && npm run build

# upload files to aliyun ecs
sftp root@101.201.109.212 <<EOF
put -r /Users/zhangguangpu/src/gin-vue-admin/deploy/script/Dockerfile /root/gin-vue-admin
put -r /Users/zhangguangpu/src/gin-vue-admin/deploy/script/web.conf /root/gin-vue-admin
put -r /Users/zhangguangpu/src/gin-vue-admin/web/dist /root/gin-vue-admin
put -r /Users/zhangguangpu/src/gin-vue-admin/server/resource /root/gin-vue-admin
put -r /Users/zhangguangpu/src/gin-vue-admin/server/config.yaml /root/gin-vue-admin
put -r /Users/zhangguangpu/src/gin-vue-admin/server/server /root/gin-vue-admin
EOF

# ssh into the server
sshpass -p '' ssh root@101.201.109.212 <<'ENDSSH'
sudo docker stop gin-vue-admin
sudo docker rm gin-vue-admin
sudo docker rmi gin-vue-admin:1.0.0
sudo docker build -t gin-vue-admin:1.0.0 -f /root/gin-vue-admin/Dockerfile /root
sudo docker run --name gin-vue-admin -p 8080:8080 -d gin-vue-admin:1.0.0
/root/gin-vue-admin/server
ENDSSH
