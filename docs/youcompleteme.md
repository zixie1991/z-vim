基于语义的智能补全
====

YouCompleteMe（后简称 [YCM](https://github.com/Valloric/YouCompleteMe) ），一个
随键而全的、支持模糊搜索的、高速补全的插件，太棒了！YCM 由 google 公司搜索项目
组的软件工程师 Strahinja Val Markovic 所开发，YCM 后端调用 libclang（以获取 
AST，当然还有其他语言的语义分析库，我不关注）、前端由 C++ 开发（以提升补全效
率）、外层由 python 封装（以成为 vim 插件），它可能是我见过安装最复杂的 vim 插
件了。有了 YCM，基本上 clang_complete、AutoComplPop、Supertab、neocomplcache、
UltiSnips 可以再见了。

依赖环境
----

*   vim 版本至少达到 7.3.584，且支持 python2，参照“源码安装编辑器 vim”部分可满足；
*   需要 clang 支持，且版本至少达到 3.3，参照“代码编译”部分可满足；

安装YCM
----

下载YCM及相关依赖

```
cd ~/.vim/bundle/YouCompleteMe/ 
# 获取 YCM 的依赖包
git submodule update --init --recursive
```

编译YCM

```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```
