插件管理
====

插件管理主要包括插件下载和组织两件事，本项目的vim使用vundle(https://github.com/vim-scripts/vundle)来管理插件。

安装Vundle
----

```
mkdir -p ~/.vim/bundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Vundle使用
----

### 配置 bundles

向 .vimrc 添加

```
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Bundles:
Bundle "L9"
Bundle "FuzzyFinder"
Bundle "rails.vim"
Bundle "ack.vim"
Bundle "git://git.wincent.com/command-t.git"
" ...
```

### 安装 bundles

1.  启动 vim
2.  执行命令 `:BundleInstall`

更多命令使用vim帮助 `:h vundle`
