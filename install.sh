sudo apt-get update
sudo apt-get upgrade

sudo apt-get install git
git config --global user.name "Louis Chatriot"
git config --global user.email "louis.chatriot@gmail.com"
git config --global push.default "matching"

# Nice Git-aware prompt
echo "PS1='\[\033[33m\]\w\[\033[31m\]\$(__git_ps1)\[\033[37m\]\$ '" >> ~/.bashrc
echo 'export GIT_PS1_SHOWDIRTYSTATE=1' >> ~/.bashrc

cd ~
mkdir temp
cd temp

# Node
git clone https://github.com/nodejs/node.git
git checkout v4.2.1
cd node
./configure
make
sudo make install
sudo npm install -g nodemon
rm -rf ~/temp/node

# Misc
sudo apt-get install ruby
sudo apt-get install rake
sudo apt-get install ack-grep
sudo apt-get install exuberant-ctags

# Vim and gvim
sudo apt-get install vim
sudo apt-get install vim-gnome
curl -L https://bit.ly/janus-bootstrap | bash
echo 'color molokai' >> ~/.vimrc.after
echo 'let mapleader=","' >> ~/.vimrc.before
cd ~
mkdir .janus
cd .janus
git clone git@github.com:digitaltoad/vim-jade.git

# KeypassX
sudo apt-get install keepassx

