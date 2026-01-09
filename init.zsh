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

  code --install-extension llvm-vs-code-extensions.vscode-clangd
  code --install-extension ms-vscode.cmake-tools
  code --install-extension twxs.cmake
  code --install-extension ms-vscode.makefile-tools
  code --install-extension cschlosser.doxdocgen
  code --install-extension jeff-hykin.better-cpp-syntax

  p6_return_void
}

#{
#  "clangd.path": "clangd",
#  "clangd.arguments": [
#    "--background-index",
#    "--clang-tidy",
#    "--completion-style=detailed",
#    "--header-insertion=iwyu",
#    "--pch-storage=memory"
#  ],
#  "C_Cpp.intelliSenseEngine": "disabled",
#  "C_Cpp.autocomplete": "disabled",
#  "C_Cpp.errorSquiggles": "disabled"
#}

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
  p6df::modules::homebrew::cli::brew::install cmake --formula
#  p6df::modules::homebrew::cli::brew::install gdb x86_64 w/ /usr/local only

  p6_return_void
}
