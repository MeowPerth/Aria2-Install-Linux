Dim Msg, Style, Title, Response, Aria2State
'''''''''''''''''''''''''''''''''''�ж� Aria2 �Ƿ�����'''''''''''''''''''''''''''''''''''
if instr(1,CreateObject("wscript.shell").exec("tasklist").stdout.readall,"aria2c.exe")=0 then
  Aria2State = "***δ����***"
else
  Aria2State = "***������***"
end if
'''''''''''''''''''''''''''''''''''���öԻ����ڵ���Ϣ'''''''''''''''''''''''''''''''''''
Msg = "��ǰAria2����״̬��" & Aria2State &vbLf&vbLf& "��Ҫ���� Aria2 ��������" &vbLf& "��Ҫֹͣ Aria2 ��������" &vbLf& "�������κβ���������ȡ��"	'������Ϣ�ı�
Style = vbYesNoCancel + vbInformation + vbDefaultButton3	'����Ի�����ʽ
Title = "Aria2���׿��ƴ���"	'��������ı�
Response = MsgBox(Msg, Style, Title)
'''''''''''''''''''''''''''''''''''���ö�Ӧ�������¼�'''''''''''''''''''''''''''''''''''
If Response = vbYes Then	'�û����¡��ǡ���ť
  if instr(1,CreateObject("wscript.shell").exec("tasklist").stdout.readall,"aria2c.exe")=0 then
    CreateObject("WScript.Shell").Run ".\aria2c.exe --conf-path=aria2.conf",0 'ͨ�������ļ�����Aria2
    WScript.Echo("������Aria2�ɹ�������")
  else
    WScript.Echo("���棺Aria2����������") '��ʾAria2����������
  end if
ElseIf Response = vbNo Then	'�û����¡��񡱰�ť
  if instr(1,CreateObject("wscript.shell").exec("tasklist").stdout.readall,"aria2c.exe")=0 then
    WScript.Echo("���棺Aria2δ���У�")
  else
    CreateObject("wscript.shell").Run "taskkill /f /im aria2c.exe",0
    WScript.Echo("������Aria2�ѽ������С�")
  end if
Else	'�û����¡�ȡ������ť

End If