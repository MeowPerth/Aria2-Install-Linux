# Aria2-LNMP
本项目适用于Centos等Linux系统。
包含"aria2.sh"安装脚本，以及其他相关文件。<br>
“Original”文件夹中是原本的脚本。
创建此项目目的在于存档记录部分已知问题的解决方式。

## 原版“aria2.sh”
获取原版安装脚本安装Aria2
```
wget -N --no-check-certificate https://raw.githubusercontent.com/MeowPerth/Aria2-LNMP/master/Original/aria2.sh && chmod +x aria2.sh && bash aria2.sh
```

## 已知问题
由于有国内长城的存在，可能会导致获取文件失败，而非大陆主机（网络）下基本不会出现此问题。
* ### “提示：Aria2 配置文件下载失败 !”
	在```/root/.aria/```目录下存入```aria2.conf```（文件在在项目对应文件中）<br>
	若对应路径中不存在，则创建对应目录。使用``` mkdir```命令创建文件夹。<br>
	PS:此目录下一般包含文件：<br>
	```aria2.conf``` Aria2配置文件<br>
	```aria2.log``` Aria2日志文件<br>
	```aria2.session``` Aria2任务记录文件<br>
	```dht.dat```Aria2 DHT文件<br>
	若无日志和任务记录文件，直接创建即可。使用```touch```命令创建二进制文件。

* ### “提示：Aria2 DHT文件下载失败 !”
	在```/root/.aria/```目录下存入```dht.dat```（文件在在项目对应文件中）<br>
	若对应路径中不存在，则创建对应目录。使用``` mkdir```命令创建文件夹。<br>
	PS:同上一个已知问题一样。

* ### “提示：Aria2服务 管理脚本下载失败 !”
	在```/etc/init.d/```目录下存入```aria2```（文件在在项目对应文件中）<br>
	若对应路径中不存在，则创建对应目录。使用``` mkdir```命令创建文件夹。<br>

## 相关扩展
若需要修改配置，可以手动修改配置，也可以运行此脚本```bash aria2.sh```,进行快捷修改。<br>
修改后切记重启Aria2。
* 启动Aria2	```/etc/init.d/aria2 start```<br>
* 停止Aria2	```/etc/init.d/aria2 stop```