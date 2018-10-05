version: '2'
services:
  shopwaredb:
    image: mysql:5.5
    environment:
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
      MYSQL_DATABASE: ${mysql_database}
      MYSQL_USER: ${mysql_user}
      MYSQL_PASSWORD: ${mysql_password}
    volumes:
      - ${DATA_DB}:/var/lib/mysql
    volume_driver: ${VOLUME_DRIVER}
    tty: true
    stdin_open: true
    labels:
      io.rancher.container.pull_image: always
  shopware:
    image: kurthuwig/shopware:latest
    environment:
      PHPMYADMIN_PW: ${MYSQL_ROOT_PASSWORD}
    volumes:
      - ${DATA_WWW}:/var/www/html
    volume_driver: ${VOLUME_DRIVER}
    links:
    - shopwaredb:db
    labels:
      io.rancher.container.pull_image: always