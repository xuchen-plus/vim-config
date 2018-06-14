#!/bin/bash
git clone https://github.com/neovim/neovim.git
cd neovim
mkdir .deps && cd .deps
cmake ../third-party -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j6
cd .. && mkdir build && cd build
# change installation target dir
cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX:PATH=/data1/xu.chen/soft
make -j6 && make install
# install python support for neovim
sudo python -m pip install neovim
mkdir -p ~/.config/neovim/
ln -s ~/.vimrc ~/.config/neovim/init.vim
