# Dotfiles-server  
サーバーPC用のdotfilesです。
相変わらずの自分環境ですがサーバー用なので普段用よりミニマルな構成になってます。
普段用→[rp-agota/dotfiles](https://github.com/rp-agota/dotfiles)

# 動作確認済環境
Ubuntu server 18.04  
Ubuntu 20.04  

# How to install  
 ```
 git clone https://github.com/rp-agota/dotfiles-server.git dotfiles
 cd dotfiles  
 chmod +x install.sh
 ./install.sh
 ```  
 
 # ディレクトリ構造
 ```
 root/
　├ bin/ (スクリプトファイルなど)
　│　└ tool/　（開発ツール導入用のスクリプトファイル）
　│　      └...
　│　      └ ~install.sh
　│　      └...
　│
　│　└ etc/　（その他手動でインストールするスクリプトファイル）
　│　      └zplug-install.sh (zplug)
　│
　├　install.sh (インストール用のスクリプトファイル)
　│　             
　├　link.sh    (dotfilesのシンボリックリンクを貼るためのスクリプトファイル)
　│　             
　├　...
　├　dotfiles   (各dotfiles)
　└  ...
 ```
 
 # 構築環境
 ・python3.8  
 
 # 開発ツール
 ・zsh & zplug  
 ・vim  
 ・tmux  
 ・midnight commander  
 ・openssh-server  
 
