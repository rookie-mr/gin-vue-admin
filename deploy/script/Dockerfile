FROM nginx:1.25.1

WORKDIR /root/gin-vue-admin/

COPY gin-vue-admin/web.conf /etc/nginx/conf.d/web.conf
COPY gin-vue-admin/dist/ /usr/share/nginx/html/
RUN cat /etc/nginx/nginx.conf
RUN cat /etc/nginx/conf.d/web.conf
RUN ls -al /usr/share/nginx/html
