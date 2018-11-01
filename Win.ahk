;==================================================
;◆Win+C：打开控制面板
#c::Run control
;==================================================
;◆Win+Q：计算机注销、关机或重启
#Q::
Gui Destroy
Gui, font, s12, 微软雅黑
Gui, Add, Text, x20 y10, 设置关机时间
Today_y = %A_YYYY%
Today_m = %A_MM%
Today_d = %A_DD%
Gui, Add, DateTime, x20 y40 w110 vDateTime_date Range%A_YYYY%%A_MM%%A_DD%
Gui, Add, DateTime, x150 y40 w70 vDateTime_time 1, HH:mm
Gui, font, s10, 微软雅黑
Gui, Add, Button, x130 y10 w90 h23, 清除定时设置
Gui, font, s14, 微软雅黑
Gui, Add, Button, x20 y80 w60 h40, 注销
Gui, Add, Button, Default x90 y80 w60 h40, 关机
Gui, Add, Button, x160 y80 w60 h40, 重启
Gui, Show, w240 h135, 希望计算机做什么？
return

Button清除定时设置:
SetTimer, TimingShutdown, Off
Gui +OwnDialogs
MsgBox, 0, 提示, 已清除之前设置的定时注销/关机/重启
return
;--------------------------------------------------
Button注销:
Gui, Submit
String_date = %DateTime_date%
String_time = %DateTime_time%
StringLeft, Shutdown_date_y, String_date, 4
StringTrimLeft, String_date, String_date, 4
StringLeft, Shutdown_date_m, String_date, 2
StringTrimLeft, String_date, String_date, 2
StringLeft, Shutdown_date_d, String_date, 2
StringTrimLeft, String_time, String_time, 8
StringLeft, Shutdown_date_h, String_time, 2
StringTrimLeft, String_time, String_time, 2
StringLeft, Shutdown_date_min, String_time, 2
Sleep_time := 100
Shutdown_tips := false
SetTimer, TimingLogoff, %Sleep_time%
return

