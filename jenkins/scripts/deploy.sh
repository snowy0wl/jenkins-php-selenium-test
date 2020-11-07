#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app -v "$PWD":/root/jenkins-php-selenium-test/src php:7.2-apache              
sleep 1
set +x

echo 'Now...'
echo 'Visit http://fck la to see your PHP application in action.'




docker run --rm --detach -u root --name my-apache-php-app
--volume "$PWD":/root/jenkins-php-selenium-test/jenkins-php-selenium-test/src
--volume "%HOMEDRIVE%%HOMEPATH%":/home
--volume /var/run/docker.sock:/var/run/docker.sock
--publish 8080:8080 jenkinsci/blueocean

