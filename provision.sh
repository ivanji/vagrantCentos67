#vagrant plugin install vagrant-vbguest

yum update -y

yum install -y nginx

yum install -y http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm
yum install -y Percona-Server-server-56 Percona-Server-client-56

#installing PHP
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
yum install -y php56w-fpm php56w-opcache

#Initiate on logon
chkconfig nginx on
chkconfig mysql on
chkconfig php-fpm on

#securing PHP and MySQL
sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php.ini
sed '/\[mysqld\]/ a\ innodb_file_per_table' /etc/my.cnf

cp -f /vagrant/default.conf /etc/nginx/conf.d/default.conf


#starting Services
service nginx start
service php-fpm start
service mysql start