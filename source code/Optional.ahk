;==================================================
;屏蔽Windows键
~LWin::
IniRead, i_windowsKey, %A_ScriptDir%\config.ini, General, IsShieldingWindowskey
if (i_windowsKey = 1)
{
	Send {Blind}{vk07}
	return
}
;==================================================
;屏蔽应用键（菜单键）
AppsKey::
IniRead, i_appsKey, %A_ScriptDir%\config.ini, General, IsShieldingAppsKey
if (i_appsKey = 1)
{
	return
}
else
{
	Send {AppsKey}
	return
}
;==================================================
;PS、AI中禁用Alt键选中菜单栏
#IfWinActive, A
~LAlt up::
IniRead, i_altKey, %A_ScriptDir%\config.ini, General, IsAltKeySelectOption
if (i_altKey = 1)
{
	Send {Alt}
}
return
#IfWinActive
;==================================================