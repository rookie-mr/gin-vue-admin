#!/bin/bash

# build for ecs version
# GOOS=linux GOARCH=amd64 go build .

# upload files to aliyun ecs
# sftp root@101.201.109.212

# put -r /Users/zhangguangpu/src/gin-vue-admin/deploy/script/Dockerfile /root
# put -r /Users/zhangguangpu/src/gin-vue-admin/deploy/script/web.conf /root/gin-vue-admin

# put -r /Users/zhangguangpu/src/gin-vue-admin/web/dist /root/gin-vue-admin
# put -r /Users/zhangguangpu/src/gin-vue-admin/server/resource /root/gin-vue-admin
# put -r /Users/zhangguangpu/src/gin-vue-admin/server/config.yaml /root/gin-vue-admin
# put -r /Users/zhangguangpu/src/gin-vue-admin/server/server /root/gin-vue-admin

# sudo docker build -t gva:v1 .
# sudo docker run --name gva -p 8080:8080 -d gva:v1
