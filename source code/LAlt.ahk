;==================================================
;快速替换模板
/*
LAlt & xxx::
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
*/
;==================================================
LAlt & A::
IfExist, D:\Shortcut\A.lnk
Run D:\Shortcut\A.lnk
IfNotExist, D:\Shortcut\A.lnk
{
	IfExist, D:\Shortcut\A.txt
	{
		FileRead, URL_A, D:\Shortcut\A.txt
		Run %URL_A%
	}
	else
	{
		MsgBox, 0, 热键“Alt+A”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“A”的快捷方式（A.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“A”的文本文档（A.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“A.lnk”和“A.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & B::
IfExist, D:\Shortcut\B.lnk
Run D:\Shortcut\B.lnk
IfNotExist, D:\Shortcut\B.lnk
{
	IfExist, D:\Shortcut\B.txt
	{
		FileRead, URL_B, D:\Shortcut\B.txt
		Run %URL_B%
	}
	else
	{
		MsgBox, 0, 热键“Alt+B”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“B”的快捷方式（B.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“B”的文本文档（B.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“B.lnk”和“B.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & C::
IfExist, D:\Shortcut\C.lnk
Run D:\Shortcut\C.lnk
IfNotExist, D:\Shortcut\C.lnk
{
	IfExist, D:\Shortcut\C.txt
	{
		FileRead, URL_C, D:\Shortcut\C.txt
		Run %URL_C%
	}
	else
	{
		MsgBox, 0, 热键“Alt+C”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“C”的快捷方式（C.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“C”的文本文档（C.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“C.lnk”和“C.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & D::
IfExist, D:\Shortcut\D.lnk
Run D:\Shortcut\D.lnk
IfNotExist, D:\Shortcut\D.lnk
{
	IfExist, D:\Shortcut\D.txt
	{
		FileRead, URL_D, D:\Shortcut\D.txt
		Run %URL_D%
	}
	else
	{
		MsgBox, 0, 热键“Alt+D”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“D”的快捷方式（D.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“D”的文本文档（D.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“D.lnk”和“D.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & E::
IfExist, D:\Shortcut\E.lnk
Run D:\Shortcut\E.lnk
IfNotExist, D:\Shortcut\E.lnk
{
	IfExist, D:\Shortcut\E.txt
	{
		FileRead, URL_E, D:\Shortcut\E.txt
		Run %URL_E%
	}
	else
	{
		MsgBox, 0, 热键“Alt+E”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“E”的快捷方式（E.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“E”的文本文档（E.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“E.lnk”和“E.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & F::
IfExist, D:\Shortcut\F.lnk
Run D:\Shortcut\F.lnk
IfNotExist, D:\Shortcut\F.lnk
{
	IfExist, D:\Shortcut\F.txt
	{
		FileRead, URL_F, D:\Shortcut\F.txt
		Run %URL_F%;
	}
	else
	{
		MsgBox, 0, 热键“Alt+F”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“F”的快捷方式（F.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“F”的文本文档（F.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“F.lnk”和“F.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & G::
IfExist, D:\Shortcut\G.lnk
Run D:\Shortcut\G.lnk
IfNotExist, D:\Shortcut\G.lnk
{
	IfExist, D:\Shortcut\G.txt
	{
		FileRead, URL_G, D:\Shortcut\G.txt
		Run %URL_G%
	}
	else
	{
		MsgBox, 0, 热键“Alt+G”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“G”的快捷方式（G.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“G”的文本文档（G.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“G.lnk”和“G.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & H::
IfExist, D:\Shortcut\H.lnk
Run D:\Shortcut\H.lnk
IfNotExist, D:\Shortcut\H.lnk
{
	IfExist, D:\Shortcut\H.txt
	{
		FileRead, URL_H, D:\Shortcut\H.txt
		Run %URL_H%
	}
	else
	{
		MsgBox, 0, 热键“Alt+H”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“H”的快捷方式（H.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“H”的文本文档（H.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“H.lnk”和“H.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & I::
IfExist, D:\Shortcut\I.lnk
Run D:\Shortcut\I.lnk
IfNotExist, D:\Shortcut\I.lnk
{
	IfExist, D:\Shortcut\I.txt
	{
		FileRead, URL_I, D:\Shortcut\I.txt
		Run %URL_I%
	}
	else
	{
		MsgBox, 0, 热键“Alt+I”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“I”的快捷方式（I.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“I”的文本文档（I.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“I.lnk”和“I.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & J::
IfExist, D:\Shortcut\J.lnk
Run D:\Shortcut\J.lnk
IfNotExist, D:\Shortcut\J.lnk
{
	IfExist, D:\Shortcut\J.txt
	{
		FileRead, URL_J, D:\Shortcut\J.txt
		Run %URL_J%
	}
	else
	{
		MsgBox, 0, 热键“Alt+J”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“J”的快捷方式（J.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“J”的文本文档（J.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“J.lnk”和“J.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & K::
IfExist, D:\Shortcut\K.lnk
Run D:\Shortcut\K.lnk
IfNotExist, D:\Shortcut\K.lnk
{
	IfExist, D:\Shortcut\K.txt
	{
		FileRead, URL_K, D:\Shortcut\K.txt
		Run %URL_K%
	}
	else
	{
		MsgBox, 0, 热键“Alt+K”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“K”的快捷方式（K.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“K”的文本文档（K.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“K.lnk”和“K.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & L::
IfExist, D:\Shortcut\L.lnk
Run D:\Shortcut\L.lnk
IfNotExist, D:\Shortcut\L.lnk
{
	IfExist, D:\Shortcut\L.txt
	{
		FileRead, URL_L, D:\Shortcut\L.txt
		Run %URL_L%
	}
	else
	{
		MsgBox, 0, 热键“Alt+L”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“L”的快捷方式（L.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“L”的文本文档（L.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“L.lnk”和“L.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & M::
IfExist, D:\Shortcut\M.lnk
Run D:\Shortcut\M.lnk
IfNotExist, D:\Shortcut\M.lnk
{
	IfExist, D:\Shortcut\M.txt
	{
		FileRead, URL_M, D:\Shortcut\M.txt
		Run %URL_M%
	}
	else
	{
		MsgBox, 0, 热键“Alt+M”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“M”的快捷方式（M.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“M”的文本文档（M.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“M.lnk”和“M.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & N::
IfExist, D:\Shortcut\N.lnk
Run D:\Shortcut\N.lnk
IfNotExist, D:\Shortcut\N.lnk
{
	IfExist, D:\Shortcut\N.txt
	{
		FileRead, URL_N, D:\Shortcut\N.txt
		Run %URL_N%
	}
	else
	{
		MsgBox, 0, 热键“Alt+N”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“N”的快捷方式（N.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“N”的文本文档（N.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“N.lnk”和“N.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & O::
IfExist, D:\Shortcut\O.lnk
Run D:\Shortcut\O.lnk
IfNotExist, D:\Shortcut\O.lnk
{
	IfExist, D:\Shortcut\O.txt
	{
		FileRead, URL_O, D:\Shortcut\O.txt
		Run %URL_O%
	}
	else
	{
		MsgBox, 0, 热键“Alt+O”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“O”的快捷方式（O.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“O”的文本文档（O.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“O.lnk”和“O.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & P::
IfExist, D:\Shortcut\P.lnk
Run D:\Shortcut\P.lnk
IfNotExist, D:\Shortcut\P.lnk
{
	IfExist, D:\Shortcut\P.txt
	{
		FileRead, URL_P, D:\Shortcut\P.txt
		Run %URL_P%
	}
	else
	{
		MsgBox, 0, 热键“Alt+P”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“P”的快捷方式（P.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“P”的文本文档（P.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“P.lnk”和“P.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
;◆左Alt+Q：关闭退出当前程序
LAlt & Q::
Send !{F4}
return
;==================================================
LAlt & R::
IfExist, D:\Shortcut\R.lnk
Run D:\Shortcut\R.lnk
IfNotExist, D:\Shortcut\R.lnk
{
	IfExist, D:\Shortcut\R.txt
	{
		FileRead, URL_R, D:\Shortcut\R.txt
		Run %URL_R%
	}
	else
	{
		MsgBox, 0, 热键“Alt+R”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“R”的快捷方式（R.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“R”的文本文档（R.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“R.lnk”和“R.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & S::
IfExist, D:\Shortcut\S.lnk
Run D:\Shortcut\S.lnk
IfNotExist, D:\Shortcut\S.lnk
{
	IfExist, D:\Shortcut\S.txt
	{
		FileRead, URL_S, D:\Shortcut\S.txt
		Run %URL_S%
	}
	else
	{
		MsgBox, 0, 热键“Alt+S”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“S”的快捷方式（S.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“S”的文本文档（S.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“S.lnk”和“S.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & T::
IfExist, D:\Shortcut\T.lnk
Run D:\Shortcut\T.lnk
IfNotExist, D:\Shortcut\T.lnk
{
	IfExist, D:\Shortcut\T.txt
	{
		FileRead, URL_T, D:\Shortcut\T.txt
		Run %URL_T%
	}
	else
	{
		MsgBox, 0, 热键“Alt+T”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“T”的快捷方式（T.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“T”的文本文档（T.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“T.lnk”和“T.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & U::
IfExist, D:\Shortcut\U.lnk
Run D:\Shortcut\U.lnk
IfNotExist, D:\Shortcut\U.lnk
{
	IfExist, D:\Shortcut\U.txt
	{
		FileRead, URL_U, D:\Shortcut\U.txt
		Run %URL_U%
	}
	else
	{
		MsgBox, 0, 热键“Alt+U”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“U”的快捷方式（U.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“U”的文本文档（U.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“U.lnk”和“U.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & V::
IfExist, D:\Shortcut\V.lnk
Run D:\Shortcut\V.lnk
IfNotExist, D:\Shortcut\V.lnk
{
	IfExist, D:\Shortcut\V.txt
	{
		FileRead, URL_V, D:\Shortcut\V.txt
		Run %URL_V%
	}
	else
	{
		MsgBox, 0, 热键“Alt+V”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“V”的快捷方式（V.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“V”的文本文档（V.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“V.lnk”和“V.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
LAlt & W::
IfExist, D:\Shortcut\W.lnk
Run D:\Shortcut\W.lnk
IfNotExist, D:\Shortcut\W.lnk
{
	IfExist, D:\Shortcut\W.txt
	{
		FileRead, URL_W, D:\Shortcut\W.txt
		Run %URL_W%
	}
	else
	{
		MsgBox, 0, 热键“Alt+W”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“W”的快捷方式（W.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“W”的文本文档（W.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“W.lnk”和“W.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
/*
LAlt & X::
IfExist, D:\Shortcut\X.lnk
Run D:\Shortcut\X.lnk
IfNotExist, D:\Shortcut\X.lnk
{
	IfExist, D:\Shortcut\X.txt
	{
		FileRead, URL_X, D:\Shortcut\X.txt
		Run %URL_X%
	}
	else
	{
		MsgBox, 0, 热键“Alt+X”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“X”的快捷方式（X.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“X”的文本文档（X.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“X.lnk”和“X.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
*/
;==================================================
LAlt & Y::
IfExist, D:\Shortcut\Y.lnk
Run D:\Shortcut\Y.lnk
IfNotExist, D:\Shortcut\Y.lnk
{
	IfExist, D:\Shortcut\Y.txt
	{
		FileRead, URL_Y, D:\Shortcut\Y.txt
		Run %URL_Y%
	}
	else
	{
		MsgBox, 0, 热键“Alt+Y”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“Y”的快捷方式（Y.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“Y”的文本文档（Y.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“Y.lnk”和“Y.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
/*
LAlt & Z::
IfExist, D:\Shortcut\Z.lnk
Run D:\Shortcut\Z.lnk
IfNotExist, D:\Shortcut\Z.lnk
{
	IfExist, D:\Shortcut\Z.txt
	{
		FileRead, URL_Z, D:\Shortcut\Z.txt
		Run %URL_Z%
	}
	else
	{
		MsgBox, 0, 热键“Alt+Z”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“Z”的快捷方式（Z.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“Z”的文本文档（Z.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“Z.lnk”和“Z.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
*/
;==================================================
!0::
IfExist, D:\Shortcut
Run D:\Shortcut
IfNotExist, D:\Shortcut
{
	MsgBox, 1, Shortcut文件夹不存在, 是否创建并打开？
	IfMsgBox, OK
	{
		FileCreateDir, D:\Shortcut
		Run D:\Shortcut
	}
}
return
;==================================================
!1::
IfExist, D:\Shortcut\1.lnk
Run D:\Shortcut\1.lnk
IfNotExist, D:\Shortcut\1.lnk
{
	IfExist, D:\Shortcut\1.txt
	{
		FileRead, URL_1, D:\Shortcut\1.txt
		Run %URL_1%
	}
	else
	{
		MsgBox, 0, 热键“Alt+1”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“1”的快捷方式（1.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“1”的文本文档（1.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“1.lnk”和“1.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!2::
IfExist, D:\Shortcut\2.lnk
Run D:\Shortcut\2.lnk
IfNotExist, D:\Shortcut\2.lnk
{
	IfExist, D:\Shortcut\2.txt
	{
		FileRead, URL_2, D:\Shortcut\2.txt
		Run %URL_2%
	}
	else
	{
		MsgBox, 0, 热键“Alt+2”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“2”的快捷方式（2.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“2”的文本文档（2.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“2.lnk”和“2.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!3::
IfExist, D:\Shortcut\3.lnk
Run D:\Shortcut\3.lnk
IfNotExist, D:\Shortcut\3.lnk
{
	IfExist, D:\Shortcut\3.txt
	{
		FileRead, URL_3, D:\Shortcut\3.txt
		Run %URL_3%
	}
	else
	{
		MsgBox, 0, 热键“Alt+3”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“3”的快捷方式（3.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“3”的文本文档（3.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“3.lnk”和“3.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!4::
IfExist, D:\Shortcut\4.lnk
Run D:\Shortcut\4.lnk
IfNotExist, D:\Shortcut\4.lnk
{
	IfExist, D:\Shortcut\4.txt
	{
		FileRead, URL_4, D:\Shortcut\4.txt
		Run %URL_4%
	}
	else
	{
		MsgBox, 0, 热键“Alt+4”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“4”的快捷方式（4.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“4”的文本文档（4.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“4.lnk”和“4.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!5::
IfExist, D:\Shortcut\5.lnk
Run D:\Shortcut\5.lnk
IfNotExist, D:\Shortcut\5.lnk
{
	IfExist, D:\Shortcut\5.txt
	{
		FileRead, URL_5, D:\Shortcut\5.txt
		Run %URL_5%
	}
	else
	{
		MsgBox, 0, 热键“Alt+5”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“5”的快捷方式（5.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“5”的文本文档（5.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“5.lnk”和“5.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!6::
IfExist, D:\Shortcut\6.lnk
Run D:\Shortcut\6.lnk
IfNotExist, D:\Shortcut\6.lnk
{
	IfExist, D:\Shortcut\6.txt
	{
		FileRead, URL_6, D:\Shortcut\6.txt
		Run %URL_6%
	}
	else
	{
		MsgBox, 0, 热键“Alt+6”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“6”的快捷方式（6.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“6”的文本文档（6.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“6.lnk”和“6.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!7::
IfExist, D:\Shortcut\7.lnk
Run D:\Shortcut\7.lnk
IfNotExist, D:\Shortcut\7.lnk
{
	IfExist, D:\Shortcut\7.txt
	{
		FileRead, URL_7, D:\Shortcut\7.txt
		Run %URL_7%
	}
	else
	{
		MsgBox, 0, 热键“Alt+7”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“7”的快捷方式（7.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“7”的文本文档（7.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“7.lnk”和“7.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!8::
IfExist, D:\Shortcut\8.lnk
Run D:\Shortcut\8.lnk
IfNotExist, D:\Shortcut\8.lnk
{
	IfExist, D:\Shortcut\8.txt
	{
		FileRead, URL_8, D:\Shortcut\8.txt
		Run %URL_8%
	}
	else
	{
		MsgBox, 0, 热键“Alt+8”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“8”的快捷方式（8.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“8”的文本文档（8.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“8.lnk”和“8.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================
!9::
IfExist, D:\Shortcut\9.lnk
Run D:\Shortcut\9.lnk
IfNotExist, D:\Shortcut\9.lnk
{
	IfExist, D:\Shortcut\9.txt
	{
		FileRead, URL_9, D:\Shortcut\9.txt
		Run %URL_9%
	}
	else
	{
		MsgBox, 0, 热键“Alt+9”打开快捷方式或网页失败, 1）如需打开快捷方式，请在“D:\Shortcut\”路径下`n创建名称为“9”的快捷方式（9.lnk）`n2）如需打开网页请在“D:\Shortcut\”路径下创建名`n称为“9”的文本文档（9.txt），并在txt中写入一个`n网页链接`n`n以上文件命名不区分大小写`n若“9.lnk”和“9.txt”都存在，则默认打开快捷方式`n而不会打开网页
	}
}
return
;==================================================