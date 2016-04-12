vim配置
====

使用vim已经有3年时间了，一度试图将vim打造为C/C++、Python IDE。但慢慢发现
插件配置越来越多、配置文件组织也越来越乱，所以决定从零开始整理之前的vim配置，
并将自己的vim打造为一款称手好用的编辑器。

目标
----

原则：

*    保持简单
*    组织结构清晰、易懂

适用人群：

C/C++、Python开发者

安装
----

本安装说明假设你的操作系统为 ubuntu，且已经安装了基本的 C/C++, Python 开发环境
（包括gcc, g++, git, pip, make, cmake等）

1 clone z-vim到本地

```
git clone https://github.com/zixie1991/z-vim.git
# cd z-vim
# git submodule init
# git submodule update
```

2 安装第三依赖

```
# ctags
apt-get install ctags
apt-get install ack

# python devel
sudo pip install pylint
sudo pip install pep8
```

3 拷贝配置文件到工作目录（vim配置文件分为desktop和server两个版本，server版功能相对desktop版简洁）

```
make install-desktop
make install-server
```

vim 的 desktop 与 server 版本的区别为：desktop 版使用 YouCompleteMe 进行语法检
查和自动提示，而 server 版使用 neocomplcache 和 jedi-vim 进行自动补全、
syntastic 进行语法检查，且 server 版本少了一些美化的插件

4 安装插件

+   启动 vim
+   执行命令 `:BundleInstall`
+   如果采用 desktop 版本，YouCompleteMe 的安装参考[YCM智能补全](docs/youcompleteme.md)

5 编译必要插件（如YouCompleteMe）

常用命令快捷键
----

### 代码开发

#### 注释

插件 NERD Commenter（https://github.com/scrooloose/nerdcommenter ）可以帮助我们快速注释

常用操作：

*   <leader>cc，注释当前选中文本，如果选中的是整行则在每行首添加 //，如果选中一行的部分内容则在选中部分前后添加分别 /、/；
*   <leader>cu，取消选中文本块的注释。

#### 源文件和头文件间快速切换

插件 a.vim

常用操作:

*   :A 切换当前文件的头文件,在当前窗口打开(或者反过来)
*   :AS 功能同:A,但是切换到水平分割窗口的打开
*   :AV 功能同:A,但是切换到竖直分割的窗口打开
*   :AT 功能同:A,但是切换到标签页打开

#### 智能补全

##### 基于标签的智能补全

1.  生成tags：在项目根目录打开vim，执行F5
2.  提示就产生了

### 项目管理


版本
----

目录
----

*   [插件管理](docs/plugin.md)
*   [YCM智能补全](docs/youcompleteme.md)
