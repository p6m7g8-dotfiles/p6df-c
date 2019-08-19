p6df::modules::dev::version() { echo "0.0.1" }
p6df::modules::dev::deps()    {
	ModuleDeps=()
}

p6df::modules::dev::external::brew() {

# https://github.com/moul/advanced-ssh-config
# https://ssh-vault.com/
# https://github.com/arthepsy/ssh-audit
# https://zssh.sourceforge.io/

  brew install autoconf
  brew install automake
  brew install cmake
  brew install diff-so-fancy
  brew install editorconfig
  brew install gdb
  # echo "set startup-with-shell off" >> ~/.gdbinit
  brew install swaks

  brew install hg

  brew install graphviz

  brew install ansible

  brew install terraform
  brew install terraform-inventory
  brew install terraform-provisioner-ansible
#Once installed a $HOME/.terraformrc file is used to enable the plugin:
#
#provisioners {
#  ansible = "/usr/local/bin/terraform-provisioner-ansible"
#}
  brew install consul
#    consul agent -dev -advertise 127.0.0.1
  brew install consul-template
  brew install envconsul

  brew install packer
}

p6df::modules::dev::home::symlink() {

 # XXX: TODO .ssh/config
 true;
}

p6df::modules::dev::init() {

}
