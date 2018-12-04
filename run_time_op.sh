chown -R h5ai:h5ai /var/log/nginx/
chown -R h5ai:h5ai /log_nginx
chown -R h5ai:h5ai /var/run/
chown -R h5ai:h5ai /etc/nginx/
chown -R h5ai:h5ai /http
chown -R h5ai:h5ai /var/cache/nginx/
su-exec my_user nginx -g 'daemon off;'
