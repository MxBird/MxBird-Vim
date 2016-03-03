# Ray's vim configure

##自动化脚本
```	
git clone git@github.com:MxBird/MxBird-Vim.git && cd vim　&& sh ./install.sh
```

##安装golang的自动补全

1. 安装go的环境之后，go -version 检测安装时候成功
2. 执行 *go get -u github.com/nsf/gocode* 通常状况下你需要 sudo
3. Install official Go vim scripts from `$GOROOT/misc/vim` 查看对应的

		mkdir -p $HOME/.vim/ftdetect
		mkdir -p $HOME/.vim/syntax
		mkdir -p $HOME/.vim/autoload/go  
		ln -s $GOROOT/misc/vim/ftdetect/gofiletype.vim $HOME/.vim/ftdetect/  
  		ln -s $GOROOT/misc/vim/syntax/go.vim $HOME/.vim/syntax  
  		ln -s $GOROOT/misc/vim/autoload/go/complete.vim $HOME/.vim/autoload/gofiletype
4. 执行完成第三步之后你需要Install gocode vim scripts. Usually it's enough to do the following:

		cd gocode/vim && ./update.bash

	update.bash script does the following:

		#!/usr/bin/env bash
		mkdir -p ~/.vim/{autoload,ftplugin}
		cp autoload/gocomplete.vim ~/.vim/autoload
		cp ftplugin/go.vim ~/.vim/ftplugin
5. 完成以上操作基本完成golang的开发自动补全功能与语法验证








*最后说一点，原始版本来自siriszhuang / vim*
