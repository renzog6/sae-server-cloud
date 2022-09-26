#Create MySQL Image
FROM mysql:8.0

CMD ["--default-authentication-plugin=mysql_native_password"]

ENV MYSQL_ROOT_PASSWORD: root
ENV MYSQL_DATABASE: sae_neumatico
ENV MYSQL_USER: saedb
ENV MYSQL_PASSWORD: resconi.843

ADD ./mysql-data /var/lib/mysql
ADD ./init docker-entrypoint-initdb.d

EXPOSE 3306