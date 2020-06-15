# 常用命令

## 使用vim修改二进制文件

1. 首先以二进制方式编辑这个文件
```
vi -b datafile
```

2. 使用xxd转换为16进制:%!xxd文本看起来像这样:
```
0000000: 1f8b 0808 39d7 173b 0203 7474 002b 4e49  ....9..;..tt.+NI         
0000010: 4b2c 8660 eb9c ecac c462 eb94 345e 2e30  K,.`.....b..4^.0         
0000020: 373b 2731 0b22 0ca6 c1a2 d669 1035 39d9  7;'1.".....i.59. 
```

现在你可以随心所欲地阅读和编辑这些文本了。 Vim 把这些信息当作普通文本来对待。

3. 转换16进制回来
```
vi:%!xxd -r
```

4. 保存:wq

Mac相关应用推荐：Synalyze It!、HexFiend

## vim编译安装

https://github.com/vim/vim

```
sudo apt install -y libncurses5-dev
./configure --enable-pythoninterp=yes --enable-python3interp=yes
# 可能需要
# ./configure  --with-features=huge \
#              --enable-pythoninterp=yes --enable-python3interp=yes \
#              --enable-multibyte=yes  --enable-cscope  --enable-fontset --with-python3-command \
#              --with-python-config-dir=/usr/lib64/python2.7/config \
#              --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu
make
sudo make install
```

## YouComplete问题

[Kernel inotify watch limit reached](https://unix.stackexchange.com/questions/13751/kernel-inotify-watch-limit-reached)

```
# cat /etc/sysctl.conf
# sysctl -p
fs.inotify.max_user_watches=524288
```
