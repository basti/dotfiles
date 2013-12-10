alias vmslist="VBoxManage list runningvms"
# halt vagrant vm and then kill VirtualBox completely (otherwise Parallels will complain that incompatibile VM is running)
alias vagranthalt="vagrant halt;killall VBoxNetDHCP"
alias vagrantup="vagrant up;vagrant ssh"
