FROM projectodd/whisk_nginx:openshift-latest

RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx /etc/nginx/nginx.conf
RUN chmod 777 /etc/nginx/nginx.conf
EXPOSE 8082
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf
