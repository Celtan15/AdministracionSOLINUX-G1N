#!/bin/bash

set -e
parametro=$1

function install_epel_package {
#sudo yum install epel-release -y
echo "Instalando package epel ............"
}

function deploy_nginx {
sudo yum install nginx -y
sudo systemctl start nginx
}

function deploy_httpd {
sudo yum install https -y
}

if [[ "$parametro" == "nginx" ]]
then
        echo "Instalando nginx"
        #deploy_nginx
else
        echo "Instalando httpd"
        #deploy_httpd
fi

