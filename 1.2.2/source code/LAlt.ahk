;==================================================
;快速替换模板
/*
<!xxx::
IfExist, %A_ScriptDir%\Shortcut\xxx.lnk
Run %A_ScriptDir%\Shortcut\xxx.lnk
IfNotExist, %A_ScriptDir%\Shortcut\xxx.lnk
{
	IfExist, %A_ScriptDir%\Shortcut\xxx.txt
	{
		FileRead, URL_xxx, %A_ScriptDir%\Shortcut\xxx.txt
		Run %URL_xxx%
	}
	else
	{
		MsgBox, 0, 热键“Alt+xxx”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“%A_ScriptDir%\Shortcut\”路径下`n创建名称为“xxx”的快捷方式（xxx.lnk）`n2）如需打开网页请在“%A_ScriptDir%\Shortcut\”路径下创建名`n称为“xxx”的文本文档（xxx.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“xxx.lnk”和“xxx.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;--------------------------------------------------
<!xxx::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\xxx.lnk
		Run %A_ScriptDir%\Shortcut\xxx.lnk
	else IfExist, %A_ScriptDir%\Shortcut\xxx.txt
	{
		FileRead, URL_xxx, %A_ScriptDir%\Shortcut\xxx.txt
		Run %URL_xxx%
	}
}
return
*/
;==================================================
GetCtrlShiftState()
{
	GetKeyState, state_c, Ctrl, P
	GetKeyState, state_s, Shift, P
	if (state_c = "U" && state_s = "U")
		return true
	else
		return false
}
;==================================================
<!A::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\A.lnk
		Run %A_ScriptDir%\Shortcut\A.lnk
	else IfExist, %A_ScriptDir%\Shortcut\A.txt
	{
		FileRead, URL_A, %A_ScriptDir%\Shortcut\A.txt
		Run %URL_A%
	}
}
return
;==================================================
<!B::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\B.lnk
		Run %A_ScriptDir%\Shortcut\B.lnk
	else IfExist, %A_ScriptDir%\Shortcut\B.txt
	{
		FileRead, URL_B, %A_ScriptDir%\Shortcut\B.txt
		Run %URL_B%
	}
}
return
;==================================================
<!C::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\C.lnk
		Run %A_ScriptDir%\Shortcut\C.lnk
	else IfExist, %A_ScriptDir%\Shortcut\C.txt
	{
		FileRead, URL_C, %A_ScriptDir%\Shortcut\C.txt
		Run %URL_C%
	}
}
return
;==================================================
<!D::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\D.lnk
		Run %A_ScriptDir%\Shortcut\D.lnk
	else IfExist, %A_ScriptDir%\Shortcut\D.txt
	{
		FileRead, URL_D, %A_ScriptDir%\Shortcut\D.txt
		Run %URL_D%
	}
}
return
;==================================================
<!E::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\E.lnk
		Run %A_ScriptDir%\Shortcut\E.lnk
	else IfExist, %A_ScriptDir%\Shortcut\E.txt
	{
		FileRead, URL_E, %A_ScriptDir%\Shortcut\E.txt
		Run %URL_E%
	}
}
return
;==================================================
<!F::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\F.lnk
		Run %A_ScriptDir%\Shortcut\F.lnk
	else IfExist, %A_ScriptDir%\Shortcut\F.txt
	{
		FileRead, URL_F, %A_ScriptDir%\Shortcut\F.txt
		Run %URL_F%
	}
}
return
;==================================================
<!G::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\G.lnk
		Run %A_ScriptDir%\Shortcut\G.lnk
	else IfExist, %A_ScriptDir%\Shortcut\G.txt
	{
		FileRead, URL_G, %A_ScriptDir%\Shortcut\G.txt
		Run %URL_G%
	}
}
return
;==================================================
<!H::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\H.lnk
		Run %A_ScriptDir%\Shortcut\H.lnk
	else IfExist, %A_ScriptDir%\Shortcut\H.txt
	{
		FileRead, URL_H, %A_ScriptDir%\Shortcut\H.txt
		Run %URL_H%
	}
}
return
;==================================================
<!I::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\I.lnk
		Run %A_ScriptDir%\Shortcut\I.lnk
	else IfExist, %A_ScriptDir%\Shortcut\I.txt
	{
		FileRead, URL_I, %A_ScriptDir%\Shortcut\I.txt
		Run %URL_I%
	}
}
return
;==================================================
<!J::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\J.lnk
		Run %A_ScriptDir%\Shortcut\J.lnk
	else IfExist, %A_ScriptDir%\Shortcut\J.txt
	{
		FileRead, URL_J, %A_ScriptDir%\Shortcut\J.txt
		Run %URL_J%
	}
}
return
;==================================================
<!K::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\K.lnk
		Run %A_ScriptDir%\Shortcut\K.lnk
	else IfExist, %A_ScriptDir%\Shortcut\K.txt
	{
		FileRead, URL_K, %A_ScriptDir%\Shortcut\K.txt
		Run %URL_K%
	}
}
return
;==================================================
<!L::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\L.lnk
		Run %A_ScriptDir%\Shortcut\L.lnk
	else IfExist, %A_ScriptDir%\Shortcut\L.txt
	{
		FileRead, URL_L, %A_ScriptDir%\Shortcut\L.txt
		Run %URL_L%
	}
}
return
;==================================================
<!M::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\M.lnk
		Run %A_ScriptDir%\Shortcut\M.lnk
	else IfExist, %A_ScriptDir%\Shortcut\M.txt
	{
		FileRead, URL_M, %A_ScriptDir%\Shortcut\M.txt
		Run %URL_M%
	}
}
return
;==================================================
<!N::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\N.lnk
		Run %A_ScriptDir%\Shortcut\N.lnk
	else IfExist, %A_ScriptDir%\Shortcut\N.txt
	{
		FileRead, URL_N, %A_ScriptDir%\Shortcut\N.txt
		Run %URL_N%
	}
}
return
;==================================================
<!O::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\O.lnk
		Run %A_ScriptDir%\Shortcut\O.lnk
	else IfExist, %A_ScriptDir%\Shortcut\O.txt
	{
		FileRead, URL_O, %A_ScriptDir%\Shortcut\O.txt
		Run %URL_O%
	}
}
return
;==================================================
<!P::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\P.lnk
		Run %A_ScriptDir%\Shortcut\P.lnk
	else IfExist, %A_ScriptDir%\Shortcut\P.txt
	{
		FileRead, URL_P, %A_ScriptDir%\Shortcut\P.txt
		Run %URL_P%
	}
}
return
;==================================================
;◆左Alt+Q：关闭退出当前程序
<!Q::
Send !{F4}
return
;==================================================
<!R::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\R.lnk
		Run %A_ScriptDir%\Shortcut\R.lnk
	else IfExist, %A_ScriptDir%\Shortcut\R.txt
	{
		FileRead, URL_R, %A_ScriptDir%\Shortcut\R.txt
		Run %URL_R%
	}
}
return
;==================================================
<!S::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\S.lnk
		Run %A_ScriptDir%\Shortcut\S.lnk
	else IfExist, %A_ScriptDir%\Shortcut\S.txt
	{
		FileRead, URL_S, %A_ScriptDir%\Shortcut\S.txt
		Run %URL_S%
	}
}
return
;==================================================
<!T::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\T.lnk
		Run %A_ScriptDir%\Shortcut\T.lnk
	else IfExist, %A_ScriptDir%\Shortcut\T.txt
	{
		FileRead, URL_T, %A_ScriptDir%\Shortcut\T.txt
		Run %URL_T%
	}
}
return
;==================================================
<!U::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\U.lnk
		Run %A_ScriptDir%\Shortcut\U.lnk
	else IfExist, %A_ScriptDir%\Shortcut\U.txt
	{
		FileRead, URL_U, %A_ScriptDir%\Shortcut\U.txt
		Run %URL_U%
	}
}
return
;==================================================
<!V::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\V.lnk
		Run %A_ScriptDir%\Shortcut\V.lnk
	else IfExist, %A_ScriptDir%\Shortcut\V.txt
	{
		FileRead, URL_V, %A_ScriptDir%\Shortcut\V.txt
		Run %URL_V%
	}
}
return
;==================================================
<!W::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\W.lnk
		Run %A_ScriptDir%\Shortcut\W.lnk
	else IfExist, %A_ScriptDir%\Shortcut\W.txt
	{
		FileRead, URL_W, %A_ScriptDir%\Shortcut\W.txt
		Run %URL_W%
	}
}
return
;==================================================
<!X::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\X.lnk
		Run %A_ScriptDir%\Shortcut\X.lnk
	else IfExist, %A_ScriptDir%\Shortcut\X.txt
	{
		FileRead, URL_X, %A_ScriptDir%\Shortcut\X.txt
		Run %URL_X%
	}
}
return
;==================================================
<!Y::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\Y.lnk
		Run %A_ScriptDir%\Shortcut\Y.lnk
	else IfExist, %A_ScriptDir%\Shortcut\Y.txt
	{
		FileRead, URL_Y, %A_ScriptDir%\Shortcut\Y.txt
		Run %URL_Y%
	}
}
return
;==================================================
<!Z::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\Z.lnk
		Run %A_ScriptDir%\Shortcut\Z.lnk
	else IfExist, %A_ScriptDir%\Shortcut\Z.txt
	{
		FileRead, URL_Z, %A_ScriptDir%\Shortcut\Z.txt
		Run %URL_Z%
	}
}
return
;==================================================
!0::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut
		Run %A_ScriptDir%\Shortcut
	else
	{
		MsgBox, 1, Shortcut文件夹不存在, 是否创建并打开？
		IfMsgBox, OK
		{
			FileCreateDir, %A_ScriptDir%\Shortcut
			Run %A_ScriptDir%\Shortcut
		}
	}
}
return
;==================================================
!1::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\1.lnk
		Run %A_ScriptDir%\Shortcut\1.lnk
	else IfExist, %A_ScriptDir%\Shortcut\1.txt
	{
		FileRead, URL_1, %A_ScriptDir%\Shortcut\1.txt
		Run %URL_1%
	}
}
return
;==================================================
!2::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\2.lnk
		Run %A_ScriptDir%\Shortcut\2.lnk
	else IfExist, %A_ScriptDir%\Shortcut\2.txt
	{
		FileRead, URL_2, %A_ScriptDir%\Shortcut\2.txt
		Run %URL_2%
	}
}
return
;==================================================
!3::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\3.lnk
		Run %A_ScriptDir%\Shortcut\3.lnk
	else IfExist, %A_ScriptDir%\Shortcut\3.txt
	{
		FileRead, URL_3, %A_ScriptDir%\Shortcut\3.txt
		Run %URL_3%
	}
}
return
;==================================================
!4::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\4.lnk
		Run %A_ScriptDir%\Shortcut\4.lnk
	else IfExist, %A_ScriptDir%\Shortcut\4.txt
	{
		FileRead, URL_4, %A_ScriptDir%\Shortcut\4.txt
		Run %URL_4%
	}
}
return
;==================================================
!5::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\5.lnk
		Run %A_ScriptDir%\Shortcut\5.lnk
	else IfExist, %A_ScriptDir%\Shortcut\5.txt
	{
		FileRead, URL_5, %A_ScriptDir%\Shortcut\5.txt
		Run %URL_5%
	}
}
return
;==================================================
!6::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\6.lnk
		Run %A_ScriptDir%\Shortcut\6.lnk
	else IfExist, %A_ScriptDir%\Shortcut\6.txt
	{
		FileRead, URL_6, %A_ScriptDir%\Shortcut\6.txt
		Run %URL_6%
	}
}
return
;==================================================
!7::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\7.lnk
		Run %A_ScriptDir%\Shortcut\7.lnk
	else IfExist, %A_ScriptDir%\Shortcut\7.txt
	{
		FileRead, URL_7, %A_ScriptDir%\Shortcut\7.txt
		Run %URL_7%
	}
}
return
;==================================================
!8::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\8.lnk
		Run %A_ScriptDir%\Shortcut\8.lnk
	else IfExist, %A_ScriptDir%\Shortcut\8.txt
	{
		FileRead, URL_8, %A_ScriptDir%\Shortcut\8.txt
		Run %URL_8%
	}
}
return
;==================================================
!9::
if GetCtrlShiftState()
{
	IfExist, %A_ScriptDir%\Shortcut\9.lnk
		Run %A_ScriptDir%\Shortcut\9.lnk
	else IfExist, %A_ScriptDir%\Shortcut\9.txt
	{
		FileRead, URL_9, %A_ScriptDir%\Shortcut\9.txt
		Run %URL_9%
	}
}
return
;==================================================