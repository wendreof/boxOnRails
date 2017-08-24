#!/usr/bin/env bash
echo "*-------------------Installing RUBY---------------*"

 source $HOME/.rvm/scripts/rvm || source /etc/profile.d/rvm.sh

 rvm use --default --install $1

 shift

 if (( $# ))
 then gem install $@
 fi

 rvm cleanup all

echo "*------------------- Installing MySQL Gem---------------*"
gem install mysql2

echo "*------------------- Upgrade---------------*"
sudo apt-get -y upgrade

