# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::c::deps()
#
#>
######################################################################
p6df::modules::c::deps() {
  ModuleDeps=(p6m7g8-dotfiles/p6common)
}

######################################################################
#<
#
# Function: p6df::modules::c::external::brew()
#
#>
######################################################################
p6df::modules::c::external::brew() {

  brew install autoconf
  brew install automake
  brew install cmake
  brew install gdb
}