TimingLogoff:
if (A_YYYY = Shutdown_date_y && A_MM = Shutdown_date_m && A_DD = Shutdown_date_d && A_Hour = Shutdown_date_h && A_Min = (Shutdown_date_min - 1))
{
	MsgBox, 305, 定时注销提示, 计算机将在1分钟后注销，点击`n“取消”按钮、按“Esc键”或`n关闭提示窗口以取消定时注销, 60
	IfMsgBox Timeout
	{}
	else IfMsgBox OK
	{}
	else
	{
		SetTimer, TimingLogoff, Off
		MsgBox, 0, 提示, 已取消定时注销
	}
}
else if (A_YYYY = Shutdown_date_y && A_MM = Shutdown_date_m && A_DD = Shutdown_date_d && A_Hour = Shutdown_date_h && A_Min = Shutdown_date_min)
{
	SetTimer, TimingLogoff, Off
	Gui Destroy
	Shutdown 0
	;MsgBox, 0, 提示, 正在注销
}
else
{
	Mod_y1_4 := Mod(A_YYYY, 4)
	Mod_y1_100 := Mod(A_YYYY, 100)
	Mod_y1_400 := Mod(A_YYYY, 400)
	if (((Mod_y1_4 = 0 && Mod_y1_100 != 0) || (Mod_y1_400 = 0)) && A_MM > 2)
		Day_1 := 1
	else
		Day_1 := 0
	if (A_MM = 2)
		Day_1 += 31
	else if (A_MM = 3)
		Day_1 += 59
	else if (A_MM = 4)
		Day_1 += 90
	else if (A_MM = 5)
		Day_1 += 120
	else if (A_MM = 6)
		Day_1 += 151
	else if (A_MM = 7)
		Day_1 += 181
	else if (A_MM = 8)
		Day_1 += 212
	else if (A_MM = 9)
		Day_1 += 243
	else if (A_MM = 10)
		Day_1 += 273
	else if (A_MM = 11)
		Day_1 += 304
	else if (A_MM = 12)
		Day_1 += 334
	Day_1 += A_DD
	Mod_y2_4 := Mod(Shutdown_date_y, 4)
	Mod_y2_100 := Mod(Shutdown_date_y, 100)
	Mod_y2_400 := Mod(Shutdown_date_y, 400)
	if (((Mod_y2_4 = 0 && Mod_y2_100 != 0) || (Mod_y2_400 = 0)) && Shutdown_date_m > 2)
		Day_2 := 1
	else
		Day_2 := 0
	if (Shutdown_date_m = 2)
		Day_2 += 31
	else if (Shutdown_date_m = 3)
		Day_2 += 59
	else if (Shutdown_date_m = 4)
		Day_2 += 90
	else if (Shutdown_date_m = 5)
		Day_2 += 120
	else if (Shutdown_date_m = 6)
		Day_2 += 151
	else if (Shutdown_date_m = 7)
		Day_2 += 181
	else if (Shutdown_date_m = 8)
		Day_2 += 212
	else if (Shutdown_date_m = 9)
		Day_2 += 243
	else if (Shutdown_date_m = 10)
		Day_2 += 273
	else if (Shutdown_date_m = 11)
		Day_2 += 304
	else if (Shutdown_date_m = 12)
		Day_2 += 334
	Day_2 += Shutdown_date_d
	
	if (Shutdown_date_y = A_YYYY)
	{
		Timer_d := Day_2 - Day_1
	}
	else if (Shutdown_date_y > A_YYYY)
	{
		Timer_y := Shutdown_date_y - A_YYYY
		Timer_d := Timer_y * 365 + Day_2 - Day_1
		Today_y = A_YYYY
		while (Today_y < Shutdown_date_y)
		{
			Mod_y3_4 := Mod(Today_y, 4)
			Mod_y3_100 := Mod(Today_y, 100)
			Mod_y3_400 := Mod(Today_y, 400)
			if ((Mod_y3_4 = 0 && Mod_y3_100 != 0) || (Mod_y3_400 = 0))
				Timer_d += 1
			Today_y += 1
		}
	}
	if (Shutdown_date_h >= A_Hour)
		Timer_h := Shutdown_date_h - A_Hour
	else
	{
		Timer_h := Shutdown_date_h - A_Hour + 24
		Timer_d -= 1
	}
	if (Shutdown_date_min >= A_Min)
		Timer_m := Shutdown_date_min - A_Min
	else
	{
		Timer_m := Shutdown_date_min - A_Min + 60
		Timer_h -= 1
		if (Timer_h < 0)
		{
			Timer_h += 24
			Timer_d -= 1
		}
	}
	if (!Shutdown_tips)
	{
		if (Timer_d < 0 && Shutdown_date_y = A_YYYY)
		{
			MsgBox, 16, 定时注销时间设置错误, 您设置的注销时间应不小于当前系统时间！`n请重新设置！
			Shutdown_tips := true
		}
		else
		{
			MsgBox, 64, 设置定时注销提示, 您设置的注销时间是%Shutdown_date_y%年%Shutdown_date_m%月%Shutdown_date_d%日%Shutdown_date_h%点%Shutdown_date_min%分`n计算机将在 %Timer_d% 天 %Timer_h% 小时 %Timer_m% 分钟后注销
			Shutdown_tips := true
		}
	}
	if (Timer_d > 1)
	{
		Sleep_time := 1000 * 60 * 60 * 12
		SetTimer, TimingLogoff, %Sleep_time%
	}
	else
	{
		if (Timer_h > 1)
		{
			Sleep_time := 1000 * 60 * 30
			SetTimer, TimingLogoff, %Sleep_time%
		}
		else
		{
			if (Timer_m > 2)
			{
				Sleep_time := 1000 * 60
				SetTimer, TimingLogoff, %Sleep_time%
			}
			else
			{
				Sleep_time := 250
				SetTimer, TimingLogoff, %Sleep_time%
			}
		}
	}
}
return
;--------------------------------------------------
Button关机:
Gui, Submit

/*
String = This is a test. 
StringLeft, OutputVar, String, 4  ; 保存字符串 "This" 到 OutputVar.
StringRight, OutputVar, String, 5  ; 保存字符串 "test." 到 OutputVar.

String = This is a test.
StringTrimLeft, OutputVar, String, 5  ; 保存字符串 "is a test." 到 OutputVar.
StringTrimRight, OutputVar, String, 6  ; 保存字符串 "This is a" 到 OutputVar.
*/

String_date = %DateTime_date%
String_time = %DateTime_time%

StringLeft, Shutdown_date_y, String_date, 4
StringTrimLeft, String_date, String_date, 4
StringLeft, Shutdown_date_m, String_date, 2
StringTrimLeft, String_date, String_date, 2
StringLeft, Shutdown_date_d, String_date, 2

