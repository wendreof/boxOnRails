##Pre Requirements

- VirtualBox https://www.virtualbox.org/
- Git  http://git-scm.com 
- Vagrant http://www.vagrantup.com/

##Includes

- RVM 1.29.2
- Ruby 2.4.1 and 2.3.4 
- Rails 5.1.3
- MySql 5.7.19
- Nodejs 8.4.0
- Git 2.7.4
- Docker 17.06.1-ce

##Step-by-step

1º -> Clone this repostory https://github.com/wendreof/box-on-rails

2º -> cd box-on-rails/

3º -> vagrant up

After this 'vagrant up' command, Vagrant will be responsible for downloading the operating system configuring a virtual machine in VirtualBox and later downloading, installing and configuring all the packages in the 'setup.sh' script. ! The first time really is a bit more time consuming).

4º -> vagrant ssh

5º -> run rails new myapp or run rasils new myapp -d mysql

A web server is available at http://localhost:3000

- Enjoy