FROM nginx:stable-alpine

RUN mkdir /http
RUN mkdir -p /log_nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Proxy env if needed
#ENV http_proxy=http://IP:PORT https_proxy=https://IP:PORT

# Needed to be able to change user
RUN apk add su-exec

ADD run_time_op.sh /run_time_op.sh

RUN chmod 744 /run_time_op.sh

# remove the proxy env variable
#ENV http_proxy="" https_proxy=""

# we need to a port above 1024 as we run as non root user
EXPOSE 8080

ENTRYPOINT ["/bin/sh"]
CMD ["./run_time_op.sh"]