StringTrimLeft, String_time, String_time, 8
StringLeft, Shutdown_date_h, String_time, 2
StringTrimLeft, String_time, String_time, 2
StringLeft, Shutdown_date_min, String_time, 2

Sleep_time := 100
Shutdown_tips := false
SetTimer, TimingShutdown, %Sleep_time%
return

TimingShutdown:
if (A_YYYY = Shutdown_date_y && A_MM = Shutdown_date_m && A_DD = Shutdown_date_d && A_Hour = Shutdown_date_h && A_Min = (Shutdown_date_min - 1))
{
	MsgBox, 305, 定时关机提示, 计算机将在1分钟后关机，点击`n“取消”按钮、按“Esc键”或`n关闭提示窗口以取消定时关机, 60
	IfMsgBox Timeout
	{}
	else IfMsgBox OK
	{}
	else
	{
		SetTimer, TimingShutdown, Off
		MsgBox, 0, 提示, 已取消定时关机
	}
}
else if (A_YYYY = Shutdown_date_y && A_MM = Shutdown_date_m && A_DD = Shutdown_date_d && A_Hour = Shutdown_date_h && A_Min = Shutdown_date_min)
{
	SetTimer, TimingShutdown, Off
	Gui Destroy
	Shutdown 1
	;MsgBox, 0, 提示, 正在关机
}
else
{
	Mod_y1_4 := Mod(A_YYYY, 4)
	Mod_y1_100 := Mod(A_YYYY, 100)
	Mod_y1_400 := Mod(A_YYYY, 400)
	if (((Mod_y1_4 = 0 && Mod_y1_100 != 0) || (Mod_y1_400 = 0)) && A_MM > 2)
		Day_1 := 1
	else
		Day_1 := 0
	if (A_MM = 2)
		Day_1 += 31
	else if (A_MM = 3)
		Day_1 += 59
	else if (A_MM = 4)
		Day_1 += 90
	else if (A_MM = 5)
		Day_1 += 120
	else if (A_MM = 6)
		Day_1 += 151
	else if (A_MM = 7)
		Day_1 += 181
	else if (A_MM = 8)
		Day_1 += 212
	else if (A_MM = 9)
		Day_1 += 243
	else if (A_MM = 10)
		Day_1 += 273
	else if (A_MM = 11)
		Day_1 += 304
	else if (A_MM = 12)
		Day_1 += 334
	Day_1 += A_DD
	
	Mod_y2_4 := Mod(Shutdown_date_y, 4)
	Mod_y2_100 := Mod(Shutdown_date_y, 100)
	Mod_y2_400 := Mod(Shutdown_date_y, 400)
	if (((Mod_y2_4 = 0 && Mod_y2_100 != 0) || (Mod_y2_400 = 0)) && Shutdown_date_m > 2)
		Day_2 := 1
	else
		Day_2 := 0
	if (Shutdown_date_m = 2)
		Day_2 += 31
	else if (Shutdown_date_m = 3)
		Day_2 += 59
	else if (Shutdown_date_m = 4)
		Day_2 += 90
	else if (Shutdown_date_m = 5)
		Day_2 += 120
	else if (Shutdown_date_m = 6)
		Day_2 += 151
	else if (Shutdown_date_m = 7)
		Day_2 += 181
	else if (Shutdown_date_m = 8)
		Day_2 += 212
	else if (Shutdown_date_m = 9)
		Day_2 += 243
	else if (Shutdown_date_m = 10)
		Day_2 += 273
	else if (Shutdown_date_m = 11)
		Day_2 += 304
	else if (Shutdown_date_m = 12)
		Day_2 += 334
	Day_2 += Shutdown_date_d
	
	if (Shutdown_date_y = A_YYYY)
	{
		Timer_d := Day_2 - Day_1
	}
	else if (Shutdown_date_y > A_YYYY)
	{
		Timer_y := Shutdown_date_y - A_YYYY
		Timer_d := Timer_y * 365 + Day_2 - Day_1
		Today_y = A_YYYY
		while (Today_y < Shutdown_date_y)
		{
			Mod_y3_4 := Mod(Today_y, 4)
			Mod_y3_100 := Mod(Today_y, 100)
			Mod_y3_400 := Mod(Today_y, 400)
			if ((Mod_y3_4 = 0 && Mod_y3_100 != 0) || (Mod_y3_400 = 0))
				Timer_d += 1
			Today_y += 1
		}
	}
	
	if (Shutdown_date_h >= A_Hour)
		Timer_h := Shutdown_date_h - A_Hour
	else
	{
		Timer_h := Shutdown_date_h - A_Hour + 24
		Timer_d -= 1
	}
	
	if (Shutdown_date_min >= A_Min)
		Timer_m := Shutdown_date_min - A_Min
	else
	{
		Timer_m := Shutdown_date_min - A_Min + 60
		Timer_h -= 1
		if (Timer_h < 0)
		{
			Timer_h += 24
			Timer_d -= 1
		}
	}
	
	if (!Shutdown_tips)
	{
		if (Timer_d < 0 && Shutdown_date_y = A_YYYY)
		{
			MsgBox, 16, 定时关机时间设置错误, 您设置的关机时间应不小于当前系统时间！`n请重新设置！
			Shutdown_tips := true
		}
		else
		{
			MsgBox, 64, 设置定时关机提示, 您设置的关机时间是%Shutdown_date_y%年%Shutdown_date_m%月%Shutdown_date_d%日%Shutdown_date_h%点%Shutdown_date_min%分`n计算机将在 %Timer_d% 天 %Timer_h% 小时 %Timer_m% 分钟后关机
			Shutdown_tips := true
		}
	}
	
	if (Timer_d > 1)
	{
		Sleep_time := 1000 * 60 * 60 * 12
		SetTimer, TimingShutdown, %Sleep_time%
	}
	else
	{
		if (Timer_h > 1)
		{
			Sleep_time := 1000 * 60 * 30
			SetTimer, TimingShutdown, %Sleep_time%
		}
		else
		{
			if (Timer_m > 2)
			{
				Sleep_time := 1000 * 60
				SetTimer, TimingShutdown, %Sleep_time%
			}
			else
			{
				Sleep_time := 250
				SetTimer, TimingShutdown, %Sleep_time%
			}
		}
	}
}
return
;--------------------------------------------------
Button重启:
Gui, Submit
String_date = %DateTime_date%
String_time = %DateTime_time%
StringLeft, Shutdown_date_y, String_date, 4
StringTrimLeft, String_date, String_date, 4
StringLeft, Shutdown_date_m, String_date, 2
StringTrimLeft, String_date, String_date, 2
StringLeft, Shutdown_date_d, String_date, 2
StringTrimLeft, String_time, String_time, 8
StringLeft, Shutdown_date_h, String_time, 2
StringTrimLeft, String_time, String_time, 2
StringLeft, Shutdown_date_min, String_time, 2
Sleep_time := 100
Shutdown_tips := false
SetTimer, TimingRestart, %Sleep_time%
return

