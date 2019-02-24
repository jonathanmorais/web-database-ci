FROM wordpress

USER root

RUN git pull git@github.com:jonathanmorais/web-database-ci.git && cd ./themes

ADD . /var/www/html/wp-content/themes/twentyfifteen/

