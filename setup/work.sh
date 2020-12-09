#!/bin/bash
su -c "apt-get install -y bash-completion tmux mc lynx python3-setuptools vim imagemagick php-cli davfs2 mutt"
cp .gitconfig ~
cp .tmux.conf ~
cp .vimrc ~
cp .muttrc ~
cp .mailcap ~
