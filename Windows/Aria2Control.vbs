Dim Msg, Style, Title, Response, Aria2State
'''''''''''''''''''''''''''''''''''判断 Aria2 是否启动'''''''''''''''''''''''''''''''''''
if instr(1,CreateObject("wscript.shell").exec("tasklist").stdout.readall,"aria2c.exe")=0 then
  Aria2State = "***未启动***"
else
  Aria2State = "***已启动***"
end if
'''''''''''''''''''''''''''''''''''设置对话框内的信息'''''''''''''''''''''''''''''''''''
Msg = "当前Aria2运行状态：" & Aria2State &vbLf&vbLf& "需要启动 Aria2 ，请点击是" &vbLf& "需要停止 Aria2 ，请点击否" &vbLf& "无需做任何操作，请点击取消"	'定义消息文本
Style = vbYesNoCancel + vbInformation + vbDefaultButton3	'定义对话框样式
Title = "Aria2简易控制窗口"	'定义标题文本
Response = MsgBox(Msg, Style, Title)
'''''''''''''''''''''''''''''''''''设置对应按键的事件'''''''''''''''''''''''''''''''''''
If Response = vbYes Then	'用户按下“是”按钮
  if instr(1,CreateObject("wscript.shell").exec("tasklist").stdout.readall,"aria2c.exe")=0 then
    CreateObject("WScript.Shell").Run ".\aria2c.exe --conf-path=aria2.conf",0 '通过配置文件启动Aria2
    WScript.Echo("就绪：Aria2成功启动。")
  else
    WScript.Echo("警告：Aria2正在运行中") '提示Aria2正在运行中
  end if
ElseIf Response = vbNo Then	'用户按下“否”按钮
  if instr(1,CreateObject("wscript.shell").exec("tasklist").stdout.readall,"aria2c.exe")=0 then
    WScript.Echo("警告：Aria2未运行！")
  else
    CreateObject("wscript.shell").Run "taskkill /f /im aria2c.exe",0
    WScript.Echo("就绪：Aria2已结束运行。")
  end if
Else	'用户按下“取消”按钮

End If