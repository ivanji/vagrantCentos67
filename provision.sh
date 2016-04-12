#vagrant plugin install vagrant-vbguest

yum update -y

yum install -y nginx
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
yum install php56w-fpm php56w-opcache


yum install http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm
yum install Percona-Server-server-55


#Initiate on logon
chkconfig nginx on
chkconfig mysql on

#starting Services
service nginx start
service mysql start