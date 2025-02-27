#!/bin/bash

function k-pop () {
	sudo useradd jenny
	sudo useradd rose
	sudo useradd lisa
	sudo useradd jisoo
	sudo groupadd blackpink
	sudo usermod -aG blackpink jenny
	sudo usermod -aG blackpink rose
	sudo usermod -aG blackpink lisa
	sudo usermod -aG blackpink jisoo
}

function wordpress () {
        sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
        sudo systemctl restart httpd
	sudo systemctl enable httpd
	wget https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	sudo chown ec2-user wordpress/*
	sudo chmod 755 wordpress/*
	sudo mv wordpress/* /var/www/html
	sudo rm -r /var/www/html/index.html
}

function calculator () {
	echo $((12+4))
	echo $((12-4))
	echo $((12*4))
        echo $((12/4))
}

function binary () {
	sudo yum install tree -y > /dev/null
	sudo yum install -y yum-utils shadow-utils
        sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
        sudo yum -y install terraform > /dev/null
}

k-pop
wordpress
calculator
binary


