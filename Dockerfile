FROM ubuntu:20.04

LABEL Organization="Chilliquest Technology" Image="Laravel Lumen" Maintainer="Nitesh Mongar" Maintainer_email="niteshraikamongar@gmail.com"

#Installing system dependencies
RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-get install -y git \
    && add-apt-repository ppa:ondrej/php \
    && apt-get -y update \
    && apt-get install -y php8.1-fpm \
    && apt-get install openssl php8.1-common php8.1-mysql php8.1-xml php8.1-xmlrpc php8.1-curl php8.1-gd php8.1-imagick php8.1-cli php8.1-dev php8.1-imap php8.1-mbstring php8.1-opcache php8.1-soap zip unzip php8.1-zip php8.1-intl php8.1-bcmath -y

#Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#Installing composer
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/bin/composer

#Add lumen project to image
ADD lumen/. /var/www

#Working directory
WORKDIR /var/www

#Exposing required ports
EXPOSE 80 8000 3306 3000