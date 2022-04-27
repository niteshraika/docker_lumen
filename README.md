# Lumen a micro-framework

## Introduction
Lumen is an open source PHP micro-framework for web application development.
<br>
Refer official documentation <a href='https://lumen.laravel.com/' target='_blank'>Lumen</a> for further details

## Current Framework version
* Lumen v 8.3.1

## How to use?

docker-compose.yml

<pre>
<code class="language-console">
version: "3.8"
services:
  Lumen:
    container_name: lumen
    image: nijacker1998/lumen:1.0
    restart: unless-stopped
    networks:
      example-net:
        ipv4_address: 172.1.1.1
    ports:
      - "9001:8000"  #  Give a desired port number
    volumes:
      - lumen_files':/var/www:rw'
    command: php -S 172.1.1.1:9001 -t public # Give IP and port you have selected for the service

volumes:
  lumen_files:
   
</code>
</pre>
