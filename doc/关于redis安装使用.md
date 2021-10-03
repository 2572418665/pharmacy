菜鸟教程--关于redis安装使用

https://www.runoob.com/redis/redis-install.html



打开一个 **cmd** 窗口 使用 cd 命令切换目录到 **C:\redis** 运行：

```
redis-server.exe redis.windows.conf
```

![image-20210929111602453](C:\Users\86132\AppData\Roaming\Typora\typora-user-images\image-20210929111602453.png)

这时候另启一个 cmd 窗口，原来的不要关闭，不然就无法访问服务端了。

切换到 redis 目录下运行:

```
redis-cli.exe -h 127.0.0.1 -p 6379
```

设置键值对:

```
set myKey abc
```

取出键值对:

```
get myKey
```

![image-20210929111612220](C:\Users\86132\AppData\Roaming\Typora\typora-user-images\image-20210929111612220.png)