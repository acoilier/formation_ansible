FROM acoilier/webssh:latest

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]


# Define working directory.
WORKDIR /etc/nginx

EXPOSE 22
EXPOSE 80

ADD sources/lab2_web_start.sh /
RUN chmod +x /lab2_web_start.sh
ADD sources/index.nginx-debian.html /var/www/html/index.nginx-debian.html

#CMD ["/usr/sbin/sshd" , "-D"]
CMD ["/lab2_web_start.sh" , "-D"]
