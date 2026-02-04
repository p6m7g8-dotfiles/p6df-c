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

  p6df::modules::vscode::extension::install llvm-vs-code-extensions.vscode-clangd
  p6df::modules::vscode::extension::install ms-vscode.cmake-tools
  p6df::modules::vscode::extension::install twxs.cmake
  p6df::modules::vscode::extension::install ms-vscode.makefile-tools
  p6df::modules::vscode::extension::install cschlosser.doxdocgen
  p6df::modules::vscode::extension::install jeff-hykin.better-cpp-syntax

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::c::vscodes::config()
#
#>
######################################################################
p6df::modules::c::vscodes::config() {

  cat <<'EOF'
  "clangd.path": "clangd",
  "clangd.arguments": [
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--pch-storage=memory"
  ]
EOF

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

  p6df::core::homebrew::cli::brew::install autoconf
  p6df::core::homebrew::cli::brew::install automake
  p6df::core::homebrew::cli::brew::install cmake --formula
#  p6df::core::homebrew::cli::brew::install gdb x86_64 w/ /usr/local only

  p6_return_void
}
