echo "Iniciando instalando do ambiente de desenvolvimento Ruby on Rails com RVM"
echo "*------------UPDATE ------------*"
sudo apt-get update

#echo "--- CONFIGURANDO SENHA PADRÃO DO MYSQL ---"
#DEFAULTPASS="vagrant"
#sudo debconf-set-selections <<EOF
#mysql-server	    mysql-server/root_password password $DEFAULTPASS
#mysql-server	    mysql-server/root_password_again password $DEFAULTPASS
#dbconfig-common	dbconfig-common/mysql/app-pass password $DEFAULTPASS
#dbconfig-common	dbconfig-common/mysql/admin-pass password $DEFAULTPASS
#dbconfig-common	dbconfig-common/password-confirm password $DEFAULTPASS
#dbconfig-common	dbconfig-common/app-password-confirm password $DEFAULTPASS
#phpmyadmin		    phpmyadmin/reconfigure-webserver multiselect apache2
#phpmyadmin		    phpmyadmin/dbconfig-install boolean true
#phpmyadmin         phpmyadmin/app-password-confirm password $DEFAULTPASS 
#phpmyadmin         phpmyadmin/mysql/admin-pass     password $DEFAULTPASS
#phpmyadmin         phpmyadmin/password-confirm     password $DEFAULTPASS
#phpmyadmin         phpmyadmin/setup-password       password $DEFAULTPASS
#phpmyadmin         phpmyadmin/mysql/app-pass       password $DEFAULTPASS
#EOF

#echo "--- instalando pacotes essenciais ---"
#sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

#echo "--- Instalando RVM, setando Ruby 2.4.1 como default ---"
#sudo apt-get install -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#curl -sSL https://get.rvm.io | bash -s stable
#source ~/.rvm/scripts/rvm
#rvm install 2.4.1
#rvm use 2.4.1 --default

#echo "*------------ Instalando bundler ------------*"
#gem install bundler

#echo "--- instalando RAILS 5.1.3 ---"
#gem install rails -v 5.1.3 

echo "*------------ instalando nodejs ------------*"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

#echo "--- instalando mysql e phpmyadmin ---"
#sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev phpmyadmin



