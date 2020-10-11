
######################################################################
#<
#
# Function: p6df::modules::dev::deps()
#
#>
######################################################################
p6df::modules::dev::deps()    {
	ModuleDeps=(
    p6m7g8/p6cicd
    p6m7g8/p6test
  )
}

######################################################################
#<
#
# Function: p6df::modules::dev::external::brew()
#
#>
######################################################################
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

  brew install consul
#    consul agent -dev -advertise 127.0.0.1
  brew install consul-template
  brew install envconsul

  brew install packer
}

######################################################################
#<
#
# Function: p6df::modules::dev::home::symlink()
#
#>
######################################################################
p6df::modules::dev::home::symlink() {

 # XXX: TODO .ssh/config
 true;
}

######################################################################
#<
#
# Function: p6df::modules::dev::init()
#
#>
######################################################################
p6df::modules::dev::init() {

}