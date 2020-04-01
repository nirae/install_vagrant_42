# Installing vagrant from sources on 42's mac

Tested and works on a 42 mac 01/04/2020

Vagrant 2.2.7
Ruby 2.6
Vboxmanage 6.0.14r133895 (vboxmanage --version)

## Install RVM for manage the ruby versions

    $> curl -sSL https://get.rvm.io | bash -s stable --ruby

## Install the good ruby version

    $> rvm install 2.6

## Install Vagrant from sources

Where you wan't to install vagrant. This exemple do it in the home

    $> git clone -b v2.2.7 https://github.com/hashicorp/vagrant.git && cd vagrant

    $> rvm use 2.6

    $> bundle install

    $> bundle --binstubs exec

    $> mkdir -p $HOME/.vagrant.d && echo "export VAGRANT_HOME=$HOME/.vagrant.d" >> ~/.zshrc && echo "alias vagrant=$HOME/vagrant/exec/vagrant" >> ~/.zshrc && source ~/.zshrc

    $> vagrant --version

Enjoy!

## Tips

### Session full because of virtualbox images or vagrant boxes

Do a symlink for the folders `~/.vagrant.d` and `~/VirtualBox VMs` in the `goinfre` or `sgoinfre`

### Problems with the norminette ruby version

Restore the system ruby version for the norminette

    $> rvm use system