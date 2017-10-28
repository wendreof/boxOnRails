echo "Getting Started Installing from the Ruby on Rails Development Environment with RVM"

echo "*------------Installing essentials packages ------------*"
sudo apt-get install -y zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

echo "*------------apt-get UPDATE ------------*"
sudo apt-get update && sudo apt-get -y upgrade

echo "------- Configuring MySQL Password ---------"
DEFAULTPASS="root"
sudo debconf-set-selections <<EOF
mysql-server	    mysql-server/root_password password $DEFAULTPASS
mysql-server	    mysql-server/root_password_again password $DEFAULTPASS
dbconfig-common	dbconfig-common/mysql/app-pass password $DEFAULTPASS
dbconfig-common	dbconfig-common/mysql/admin-pass password $DEFAULTPASS
dbconfig-common	dbconfig-common/password-confirm password $DEFAULTPASS
dbconfig-common	dbconfig-common/app-password-confirm password $DEFAULTPASS
EOF

echo "*------------ Installing nodejs ------------*"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "*------------Installing MySQL server------------*"
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev

echo "*------------Installing Git ------------*"
sudo apt-get install -y git

echo "*------------Installing Docker ------------*"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce

echo "*------------Installing Heroku CLI ------------*"
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

echo "*------------Installing Redis ------------*"
sudo apt-get install -y build-essential tcl
cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
sudo make install
cd ..
cd ..
sudo apt-get install -y redis-server
sudo systemctl restart redis-server.service

echo "*------------apt-get UPDATE again ... ------------*"
sudo apt-get update && sudo apt-get -y upgrade





