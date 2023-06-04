#!/bin/bash

# to use this you require to install `homebrew` on the system
set -e

brew install llvm

cat >> ~/.zshrc<< EOF

# brew install llvm
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH=/opt/homebrew/opt/llvm/bin:$PATH

EOF