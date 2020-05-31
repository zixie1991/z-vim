vim配置
====

使用vim已经有3年时间了，一度试图将vim打造为C/C++、Python、Go IDE。但慢慢发现
插件配置越来越多、配置文件组织也越来越乱，所以决定从零开始整理之前的vim配置，
并将自己的vim打造为一款称手好用的编辑器。

目标
----

原则：

* 保持简单
* 组织结构清晰、易懂

适用人群：

C/C++、Python开发者

安装
----

本安装说明假设你的操作系统为 ubuntu/macOS，且已经安装了基本的 C/C++, Python 开发环境
（包括gcc, g++, git, pip, make, cmake等）


1. clone z-vim到本地
  ```
git clone https://github.com/zixie1991/z-vim.git
# cd z-vim
# git submodule init
# git submodule update
  ```

2. 安装第三依赖

linux
  ```
# ctags
sudo apt-get install ctags
sudo apt-get install ack

# python devel
sudo pip install pylint
sudo pip install pep8
  ```

macOS
  ```
# ctags
brew install ctags
brew install ack

# python devel
pip install pylint
pip install pep8

# go devel
  ```

3. 拷贝配置文件到工作目录
  ```
make install-server
  ```
使用 neocomplcache 和 jedi-vim 进行自动补全、syntastic 进行语法检查，且 server 版本少了一些美化的插件

4. 安装插件
  + 启动 vim
  + 执行命令 `:BundleInstall`
  + 执行命令 `:GoInstallBinaries`
  

常用命令快捷键
----

### 代码开发

#### 注释

插件 NERD Commenter（https://github.com/scrooloose/nerdcommenter ）可以帮助我们快速注释

常用操作：

* `<leader>`cc，注释当前选中文本，如果选中的是整行则在每行首添加 //，如果选中一行的部分内容则在选中部分前后添加分别 /、/；
* `<leader>`cu，取消选中文本块的注释。

#### 源文件和头文件间快速切换

插件 a.vim

常用操作:

* :A 切换当前文件的头文件,在当前窗口打开(或者反过来)
* :AS 功能同:A,但是切换到水平分割窗口的打开
* :AV 功能同:A,但是切换到竖直分割的窗口打开
* :AT 功能同:A,但是切换到标签页打开

#### 文件名、路径名模糊搜索

ctrlp.vim

常用操作:

* `<leader>f`模糊搜索最近打开的文件
* `<leader>p`模糊搜索当前目录及其子目录下的所有文件
* 搜索框出来后, 输入关键字, 然后
```
ctrl + j/k 进行上下选择
ctrl + x   在当前窗口水平分屏打开文件
ctrl + v   同上, 垂直分屏
ctrl + t   在tab中打开
F5         刷新可搜索文件
ctrl + d   只能搜索全路径文件
ctrl + r   可以使用正则搜索文件
```

#### 内容查找

插件 ctrlsf.vim

vim 支持正则表达式，那么已经具有强劲的查供能力，在当前文件内查找，vim 的 / 和 ? 查找命令非常好用。而 ctrlsf.vim 更加强大，他可以实现在工程内全局查找光标所在关键字。

常用操作:

* 将光标移动到你要查找的关键字, 执行Ctrl-f 然后回车进行全局搜索
* 执行Ctrl-f 然后直接输入、回车进行全局搜索
* Ctrl-k 向上查找, Ctrl-j 向下查找
* t 在tab中打开
* q 退出全局查找界面

#### 代码阅读

##### ctags

1. 生成tags：在项目根目录打开vim，执行F5
2. 用"ctrl+]"快捷键，跳转到光标所在函数标识符的定义处
3. 函数有重载时，使用"g]"跳转
4. 在函数中移动光标的快捷键:
  * [{ 转到上一个位于第一列的"{"
  * }] 转到下一个位于第一列的"{"
  * { 转到上一个空行
  * } 转到下一个空行
  * gd 转到当前光标所指的局部变量的定义
    *   `*` 转到当前光标所指的单词下一次出现的地方
    *   `#` 转到当前光标所指的单词上一次出现的地方
5. 跳转返回 Ctrl-o

#### ycm

1. 跳转到代码定义的位置 `<leader> gl`
2. 调转到代码实现的位置 `<leader> gf`
3. 跳转到代码定义or实现的位置 `<leader> gg`
4. 跳转返回 `Ctrl-o`

#### 智能补全

##### 基于标签的智能补全

1. 生成tags：在项目根目录打开vim，执行F5
2. 提示就产生了

#### go自动提示跳转

gocode智能提示

1. `<C-n>` 自动提示

gopls跳转

1. `<C-]>` 跳转定义

### 版本控制

在修改块之间进行切换，默认的快捷键映射如下：
```
nmap [c <Plug>GitGutterPrevHunk
nmap ]c <Plug>GitGutterNextHunk
```

打开正在编辑的文件，命令 :Gdiff， 就可以方便的查看本次修改和仓库里代码的改动了

### 项目管理


版本
----

目录
----

* [插件管理](docs/plugin.md)
