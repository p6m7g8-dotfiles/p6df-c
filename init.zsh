# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::c::deps()
#
#>
######################################################################
p6df::modules::c::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
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
  code --install-extension ms-vscode.cmake-tools
  code --install-extension ms-vscode.cpptools
  code --install-extension ms-vscode.cpptools-extension-pack
  code --install-extension ms-vscode.cpptools-themes
  code --install-extension ms-vscode.makefile-tools
  code --install-extension twxs.cmake

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::c::external::brew()
#
#>
######################################################################
p6df::modules::c::external::brew() {

  p6df::modules::homebrew::cli::brew::install autoconf
  p6df::modules::homebrew::cli::brew::install automake
  p6df::modules::homebrew::cli::brew::install cmake
#  p6df::modules::homebrew::cli::brew::install gdb x86_64 w/ /usr/local only

  p6_return_void
}
