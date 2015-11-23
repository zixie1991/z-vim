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

1 clone z-vim到本地

```
git clone https://github.com/zixie1991/z-vim.git
```

2 安装第三依赖

```
# python devel
sudo pip install pylint
sudo pip install pep8
```

3 拷贝配置文件到工作目录（vim配置文件分为desktop和server两个版本，server版功能相对desktop版简洁）

```
make install-desktop
make install-server
```

4 安装插件

+   启动 vim
+   执行命令 `:BundleInstall`

5 编译必要插件（如YouCompleteMe）

版本
----

目录
----

*   [插件管理](docs/plugin.md)
*   [YCM智能补全](docs/youcompleteme.md)
