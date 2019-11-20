FROM nginx
COPY ./nginx/dhparam.pem /etc/nginx/dhparam.pem
COPY ./nginx/nginxconfig.io/general.conf /etc/nginx/nginxconfig.io/general.conf
COPY ./nginx/nginxconfig.io/security.conf /etc/nginx/nginxconfig.io/security.conf
COPY ./nginx/nginxconfig.io/proxy.conf /etc/nginx/nginxconfig.io/proxy.conf
COPY ./nginx/sites-available/localhost.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/ssl/server.crt /etc/nginx/ssl/server.crt
COPY ./nginx/ssl/server.key /etc/nginx/ssl/server.key
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
ENV NGINX_HOST localhost
EXPOSE 80 443
#CMD /bin/bash -c "envsubst < /etc/nginx/sites-available/localhost.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