TimingRestart:
if (A_YYYY = Shutdown_date_y && A_MM = Shutdown_date_m && A_DD = Shutdown_date_d && A_Hour = Shutdown_date_h && A_Min = (Shutdown_date_min - 1))
{
	MsgBox, 305, 定时重启提示, 计算机将在1分钟后重启，点击`n“取消”按钮、按“Esc键”或`n关闭提示窗口以取消定时重启, 60
	IfMsgBox Timeout
	{}
	else IfMsgBox OK
	{}
	else
	{
		SetTimer, TimingRestart, Off
		MsgBox, 0, 提示, 已取消定时重启
	}
}
else if (A_YYYY = Shutdown_date_y && A_MM = Shutdown_date_m && A_DD = Shutdown_date_d && A_Hour = Shutdown_date_h && A_Min = Shutdown_date_min)
{
	SetTimer, TimingRestart, Off
	Gui Destroy
	Shutdown 2
	;MsgBox, 0, 提示, 正在重启
}
else
{
	Mod_y1_4 := Mod(A_YYYY, 4)
	Mod_y1_100 := Mod(A_YYYY, 100)
	Mod_y1_400 := Mod(A_YYYY, 400)
	if (((Mod_y1_4 = 0 && Mod_y1_100 != 0) || (Mod_y1_400 = 0)) && A_MM > 2)
		Day_1 := 1
	else
		Day_1 := 0
	if (A_MM = 2)
		Day_1 += 31
	else if (A_MM = 3)
		Day_1 += 59
	else if (A_MM = 4)
		Day_1 += 90
	else if (A_MM = 5)
		Day_1 += 120
	else if (A_MM = 6)
		Day_1 += 151
	else if (A_MM = 7)
		Day_1 += 181
	else if (A_MM = 8)
		Day_1 += 212
	else if (A_MM = 9)
		Day_1 += 243
	else if (A_MM = 10)
		Day_1 += 273
	else if (A_MM = 11)
		Day_1 += 304
	else if (A_MM = 12)
		Day_1 += 334
	Day_1 += A_DD
	Mod_y2_4 := Mod(Shutdown_date_y, 4)
	Mod_y2_100 := Mod(Shutdown_date_y, 100)
	Mod_y2_400 := Mod(Shutdown_date_y, 400)
	if (((Mod_y2_4 = 0 && Mod_y2_100 != 0) || (Mod_y2_400 = 0)) && Shutdown_date_m > 2)
		Day_2 := 1
	else
		Day_2 := 0
	if (Shutdown_date_m = 2)
		Day_2 += 31
	else if (Shutdown_date_m = 3)
		Day_2 += 59
	else if (Shutdown_date_m = 4)
		Day_2 += 90
	else if (Shutdown_date_m = 5)
		Day_2 += 120
	else if (Shutdown_date_m = 6)
		Day_2 += 151
	else if (Shutdown_date_m = 7)
		Day_2 += 181
	else if (Shutdown_date_m = 8)
		Day_2 += 212
	else if (Shutdown_date_m = 9)
		Day_2 += 243
	else if (Shutdown_date_m = 10)
		Day_2 += 273
	else if (Shutdown_date_m = 11)
		Day_2 += 304
	else if (Shutdown_date_m = 12)
		Day_2 += 334
	Day_2 += Shutdown_date_d
	
	if (Shutdown_date_y = A_YYYY)
	{
		Timer_d := Day_2 - Day_1
	}
	else if (Shutdown_date_y > A_YYYY)
	{
		Timer_y := Shutdown_date_y - A_YYYY
		Timer_d := Timer_y * 365 + Day_2 - Day_1
		Today_y = A_YYYY
		while (Today_y < Shutdown_date_y)
		{
			Mod_y3_4 := Mod(Today_y, 4)
			Mod_y3_100 := Mod(Today_y, 100)
			Mod_y3_400 := Mod(Today_y, 400)
			if ((Mod_y3_4 = 0 && Mod_y3_100 != 0) || (Mod_y3_400 = 0))
				Timer_d += 1
			Today_y += 1
		}
	}
	if (Shutdown_date_h >= A_Hour)
		Timer_h := Shutdown_date_h - A_Hour
	else
	{
		Timer_h := Shutdown_date_h - A_Hour + 24
		Timer_d -= 1
	}
	if (Shutdown_date_min >= A_Min)
		Timer_m := Shutdown_date_min - A_Min
	else
	{
		Timer_m := Shutdown_date_min - A_Min + 60
		Timer_h -= 1
		if (Timer_h < 0)
		{
			Timer_h += 24
			Timer_d -= 1
		}
	}
	if (!Shutdown_tips)
	{
		if (Timer_d < 0 && Shutdown_date_y = A_YYYY)
		{
			MsgBox, 16, 定时重启时间设置错误, 您设置的重启时间应不小于当前系统时间！`n请重新设置！
			Shutdown_tips := true
		}
		else
		{
			MsgBox, 64, 设置定时重启提示, 您设置的重启时间是%Shutdown_date_y%年%Shutdown_date_m%月%Shutdown_date_d%日%Shutdown_date_h%点%Shutdown_date_min%分`n计算机将在 %Timer_d% 天 %Timer_h% 小时 %Timer_m% 分钟后重启
			Shutdown_tips := true
		}
	}
	if (Timer_d > 1)
	{
		Sleep_time := 1000 * 60 * 60 * 12
		SetTimer, TimingRestart, %Sleep_time%
	}
	else
	{
		if (Timer_h > 1)
		{
			Sleep_time := 1000 * 60 * 30
			SetTimer, TimingRestart, %Sleep_time%
		}
		else
		{
			if (Timer_m > 2)
			{
				Sleep_time := 1000 * 60
				SetTimer, TimingRestart, %Sleep_time%
			}
			else
			{
				Sleep_time := 250
				SetTimer, TimingRestart, %Sleep_time%
			}
		}
	}
}
return
;==================================================
;◆Ctrl+Win+D：打开回收站
^#D::Run ::{645ff040-5081-101b-9f08-00aa002f954e}
;==================================================
;◆Shift+Win+D：清空回收站（有二次确认窗口提示）
+#D::
Gui Destroy
Gui, Show, w230 h210, 清空回收站？
Gui, font, s10
Gui -MinimizeBox -MaximizeBox
Gui, Add, Button, Default x10 y10 w100 h30, 确定(Enter)
Gui, Add, Button, x120 y10 w100 h30, 取消(Esc)
Gui, Add, Button, x45 y50 w140 h30, 检测回收站文件大小
Gui, Add, Button, x10 y90 w100 h30, 清空C盘回收站
Gui, Add, Button, x120 y90 w100 h30, 清空D盘回收站
Gui, Add, Button, x10 y130 w100 h30, 清空E盘回收站
Gui, Add, Button, x120 y130 w100 h30, 清空F盘回收站
Gui, Add, Button, x10 y170 w100 h30, 清空G盘回收站
Gui, Add, Button, x120 y170 w100 h30, 清空H盘回收站
Send {Tab}
return

