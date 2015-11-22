插件管理
====

插件管理主要包括插件下载和组织两件事，本项目的vim使用[vundle](https://github.com/vim-scripts/vundle)来管理插件。

安装Vundle
----

```
mkdir -p ~/.vim/bundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

使用Vundle
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

### 安装插件

1.  在vimrc中配置对应插件
```
Bundle 'xxx/xxxx'
```

2.  重新启动 vim
3.  执行命令 `:BundleInstall`

### 更新插件

执行命令: `:BundleUpdate`

### 删除插件

执行命令: `:BundleClean`

更多命令使用vim帮助 `:h vundle`
