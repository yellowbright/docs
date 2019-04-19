#自定义docker搭建流程
1. 搭建ubuntu系统

2. 腾讯云使用root账号密码登录
https://www.jianshu.com/p/69d662f804c1

2. 安装docker
https://docker_practice.gitee.io/install/ubuntu.html (推荐:国内镜像安装更快)
国内镜像加速(页面最后面)

3. 安装git(腾讯云已安装)
http://www.runoob.com/git/git-install-setup.html

4. 安装docker-composer
https://docs.docker.com/compose/install/

5. docker搭建流程
https://github.com/ydtg1993/server

7. 安装composer
 
		https://docs.phpcomposer.com/00-intro.html#Globally

7. 中国镜像

		https://pkg.phpcomposer.com/

7. 安装laravel

		composer create-project --prefer-dist laravel/laravel blog 5.4.*

8. 网站根目录权限设置

		https://segmentfault.com/a/1190000018373387?utm_source=tag-newest

		chown -R www.www /data/wwwroot/
		find /data/wwwroot/ -type d -exec chmod 755 {} \;
		find /data/wwwroot/ -type f -exec chmod 644 {} \;

		chmod -R 775 storage
