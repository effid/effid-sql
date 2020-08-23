# Image de base mariadb pour arm32v7
FROM jsurf/rpi-mariadb

# Variables env pour les dossiers
ENV MYSQL_DATA_DIR=/var/lib/mysql
ENV MYSQL_RUN_DIR=/run/mysqld
ENV MYSQL_LOG_DIR=/var/log/mysql

# Import du fichier SQL de base pour formater la base
COPY ./effid.sql /docker-entrypoint-initdb.d/

# Ouverture du port
EXPOSE 3306
