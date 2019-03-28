# 快速搭建开发环境


## 一、开发工具与配置
### Windows OS

下载安装软件


- git for windows

- phpcs\
phpcs, Php Code Sniffer 代码风格检查工具。bin 目录下有现成的 phpcs.bat 

- php-cs-fixer \
代码风格修复工具，phar 包，下载即可使用。\
在 PhpStorm 中以 External Tools 外部工具的形式配置。\
File -> Settings -> Tools -> External Tools  \
Add 一个新的，进入编辑状态

        Name: php-cs-fixer
        Desc: php-cs-fixer
        Program: /path/to/php.exe
        Arguments: /path/to/php-cs-fixer.phar fix "$FilePath$" --rules=@PSR2 --verbose
        Workspace: $ProjectFileDir$

  
- PhpStudy or Wamp  
  安装 PhpStudy or Wamp 便于配置 php 环境变量。php-cs-fixer, composer 
  之类的工具运行时依赖 Php 环境。
  
- PhpStrom
  - File -> Settings -> Languages & Frameworks -> PHP -> Code Sniffer \
  可直接搜索 Code Sniffer。 配置本地 phpcs.bat 路径 \
  Editor -> Inspections -> PHP -> PHP Code Sniffer Validation  \
  勾选开启，选择 psr2 标准，不符合该标准的代码会用波浪线标出
  
  - File -> Settings  Search Git \
  指定本地 Git.exe
  
  - 录制宏 Editor -> Marcos \
  php-cs-fixer \
  File -> Save All \
  Deployment -> upload \
  保持为 Save & Fix 并设置快捷键 Ctrl + s
  
- Projects \
编辑 .git/hooks/pre-commit \
实现在 commit 前运行代码风格检查

        #!/bin/sh
        D:/php_tools/phpcs/bin/phpcs --standard=psr2 ./app
  

配置环境变量

Path 新增 

/path/to/your-php \
/path/to/your-git

以上路径为 php.exe git.exe 所在的目录路径


## 二、基于 Docker 的 LNMP 环境

* 基于官方 MySQL 镜像创建 MySQL Server 容器
* 基于官方 Redis 镜像创建 Redis Server 容器
* 根据项目需要创建其他类型的服务容器
* 基于 quick 镜像创建 dev(Nginx + PHP) 容器，并连接到各个服务容器

    
        docker run -t -d --name=dev \    
        --link mysql-server:mysql-host \    
        --link redis-server:redis-host \    
        -v /path/to/host_dir:/var/dev    
        -p 80:80 -p 2222:22 \    
        angryhans/quick:latest
    

dev 配置文件
    
    #  Nginx 配置文件 *.conf 存储路径
    /var/dev/etc/nginx => /path/to/host_dir/etc/nginx
    
    # php 配置文件 php.ini 存储路径
    /var/dev/etc/php => /path/to/host_dir/etc/php
    
dev 正常 running 时，预期可以直接通过浏览器访问到 Web 服务


## 三、工作方式

- Docker 提供全套的服务环境

- PhpStorm IDE 一站式完成：\
代码风格检查 phpcs \
代码风格修复 php-cs-fixer \
Git 作业 Terminal: git (or Git Bash)
