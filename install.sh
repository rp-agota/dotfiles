#!/bin/bash

#Welcome to install.sh

#[動作確認済環境]
#Ubuntu server 18.04

echo "Hello! This is the install.sh!"


echo "----------[FIRST STEP]----------"
#各dotfileのSymbolic linkをホームディレクトリに貼り付ける
echo "make Symbolic link of dotfiles!"
chmod +x link.sh
./link.sh

echo "----------[SECOND STEP]----------"
#開発には直接関係の無いオプション(powerlineなど)をインストールする
#同様に~/dotfiles/bin/toolにsh形式で入れると次回セットアップ時に自動続行する
echo "Begin to setup option tool"
sudo apt update
sudo apt -y upgrade
cd ~/dotfiles/bin/tool
for f in *.sh
do
    chmod +x $f
    ./$f
done

echo "----------[FINAL STEP]----------"
#githubの設定を行う
echo "Begin to setup git and github"
echo "What is your git name?:"
read gitname
echo "What is your git email?"
read gitemail

git config --global user.name"$gitname"
git config --global user.email $gitmail

echo "----------[INSTALL ENDED!]----------"
echo "Thank you for using this install script."
echo "Good bye and Enjoy new computer!"
