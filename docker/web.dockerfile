FROM nginx:1.14

ADD docker/vhost.conf /etc/nginx/conf.d/default.conf
