FROM jsurf/rpi-mariadb

ENV MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql

COPY ./effid.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
