;==================================================
/*
;◆Shift+CapsLock：大小写切换（等同于原CapsLock键）
+Capslock::
GetKeyState, CapsLockState, CapsLock, T
if CapsLockState = D
	SetCapsLockState, AlwaysOff
else
	SetCapsLockState, AlwaysOn
return
;◆CapsLock：回车键（等同于Enter键）
~Capslock::
Send {Enter}
return
;◆Ctrl+CapsLock：等同于Ctrl+Enter（VS中在上方另起一行）
^Capslock::
Send ^{Enter}
return
;◆Ctrl+Shift+CapsLock：等同于Ctrl+Shift+Enter（VS中在下方另起一行）
^+Capslock::
Send ^+{Enter}
return
*/
;==================================================
;◆CapsLock+C/D/E/F/G/H：打开本地硬盘
CapsLock & C::
IfExist, C:
Run C:
IfNotExist, C:
MsgBox, 0, 无效路径, C盘不存在
return

CapsLock & D::
IfExist, D:
Run D:
IfNotExist, D:
MsgBox, 0, 无效路径, D盘不存在
return

CapsLock & E::
IfExist, E:
Run E:
IfNotExist, E:
MsgBox, 0, 无效路径, E盘不存在
return

CapsLock & F::
IfExist, F:
Run F:
IfNotExist, F:
MsgBox, 0, 无效路径, F盘不存在
return

CapsLock & G::
IfExist, G:
Run G:
IfNotExist, G:
MsgBox, 0, 无效路径, G盘不存在
return

CapsLock & H::
IfExist, H:
Run H:
IfNotExist, H:
MsgBox, 0, 无效路径, H盘不存在
return
;==================================================
;◆CapsLock+I/K/J/L：映射方向键（等同于↑↓←→键）
CapsLock & I::
Send {Up}
return
CapsLock & K::
Send {Down}
return
CapsLock & J::
Send {Left}
return
CapsLock & L::
Send {Right}
return
;==================================================
;◆右Ctrl键+方向键：鼠标朝按键方向移动1像素
rctrl & Left:: MouseMove, -1,  0,, R
return
rctrl & Up::   MouseMove,  0, -1,, R
return
rctrl & Right::MouseMove,  1,  0,, R
return
rctrl & Down:: MouseMove,  0,  1,, R
return
;==================================================