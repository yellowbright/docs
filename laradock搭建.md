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