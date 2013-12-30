alias vmslist="VBoxManage list runningvms"
# halt vagrant vm and then kill VirtualBox completely (otherwise Parallels will complain that incompatibile VM is running)
alias vagranthalt="vagrant halt;killall VBoxNetDHCP > /dev/null"
alias vagrantup="vagrant up;vagrant ssh"
