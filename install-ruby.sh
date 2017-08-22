#!/usr/bin/env bash
echo "*-------------------INSTALANDO RUBY---------------*"
 source $HOME/.rvm/scripts/rvm || source /etc/profile.d/rvm.sh

 rvm use --default --install $1

 shift

 if (( $# ))
 then gem install $@
 fi

 rvm cleanup all

sudo apt-get -y upgrade

