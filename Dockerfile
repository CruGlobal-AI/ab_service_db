##
## ghcr.io/cruglobal-ai/ab-db
##
## This is our database service for our AppBuilder.
##
## Docker Commands:
## ---------------
## $ docker build -t ghcr.io/cruglobal-ai/ab-db:master .
## $ docker push ghcr.io/cruglobal-ai/ab-db:master
##

FROM mariadb:10

COPY ./conf.d/* /etc/mysql/conf.d

COPY ./init/* /docker-entrypoint-initdb.d

