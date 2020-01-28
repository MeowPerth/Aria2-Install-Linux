# Aria2-Install-Linux
本项目适用于Centos等Linux系统。（文件在Linux文件夹中。）
包含"aria2.sh"安装脚本，以及其他相关文件。<br>
创建此项目目的在于存档记录部分已知问题的解决方式。

## 原版“aria2.sh”
获取原版安装脚本安装Aria2
```
wget -N --no-check-certificate https://https://raw.githubusercontent.com/MeowPerth/Aria2-Install/master/Linux/aria2.sh && chmod +x aria2.sh && bash aria2.sh
```

## 已知问题
由于有国内长城的存在，可能会导致获取文件失败，而非大陆主机（网络）下基本不会出现此问题。
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
若需要修改配置，可以手动修改配置，也可以运行此脚本```bash aria2.sh```,进行快捷修改。<br>
修改后切记重启Aria2。
> * 启动Aria2	```/etc/init.d/aria2 start```<br>
> * 停止Aria2	```/etc/init.d/aria2 stop```

----
----

# Aria2-Install-Windows
本项目适用于Windows32位或64位系统。（文件在Windows文件夹中）
包含：`aria2.conf` 配置文件；`Aria2Control.vbs` Aria2简易控制台；以及Aria2相关文件。<br>
创建此项目目的在于存档记录部分已知问题的解决方式。

## Aria2简易控制台
`Aria2Control.vbs` 是本人利用VBS编写的简易窗体程序。实现对Aria2状态检测、启动、停止。

## 已知问题
* ### 缺少 `aria2.conf` 、 `aria2.log` 、 `aria2.session` 和程序启动文件。
> 原本的Aria2程序中是没有这些文件的，在Aria2 Windows版根目录下创建对应文件。<br>
> 新建TXT更名为 `aria2.log` 、 `aria2.session` 。<br>
> 配置文件可以使用本项目中的文件 `aria2.conf` 。<br>
> 启动文件可以使用本项目中的文件 `Aria2Control.vbs` 。<br>
* ### 点击“是”后报错，启动失败，提示缺少配置文件。
> 检查程序根目录下是否存在 `aria2.conf` 配置文件，并重新启动程序。
* ### 点击“否”后报错，停止失败。
> 再次尝试，若还是不行请在任务管理器中手动结束 `aria2c.exe` 。

## 相关扩展及注意事项
> ### 相关扩展
> * 修改下载路径：在 `aria2.conf` 配置文件中修改，重启程序后即可生效；
> * 配置开机启动：创建VBS控制台程序的快捷方式，放入```C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup```
> * VBS程序扩展：
>> ①启动命令：```CreateObject("WScript.Shell").Run ".\aria2c.exe --conf-path=aria2.conf",0```<br>
>> ②停止命令：```CreateObject("wscript.shell").Run "taskkill /f /im aria2c.exe",0```
> ### 注意事项
> * 切记在启动程序前确保根目录下已有配置文件，否则程序可能无法正常启动。
