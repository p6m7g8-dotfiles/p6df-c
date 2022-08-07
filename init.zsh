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
# Function: p6df::modules::c::vscodes()
#
#>
######################################################################
p6df::modules::c::vscodes() {

  code --install-extension cschlosser.doxdocgen
  code --install-extension jeff-hykin.better-cpp-syntax
  code --install-extension josetr.cmake-language-support-vscode
  code --install-extensionms-vscode.cmake-tools
  code --install-extensionms-vscode.cpptools
  code --install-extensionms-vscode.cpptools-extension-pack
  code --install-extensionms-vscode.cpptools-themes
  code --install-extensionms-vscode.makefile-tools
  code --install-extensiontwxs.cmake
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
