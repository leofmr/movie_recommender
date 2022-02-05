FROM mysql:8.0.28

#COPY ./db/data ./data
COPY ./db/init.sql /docker-entrypoint-initdb.d/
COPY ./db/data/movies.csv /docker-entrypoint-initdb.d/

#RUN mysqld_safe && \
#  while ! mysqladmin ping --silent; do sleep 1; echo "wait 1 second"; done && \
#  mysql -uroot -pexample -e "CREATE DATABASE movielens" && \
#  mysqlimport --ignore-lines=0 --fields-terminated-by=, \
#    --columns='movieId,title,genres' --local -uroot -pexample \
#    movielens /data/movies.csv

#RUN mysql start && \
#    mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE lba" && \
#    mysqlimport --ignore-lines=0 --fields-terminated-by=, \
#    --columns='movieId,title,genres' --local -u root -p${MYSQL_ROOT_PASSWORD} \
#    movielens /data/movies.csv
	