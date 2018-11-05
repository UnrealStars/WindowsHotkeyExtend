;==================================================
;快速替换模板
/*
<!xxx::
IfExist, D:\Shortcut\xxx.lnk
Run D:\Shortcut\xxx.lnk
IfNotExist, D:\Shortcut\xxx.lnk
{
	IfExist, D:\Shortcut\xxx.txt
	{
		FileRead, URL_xxx, D:\Shortcut\xxx.txt
		Run %URL_xxx%
	}
	else
	{
		MsgBox, 0, 热键“Alt+xxx”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“xxx”的快捷方式（xxx.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“xxx”的文本文档（xxx.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“xxx.lnk”和“xxx.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;--------------------------------------------------
<!xxx::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\xxx.lnk
		Run D:\Shortcut\xxx.lnk
	else IfExist, D:\Shortcut\xxx.txt
	{
		FileRead, URL_xxx, D:\Shortcut\xxx.txt
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
	IfExist, D:\Shortcut\A.lnk
		Run D:\Shortcut\A.lnk
	else IfExist, D:\Shortcut\A.txt
	{
		FileRead, URL_A, D:\Shortcut\A.txt
		Run %URL_A%
	}
}
return
;==================================================
<!B::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\B.lnk
		Run D:\Shortcut\B.lnk
	else IfExist, D:\Shortcut\B.txt
	{
		FileRead, URL_B, D:\Shortcut\B.txt
		Run %URL_B%
	}
}
return
;==================================================
<!C::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\C.lnk
		Run D:\Shortcut\C.lnk
	else IfExist, D:\Shortcut\C.txt
	{
		FileRead, URL_C, D:\Shortcut\C.txt
		Run %URL_C%
	}
}
return
;==================================================
<!D::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\D.lnk
		Run D:\Shortcut\D.lnk
	else IfExist, D:\Shortcut\D.txt
	{
		FileRead, URL_D, D:\Shortcut\D.txt
		Run %URL_D%
	}
}
return
;==================================================
<!E::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\E.lnk
		Run D:\Shortcut\E.lnk
	else IfExist, D:\Shortcut\E.txt
	{
		FileRead, URL_E, D:\Shortcut\E.txt
		Run %URL_E%
	}
}
return
;==================================================
<!F::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\F.lnk
		Run D:\Shortcut\F.lnk
	else IfExist, D:\Shortcut\F.txt
	{
		FileRead, URL_F, D:\Shortcut\F.txt
		Run %URL_F%
	}
}
return
;==================================================
<!G::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\G.lnk
		Run D:\Shortcut\G.lnk
	else IfExist, D:\Shortcut\G.txt
	{
		FileRead, URL_G, D:\Shortcut\G.txt
		Run %URL_G%
	}
}
return
;==================================================
<!H::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\H.lnk
		Run D:\Shortcut\H.lnk
	else IfExist, D:\Shortcut\H.txt
	{
		FileRead, URL_H, D:\Shortcut\H.txt
		Run %URL_H%
	}
}
return
;==================================================
<!I::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\I.lnk
		Run D:\Shortcut\I.lnk
	else IfExist, D:\Shortcut\I.txt
	{
		FileRead, URL_I, D:\Shortcut\I.txt
		Run %URL_I%
	}
}
return
;==================================================
<!J::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\J.lnk
		Run D:\Shortcut\J.lnk
	else IfExist, D:\Shortcut\J.txt
	{
		FileRead, URL_J, D:\Shortcut\J.txt
		Run %URL_J%
	}
}
return
;==================================================
<!K::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\K.lnk
		Run D:\Shortcut\K.lnk
	else IfExist, D:\Shortcut\K.txt
	{
		FileRead, URL_K, D:\Shortcut\K.txt
		Run %URL_K%
	}
}
return
;==================================================
<!L::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\L.lnk
		Run D:\Shortcut\L.lnk
	else IfExist, D:\Shortcut\L.txt
	{
		FileRead, URL_L, D:\Shortcut\L.txt
		Run %URL_L%
	}
}
return
;==================================================
<!M::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\M.lnk
		Run D:\Shortcut\M.lnk
	else IfExist, D:\Shortcut\M.txt
	{
		FileRead, URL_M, D:\Shortcut\M.txt
		Run %URL_M%
	}
}
return
;==================================================
<!N::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\N.lnk
		Run D:\Shortcut\N.lnk
	else IfExist, D:\Shortcut\N.txt
	{
		FileRead, URL_N, D:\Shortcut\N.txt
		Run %URL_N%
	}
}
return
;==================================================
<!O::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\O.lnk
		Run D:\Shortcut\O.lnk
	else IfExist, D:\Shortcut\O.txt
	{
		FileRead, URL_O, D:\Shortcut\O.txt
		Run %URL_O%
	}
}
return
;==================================================
<!P::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\P.lnk
		Run D:\Shortcut\P.lnk
	else IfExist, D:\Shortcut\P.txt
	{
		FileRead, URL_P, D:\Shortcut\P.txt
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
	IfExist, D:\Shortcut\R.lnk
		Run D:\Shortcut\R.lnk
	else IfExist, D:\Shortcut\R.txt
	{
		FileRead, URL_R, D:\Shortcut\R.txt
		Run %URL_R%
	}
}
return
;==================================================
<!S::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\S.lnk
		Run D:\Shortcut\S.lnk
	else IfExist, D:\Shortcut\S.txt
	{
		FileRead, URL_S, D:\Shortcut\S.txt
		Run %URL_S%
	}
}
return
;==================================================
<!T::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\T.lnk
		Run D:\Shortcut\T.lnk
	else IfExist, D:\Shortcut\T.txt
	{
		FileRead, URL_T, D:\Shortcut\T.txt
		Run %URL_T%
	}
}
return
;==================================================
<!U::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\U.lnk
		Run D:\Shortcut\U.lnk
	else IfExist, D:\Shortcut\U.txt
	{
		FileRead, URL_U, D:\Shortcut\U.txt
		Run %URL_U%
	}
}
return
;==================================================
<!V::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\V.lnk
		Run D:\Shortcut\V.lnk
	else IfExist, D:\Shortcut\V.txt
	{
		FileRead, URL_V, D:\Shortcut\V.txt
		Run %URL_V%
	}
}
return
;==================================================
<!W::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\W.lnk
		Run D:\Shortcut\W.lnk
	else IfExist, D:\Shortcut\W.txt
	{
		FileRead, URL_W, D:\Shortcut\W.txt
		Run %URL_W%
	}
}
return
;==================================================
<!X::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\X.lnk
		Run D:\Shortcut\X.lnk
	else IfExist, D:\Shortcut\X.txt
	{
		FileRead, URL_X, D:\Shortcut\X.txt
		Run %URL_X%
	}
}
return
;==================================================
<!Y::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\Y.lnk
		Run D:\Shortcut\Y.lnk
	else IfExist, D:\Shortcut\Y.txt
	{
		FileRead, URL_Y, D:\Shortcut\Y.txt
		Run %URL_Y%
	}
}
return
;==================================================
<!Z::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\Z.lnk
		Run D:\Shortcut\Z.lnk
	else IfExist, D:\Shortcut\Z.txt
	{
		FileRead, URL_Z, D:\Shortcut\Z.txt
		Run %URL_Z%
	}
}
return
;==================================================
!0::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut
		Run D:\Shortcut
	else
	{
		MsgBox, 1, Shortcut文件夹不存在, 是否创建并打开？
		IfMsgBox, OK
		{
			FileCreateDir, D:\Shortcut
			Run D:\Shortcut
		}
	}
}
return
;==================================================
!1::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\1.lnk
		Run D:\Shortcut\1.lnk
	else IfExist, D:\Shortcut\1.txt
	{
		FileRead, URL_1, D:\Shortcut\1.txt
		Run %URL_1%
	}
}
return
;==================================================
!2::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\2.lnk
		Run D:\Shortcut\2.lnk
	else IfExist, D:\Shortcut\2.txt
	{
		FileRead, URL_2, D:\Shortcut\2.txt
		Run %URL_2%
	}
}
return
;==================================================
!3::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\3.lnk
		Run D:\Shortcut\3.lnk
	else IfExist, D:\Shortcut\3.txt
	{
		FileRead, URL_3, D:\Shortcut\3.txt
		Run %URL_3%
	}
}
return
;==================================================
!4::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\4.lnk
		Run D:\Shortcut\4.lnk
	else IfExist, D:\Shortcut\4.txt
	{
		FileRead, URL_4, D:\Shortcut\4.txt
		Run %URL_4%
	}
}
return
;==================================================
!5::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\5.lnk
		Run D:\Shortcut\5.lnk
	else IfExist, D:\Shortcut\5.txt
	{
		FileRead, URL_5, D:\Shortcut\5.txt
		Run %URL_5%
	}
}
return
;==================================================
!6::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\6.lnk
		Run D:\Shortcut\6.lnk
	else IfExist, D:\Shortcut\6.txt
	{
		FileRead, URL_6, D:\Shortcut\6.txt
		Run %URL_6%
	}
}
return
;==================================================
!7::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\7.lnk
		Run D:\Shortcut\7.lnk
	else IfExist, D:\Shortcut\7.txt
	{
		FileRead, URL_7, D:\Shortcut\7.txt
		Run %URL_7%
	}
}
return
;==================================================
!8::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\8.lnk
		Run D:\Shortcut\8.lnk
	else IfExist, D:\Shortcut\8.txt
	{
		FileRead, URL_8, D:\Shortcut\8.txt
		Run %URL_8%
	}
}
return
;==================================================
!9::
if GetCtrlShiftState()
{
	IfExist, D:\Shortcut\9.lnk
		Run D:\Shortcut\9.lnk
	else IfExist, D:\Shortcut\9.txt
	{
		FileRead, URL_9, D:\Shortcut\9.txt
		Run %URL_9%
	}
}
return
;==================================================