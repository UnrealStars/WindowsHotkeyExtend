;==================================================
;◆右Alt+0：用Notepad++打开当前脚本
ralt & 0::
p_notepad = E:\Notepad++\notepad++.exe
p_myhotkey = F:\小工具\AutoHotkey\WindowsHotkeyExtend\Test.ahk
Run %p_notepad% %p_myhotkey%
return
;==================================================
;◆右Alt+9：刷新脚本
ralt & 9::
tooltip, 刷新脚本, A_ScreenWidth / 2 - 30, A_ScreenHeight / 2 - 10
sleep, 1000
tooltip
Reload
return
;==================================================
;◆右Alt+8：打开帮助文档中文版
ralt & 8::
Run F:\小工具\AutoHotkey\AutoHotkey_cn.chm
return
;==================================================
;◆右Alt+7：打开帮助文档英文版
ralt & 7::
Run F:\小工具\AutoHotkey\AutoHotkey.chm
return
;==================================================