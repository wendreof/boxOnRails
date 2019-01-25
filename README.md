# Rails Environment with Vagrant

**Requirements**
- VirtualBox https://www.virtualbox.org/
- Git  http://git-scm.com 
- Vagrant http://www.vagrantup.com/

**Includes**
- RVM 1.29.2
- Ruby 2.4.1 and 2.3.4 
- Rails 5.1.3
- MySql 5.7.19
- Redis 4.0.1
- Nodejs 8.4.0
- Git 2.7.4
- Heroku-CLI 6.14.20-737bba7
- Docker 17.06.1-ce

**Step-by-step**

```shel
 $ git clone https://github.com/wendreof/box-on-rails
```

```shel
 $ cd box-on-rails/
```

```shel
 $ vagrant up
```

After this 'vagrant up' command, Vagrant will be responsible for downloading the operating system configuring a virtual machine in VirtualBox and later downloading, installing and configuring all the packages in the 'setup.sh' script. ! The first time really is a bit more time consuming.

```shel
$ vagrant ssh
```

```shel
$ cd /var/www
```

```shel
$ rails new myapp -d mysql
```

Now a web server is available at http://localhost:3000

(The default password for all services is root).

**Basic Usage**

```shel
$ vagrant up
```

```shel
$ vagrant ssh
```

```shel
$ vagrant halt
```

```shel
$ vagrant reload
```
