### Docker搭建的lamp环境

两个lamp版本，将文件download到本地
1. `docker build .`   也可以省略这步，省略的话会从Dockerhub拉取镜像，速度可能很慢

2.  `docker-compose up -d` 

可以将本地文件放入`src`文件夹内

+ mysql 密码为`li9hu` 

如果需要debug 可参考我的笔记 [Docker+phpstrom+xdebug](http://li9hu.top)

