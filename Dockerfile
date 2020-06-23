FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y software-properties-common apache2


RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php \
    && apt update \
    && apt install -y php7.3 php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl php7.3-gd php7.3-imagick php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring php7.3-opcache php7.3-soap php7.3-zip php7.3-intl php7.3-common php7.3-cli libapache2-mod-php7.3 php-memcached php7.3-pgsql php7.3-sqlite3 php7.3-json php7.3-bcmath php7.3-readline php7.3-zip unzip wkhtmltopdf


ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"


VOLUME /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]


#docker build -t apache-php7.3 .

#docker tag 549eb61f650e edinaldofox/apache-php7.3:1.0