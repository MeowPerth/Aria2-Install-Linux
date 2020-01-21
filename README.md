# Aria2-LNMP
本项目适用于Centos等Linux系统。
包含"aria2.sh"安装脚本，以及其他相关文件。<br>
“Original”文件夹是原本的脚本。
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
	若对应路径中不存在，则创建对应目录。
	PS:此目录下一班

* ### “提示：Aria2 DHT文件下载失败 !”
	在```/root/.aria/```目录下存入```dht.dat```（文件在在项目对应文件中）<br>
	若对应路径中不存在，则创建对应目录。

* ### “提示：Aria2服务 管理脚本下载失败 !”
	在```/etc/int.d/```目录下存入```aria2```（文件在在项目对应文件中）<br>
	若对应路径中不存在，则创建对应目录。

* ### “” 