Button确定(Enter):
FileRecycleEmpty
Gui Destroy
return

Button取消(Esc):
Gui Destroy
return

Button检测回收站文件大小:
SetBatchLines, -1
FolderSize_C = 0
Loop, C:\$RECYCLE.BIN\*.*, , 1
	FolderSize_C += %A_LoopFileSize%
FolderSize_D = 0
Loop, D:\$RECYCLE.BIN\*.*, , 1
	FolderSize_D += %A_LoopFileSize%
FolderSize_E = 0
Loop, E:\$RECYCLE.BIN\*.*, , 1
	FolderSize_E += %A_LoopFileSize%
FolderSize_F = 0
Loop, F:\$RECYCLE.BIN\*.*, , 1
	FolderSize_F += %A_LoopFileSize%
FolderSize_G = 0
Loop, G:\$RECYCLE.BIN\*.*, , 1
	FolderSize_G += %A_LoopFileSize%
FolderSize_H = 0
Loop, H:\$RECYCLE.BIN\*.*, , 1
	FolderSize_H += %A_LoopFileSize%
FolderSize_ALL := FolderSize_C + FolderSize_D + FolderSize_E + FolderSize_F + FolderSize_G + FolderSize_H
FolderSize_C := FolderSize_C / 1024 / 1024
FolderSize_D := FolderSize_D / 1024 / 1024
FolderSize_E := FolderSize_E / 1024 / 1024
FolderSize_F := FolderSize_F / 1024 / 1024
FolderSize_G := FolderSize_G / 1024 / 1024
FolderSize_H := FolderSize_H / 1024 / 1024
FolderSize_ALL := FolderSize_ALL / 1024 / 1024
FolderSize_C := Round(FolderSize_C, 2)
FolderSize_D := Round(FolderSize_D, 2)
FolderSize_E := Round(FolderSize_E, 2)
FolderSize_F := Round(FolderSize_F, 2)
FolderSize_G := Round(FolderSize_G, 2)
FolderSize_H := Round(FolderSize_H, 2)
FolderSize_ALL := Round(FolderSize_ALL, 2)
Gui +OwnDialogs
MsgBox, 0, 回收站文件大小, C盘：%FolderSize_C% MB`nD盘：%FolderSize_D% MB`nE盘：%FolderSize_E% MB`nF盘：%FolderSize_F% MB`nG盘：%FolderSize_G% MB`nH盘：%FolderSize_H% MB`n总大小：%FolderSize_ALL% MB
return

Button清空C盘回收站:
FileRecycleEmpty, C:\
MsgBox, 0, 提示, C盘回收站已清空
return

Button清空D盘回收站:
FileRecycleEmpty, D:\
MsgBox, 0, 提示, D盘回收站已清空
return

Button清空E盘回收站:
FileRecycleEmpty, E:\
MsgBox, 0, 提示, E盘回收站已清空
return

Button清空F盘回收站:
FileRecycleEmpty, F:\
MsgBox, 0, 提示, F盘回收站已清空
return

Button清空G盘回收站:
FileRecycleEmpty, G:\
MsgBox, 0, 提示, G盘回收站已清空
return

Button清空H盘回收站:
FileRecycleEmpty, H:\
MsgBox, 0, 提示, H盘回收站已清空
return
;==================================================