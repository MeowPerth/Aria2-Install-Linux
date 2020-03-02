# Aria2-Install-Linux
本项目适用于Centos等Linux系统。
包含"aria2.sh"安装脚本，以及其他相关文件。<br>
此脚本在原有脚本的基础上进行修改，鸣谢 P3TERX 。如有不足之处还望指出。<br>
新增了本地安装、更新等功能，旨在解决大陆地区从Git上拉取代码缓慢或是无法拉取文件，导致无法正常安装的问题。<br>
便于无法进行在线安装的情况下可以选择使用手动安装。

## 脚本“aria2.sh”--小H酱修改版
获取小H酱修改版 Aria2 安装脚本
```
wget -N --no-check-certificate https://raw.githubusercontent.com/MeowPerth/Aria2-Install-Linux/master/aria2.sh && chmod +x aria2.sh && bash aria2.sh
```
## 更新情况

> ### V1.0版本
>> * 删除：
>>>  1.删除 脚本更新功能。<br>
>>>  2.删除 多于脚本文件。<br>
>>>  3.删除 配置重置功能。
>> * 新增：
>>>  1.新增 帮助&说明功能。<br>
>>>  2.新增 本地安装功能。<br>
>>>  3.新增 本地更新功能。
>> * 修改：
>>>  1.修改 在线安装使用的文件路径。<br>
>>>  2.完善 部分脚本代码。

## 相关问题
由于有国内长城的存在，使用在线安装可能会导致获取文件失败，而非大陆主机（网络）下基本不会出现此问题。
* ### “提示：Aria2 配置文件下载失败 !”
> 在```/root/.aria/```目录下存入```aria2.conf```（文件在在项目对应文件中）<br>
> 若对应路径中不存在，则创建对应目录。使用``` mkdir```命令创建文件夹。<br>
> PS:此目录下一般包含文件：<br>
> ```aria2.conf``` Aria2配置文件<br>
> ```aria2.log``` Aria2日志文件<br>
> ```aria2.session``` Aria2任务记录文件<br>
> ```dht.dat```Aria2 DHT文件<br>
> 若无日志和任务记录文件，直接创建即可。使用```touch```命令创建二进制文件。

* ### “提示：Aria2 DHT文件下载失败 !”
> 在```/root/.aria2/```目录下存入```dht.dat```（文件在在项目对应文件中）<br>
> 若对应路径中不存在，则创建对应目录。使用``` mkdir```命令创建文件夹。<br>
> PS:同上一个已知问题一样。

* ### “提示：Aria2服务 管理脚本下载失败 !”
> 在```/etc/init.d/```目录下存入```aria2```（文件在在项目对应文件中）<br>
> 若对应路径中不存在，则创建对应目录。使用``` mkdir```命令创建文件夹。<br>

## 相关扩展
Aria2下载完成后文件所属权是 `root` ，因此，在使用FTP对下载文件进行操作是可能会出现操作权限等问题。<br>
此时可用到 `aria2.conf` 中的参数 `on-download-complete=` ,此参数是当文件下载完成后自行对应脚本。<br>
参数后面接对应需要执行的脚本路径即可， `$3` 传参下载路径，更多此参数的用法请自行查阅。<br>
> * 脚本示例：<br>
>> 脚本名：“cp.sh” <br>
>> #!/bin/bash<br>
>> path=$3<br>
>> chown -R www:www /FTP/<br>
> * 参数示例：	```on-download-complete=/root/.aria2/cp.sh```<br>

进行本地安装，请先确认 Aria2 主程序及配置文件的压缩包在`/root`目录下。<br>
若需要修改配置，可以手动修改配置，也可以运行此脚本```bash aria2.sh```,进行快捷修改。<br>
修改后切记重启Aria2。
> * 启动Aria2	```/etc/init.d/aria2 start```<br>
> * 停止Aria2	```/etc/init.d/aria2 stop```

## 友情链接
* Aria2 Windows桌面安装：```https://github.com/MeowPerth/Aria2-Install-Windows```
* Aria2 P3TERX 完美安装脚本：```https://github.com/P3TERX/aria2.sh```
----
----
