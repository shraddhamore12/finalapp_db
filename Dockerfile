FROM mysql

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=app_db

COPY schema.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
