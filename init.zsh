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
  brew install swaks

  brew install hg
  brew install subversion

  brew install graphviz

  brew install ansible
  brew install docker
  brew install docker-compose
  brew install docker-machine

  brew install terraform
  brew install terraform-inventory
  brew install terraform-provisioner-ansible

  brew install consul
  brew install consul-template
  brew install envconsul

  brew install packer
}

p6df::modules::dev::home::symlink() {

 # XXX: .ssh/config
}

p6df::modules::dev::init() {

}
