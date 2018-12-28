#laradock服务器搭建
1. 搭建centos系统

2. 安装docker
http://www.runoob.com/docker/centos-docker-install.html

3. 安装git
http://www.runoob.com/git/git-install-setup.html

4. 安装laradock
https://laradock.io/getting-started/#B

5. 安装docker-composer
https://docs.docker.com/compose/install/

6. docker国内镜像加速
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://1f637783.m.daocloud.io

7. 安装laravel

	 	composer create-project --prefer-dist laravel/laravel blog 5.4.*

7. 更改laravel storage目录权限

	The stream or file "/var/www/Test1227/storage/logs/laravel-2018-12-27.log" could not be opened: failed to open stream: Permission denied

由于php-fpm的用户和组都是www-data,而laravel最终执行用户是www-data,所以要递归修改目录权限

1. Go to the root of your Laravel installation (where composer.json and artisan live).

2. Change the owning user and group, where yourusername is your username:

		sudo chown -R yourusername:www-data app/storage

		This recursively (-R) sets the user:group owners to yourusername:www-data in all files and folders from 

		app/storage onward.

3. Add the write permission for both you and the www-data group:

		sudo chmod -R ug+w app/storage

		This recursively (-R) adds (+) the write flag (w) to the user (u) and group (g) that own the files and 

		folders from app/storage onward.

4. Additionally, some suggest you may need to flush the application cache and regenerate the Laravel autoload files.

		php artisan cache:clear
	
		php artisan dump-autoload

5. Finally, you may want to regenerate Composer's autoload files.
	
		composer dump-autoload

##如果是团队协作通过GIT安装laravel要注意：
1. 安装扩展

		composer install

2. 环境配置
		
		Laravel 使用 PHP 扩展库 DotEnv 来实现这一功能，在新安装的 Laravel 中，根目录下有一个 .env.example 文件，
		如果 Laravel 是通过 Composer 安装的，那么该文件已经被重命名为 .env，否则的话你要自己手动重命名该文件。

3. 应用key
		
		接下来要做的事情就是将应用的 key（APP_KEY）设置为一个随机字符串，如果你是通过 Composer 或者 Laravel 安装器安装的话，
		该 key 的值已经通过 php artisan key:generate 命令生成好了。

4. 公共目录
		
		安装完 Laravel 后，需要将 Web 服务器的 document/web 根目录指向 Laravel 应用的 public 目录，
		该目录下的 index.php 文件作为前端控制器（单一入口），所有 HTTP 请求都会通过该文件进入应用。

5. 目录权限
		
		安装完 Laravel 后，需要配置一些目录的读写权限：
		storage 和 bootstrap/cache 目录对 Web 服务器指定的用户而言应该是可写的，否则 Laravel 应用将不能正常运行。
		如果你使用 Homestead 虚拟机做为开发环境，这些权限已经设置好了。

##mysql更新版本和密码：

	laradock 默认装的是 mysql 最新版本(mysql8)，
	
	PHP7.2链接会遇到错误  The server requested authentication method unknown to the client，
	
	所以记录一下更换低版本的 mysql 过程。

1. 修改 .env 文件
MYSQL_VERSION=5.7 # 默认为 latest

2. 停止所有容器
docker-compose down

3. 删除旧数据库数据
rm -rf ~/.laradock/data/mysql

4. 构建新 mysql
docker-compose build mysql

5. 重新创建容器
docker-compose up -d nginx mysql

6. 查看现有 mysql 版本
docker inspect laradock_mysql_1