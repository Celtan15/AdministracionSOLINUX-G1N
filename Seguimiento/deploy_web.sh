#!/bin/bash

function main {
install_epel_package
deploy_nginx
move_html
}

function install_epel_package {
#sudo yum install epel-release -y
echo "Instalando package epel ............"
}

function deploy_nginx {
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
}

function move_html {
echo "HOLA ALEJANDRO" > /usr/share/nginx/html/index.html
}

main
