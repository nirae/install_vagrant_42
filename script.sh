#! /bin/bash

if [ ! -e $HOME/.rvm/bin/rvm ]
then
    curl -sSL https://get.rvm.io | bash -s stable --ruby
else
    echo "rvm is already installed"
fi

if [ ! rvm list | grep 2.6 ]
then
    rvm install 2.6
fi

if [ ! -e $HOME/.vagrant.d ]
then
    git clone -b v2.2.7 https://github.com/hashicorp/vagrant.git && cd vagrant
    rvm use 2.6
    bundle install
    bundle --binstubs exec
    mkdir -p $HOME/.vagrant.d && echo "export VAGRANT_HOME=$HOME/.vagrant.d" >> ~/.zshrc && echo "alias vagrant=$HOME/vagrant/exec/vagrant" >> ~/.zshrc && source ~/.zshrc
    vagrant --version
fi