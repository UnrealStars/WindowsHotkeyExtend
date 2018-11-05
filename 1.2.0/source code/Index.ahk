;====================【初始化】====================
#SingleInstance ignore
Version = Version 1.2.0
A_Version = v1.2.0
;更改托盘图标和气泡显示
;Menu, Tray, Icon, F:\小工具\AutoHotkey\ico\icon.ico,, 1
Menu, Tray, Tip, Windows热键扩展
CoordMode, ToolTip
tooltip, Windows热键扩展 %A_Version% 已启动, A_ScreenWidth / 2 - 100, A_ScreenHeight / 2 - 10
sleep, 1500
tooltip
;==================================================
;是否显示托盘图标
#NoTrayIcon
IniRead, b_initShowIcon, %A_ScriptDir%\config.ini, General, IsShowIcon
if (b_initShowIcon != 0)
	Menu , tray , icon
;==================================================
IniRead, b_firstRun, %A_ScriptDir%\config.ini, General, IsFirstRun
if (b_firstRun != 1)
{
	IniWrite, 1, %A_ScriptDir%\config.ini, General, IsFirstRun
	;设为开机启动
	RegWrite, REG_SZ, HKLM\Software\Microsoft\Windows\CurrentVersion\Run, WindowsHotkeyExtend, %A_ScriptFullPath%
	;屏蔽Windows键
	IniWrite, 1, %A_ScriptDir%\config.ini, General, IsShieldingWindowskey
	;屏蔽应用键（菜单键）
	IniWrite, 1, %A_ScriptDir%\config.ini, General, IsShieldingAppsKey
	;PS、AI中禁用Alt键选中菜单栏
	IniWrite, 1, %A_ScriptDir%\config.ini, General, IsAltKeySelectOption
	
	IfNotExist, %A_ScriptDir%\帮助说明.txt
	{
		FileAppend, ◆当前版本%A_Version%特别说明`n本工具的开发环境为Windows7操作系统，所以在Windows10上作者并没有做太多的测试及Bug修复。`n目前已发现的Bug就是，在Windows10上，设置开机启动会失败，所以请Win10用户手动设置开机启动，具体步骤如下：`n1.按“Win+R”打开运行窗口，输入“shell:startup”，打开开机启动文件夹`n2.右键本工具创建快捷方式，将快捷方式剪切至开机启动文件夹中`n如果此方法不行，请百度另寻其他方式解决，给您带来的不便，敬请谅解。`n`n`n◆你好，欢迎使用Windows热键扩展工具！`n`n常见问题`n`nQ：什么是Windows热键？`nA：Windows系统下自带了很多方便日常使用的热键，例如：同时按下Windows键（以下简称Win键）和字母键E，可以快速打开资源管理器，同时按下Ctrl+Shift+N，可以快速在当前位置新建文件夹。`n`nQ：Windows热键扩展工具能做什么？`nA：像上面所说的系统自带的热键有很多，更多的热键可以在百度上了解，或者一些较为常用的系统热键可以在本文档底部附录查看。但是这些热键还不够满足我们的需求怎么办？例如快速打开控制面板，好像系统并没有自带这个热键，再或者快速打开某个快捷方式来启动程序呢，又或者快速打开某个网页呢？这时候就可以使用本工具定义的热键来快速打开你想要的。`n`nQ：Windows热键扩展工具定义的热键会不会与系统默认的热键冲突？`nA：原则上，本工具所定义的热键会尽可能避开Windows系统原有的热键，而在前者的基础上，额外增添本工具所定义的热键，这也是本工具名称中“扩展”两个字的由来，所以尽可放心使用本工具给系统新增添的热键，享, %A_ScriptDir%\帮助说明.txt
		FileAppend, 受这些热键在日常使用中所带来的方便。`n`nQ：担心这款工具会占用后台内存？`nA：本工具非常小巧，整个工具可执行程序不到500KB，任务管理器进程占用不到5M，完全可以在后台常驻并推荐设为开机启动，而且热键的响应非常迅捷，几乎感受不到延迟。值得一提的是，本工具可在热键目录中设置不显示托盘图标，这样看起来本工具就真的像变成了一个在后台占用不到5M的常驻进程啦。`n`nQ：这款工具需要安装吗？怎么卸载？`nA：本工具初始状态只有一个可执行程序，双击打开即可使用，无需安装，在使用过程中可能会计算机做出的全部改动如下：`n	1.在可执行程序的当前路径生成“帮助说明.txt”。（是的，就是你正在看的这个记事本）`n	2.在D盘中创建名称为“Shortcut”的文件夹。（该文件夹用于自定义快捷方式或网页）`n	3.在可执行程序的当前路径生成“config.ini”配置文件。（该配置文件记录用户对工具的设置）`n	4.在注册表“HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run”创建名称为“WindowsHotkeyExtend”的值。（设为开机启动）`n以上便是本工具运行后可能对计算机做出的全部改动，如需卸载，请按“Alt+~”打开热键目录，在“关于”选项卡中点击“卸载”按钮，便可删除以上全部改动，如不能正常卸载，可根据上面的内容手动卸载。`n`n`n◆第一次使用前必看教程`n`n1）左Alt+数字键/字母键打开快捷方式`nQ：我想按“左Alt+1”打开IE浏览器？`nA：第一次使用时请先按“左Alt+0”打开“Shortcut文件夹”，若没有则会提示创建，点击确定后会自动在D盘中创建该文件夹（路径为：D:\Shortcut）。接着，找到IE浏览器的快捷方式（.lnk）或可执行程序（.exe），右键-创建快捷方式，创建出一个新的快捷方式，将其剪切至“Shortcut文件夹”中，并将其重命名为“1”（1.lnk），这时再按“左Alt+1”就可以打开IE浏览器了。`n同理，若将该快捷方式重命名为“S”，则可以按“左Alt+S”打开。`n`n要, %A_ScriptDir%\帮助说明.txt
		FileAppend, 注意的是，可自定义数字键是1~9，而字母键并不是所有的字母都能自定义，有些是本软件默认定义好的，可按“Alt+~”打开热键目录查看，防止重复定义。`n`n2）左Alt+数字键/字母键打开快捷方式`nQ：我想按“左Alt+2”打开百度（www.baidu.com）？`nA：接着上面的，这些热键不光可以打开快捷方式，还可以直接打开网页。在“Shortcut文件夹”中新建文本文档，在里面写上“www.baidu.com”，保存并关闭，将其重命名为“2”（2.txt），这时再按“左Alt+2”就可以打开百度了。`n`n`n◆本工具的其他功能推荐`n`n1）清理回收站（功能扩展版）：`n按下热键“Shift+Win+D”可打开回收站清理窗口。`n该窗口可以检测回收站中文件的大小，这样每次清理前就能看的将要清理的文件大小了。`n而且可以对某个硬盘的回收站进行单独清理哦。`n若点击确定，则直接清空全部的回收站。`n`n相关热键：`nCtrl+Win+D：打开回收站`n`n2）定时关机/注销/重启`n按下热键“Win+Q”可打开计算机注销/关机/重启窗口。`n该窗口可以设置设置一个大于当前系统的时间（以分钟为最小单位），设置好时间之后，再点关机（注销/重启），便可定时关机，如果不断电不自动休眠，就算定时一年后关机也是可以的哦。`n定时关机在关机前1分钟会有提示窗口，可取消本次定时关机。`n或者点击窗口上的清除定时设置，便可清除之前设置的定时关机（注销/重启）。`n若不设置时间（窗口的时间与当前系统时间相同），点击注销/关机/重启，则立即执行该操作。`n`n3）输入文字快捷打开网页`n文字快捷输入，以“空格、回车、逗号、句号、点、感叹号、问号、下划线、反下划线、减号、冒号、分号、单双引号、三种左右括号”触发。`n在任何时候，按顺序按下“//bd”，然后按回车键，即可打开百度网页`n已定义可快速打开的网站一, %A_ScriptDir%\帮助说明.txt
		FileAppend, 览：`n//bd：www.baidu.com（百度）`n//gg：www.google.com（谷歌）`n//sg：www.sogou.com（搜狗搜索）`n//so：www.so.com（360搜索）`n//123：www.hao123.com（hao123）`n//sh：www.sohu.com（搜狐）`n//xl：www.sina.com.cn（新浪网）`n//qq：www.qq.com（腾讯网）`n//wy：www.163.com（网易）`n//fh：www.ifeng.com（凤凰网）)`n//shtv：https://tv.sohu.com/（搜狐视频）`n//iqy：www.iqiyi.com（爱奇艺视频）`n//qv：https://v.qq.com/（腾讯视频）`n//yk：www.youku.com（优酷）`n//bi：www.bilibili.com（B站")`n//wb：https://weibo.com/（新浪微博）`n//qz：https://qzone.qq.com/（QQ空间）`n//tq：www.tianqi.com（天气网）`n//map：https://map.baidu.com/（百度地图）`n//12306：www.12306.cn（中铁客服中心）`n//qd：www.qidian.com（起点中文网）`n//4399：www.4399.com（4399小游戏）`n//hy：www.huya.com（虎牙直播）`n//dy：www.douyu.com（斗鱼直播）`n//zq：www.zhanqi.tv（战旗TV）`n//xm：www.panda.tv（熊猫TV）`n//tb：www.taobao.com（淘宝网）`n//tm：www.tmall.com（天猫商城）`n//jd：www.jd.com（京东商城）`n//sn：www.suning.com（苏宁易购）`n//zol：www.zol.com.cn（中关村在线）`n//58：www.58.com（58同城）`n//zh：www.zhihu.com（知乎）`n//db：www.douban.com（豆瓣）`n//cs：www.csdn.net（CSDN）`n//hd：www.baike.com（互动百科）`n`n`n◆附录1——热键目录的全部热键`n`nAlt+~：打开热键目录`nAlt+F1：打开帮助说明文本`n右Alt+P：禁用/启用脚本`n右Alt+Q：退出脚本`n`nAlt+0：打开Shortcut文件夹`nAlt+1~Alt+9：打开自定义的快捷方式或网页`n左Alt+除Q以外25个字母：打开, %A_ScriptDir%\帮助说明.txt
		FileAppend, 自定义的快捷方式或网页`n左Alt+Q：关闭退出当前程序`n`n右Alt+<：减小系统音量`n右Alt+>：增大系统音量`n右Alt+?：静音/取消静音`n右Alt+←：上一首`n右Alt+→：下一首`n右Alt+↓：暂停/播放`n右Alt+↑：停止`n右Alt+A：打开计算器`n右Alt+B：百度搜索当前选中文字`n右Alt+C：打开CMD命令行`n右Alt+F：打开系统字体文件夹`n右Alt+G：谷歌搜索当前选中文字`n右Alt+N：打开记事本`n右Alt+P：打开画图`n右Alt+R：打开注册表`n右Alt+U：打开卸载/更改程序`n右Alt+V：复制当前选中文件的路径`n右Alt+Y：百度翻译当前选中文字`n`nWin+C：打开控制面板`nWin+Q：计算机注销/关机/定时关机/重启`nCtrl+Win+D：打开回收站`nShift+Win+D：清空回收站（有二次确认窗口提示）`n`nCapsLock+C/D/E/F/G/H：打开本地硬盘`nCapsLock+I/K/J/L：映射方向键`n右Ctrl+方向键：鼠标朝按键方向移动1像素`n`n`n◆附录2——Windows7系统常用热键`nWin+D：打开桌面`nWin+E：打开资源管理器`nWin+F/F3：打开Windows搜索对话框`nWin+L：锁定计算机`nWin+M：最小化所有窗口`nWin+P：切换画面显示输出`nWin+R：打开运行窗口`nWin+T：在任务栏中切换选中的图标`nWin+U：打开控制面板轻松访问中心`nWin+Home：将正在使用的窗口以外的窗口最小化`nWin+空格键：所有窗口透明化预览桌面`nWin+Tab：3D切换窗口`nAlt+Tab：快速切换窗口`nWin+0~Win+9：按照数字排序打开固定在任务栏中的程序`nWin+小键盘上/下方向键：最大/小化当前窗口`nWin+小键盘左/右方向键：窗口靠左、居中、靠右悬停`nWin+(+/-)：Windows视图放大/缩小`nWin+PauseBreak：打开系统面板`nCtrl+Shift+Esc：打开Windows任务管理器`n`n更多Windows系统热键请打开百度百科查看`n【Windows快捷键大全】`n"https://baike.baidu.com/item/Windows快捷键大全"`n`n`n◆Windows热键扩展`n%Version%`n本软件为免费开源软件，使用AutoHotKey（官网：https://www.autohotkey.com/）`n请访问GitHub（https://github.com/UnrealStars/WindowsHotkeyExtend）以下载最新版或源码`n如果你觉得好用，不妨分享给身边的好友们^_^`n在使用过程中如有Bug或其他建议欢迎反馈`nEmail：3450034600@qq.com`n, %A_ScriptDir%\帮助说明.txt
		MsgBox, 1, 提示, “帮助说明.txt”已创建，是否打开？
		IfMsgBox OK
		{
			Run %A_ScriptDir%\帮助说明.txt
		}
	}
}
;===================【引入脚本】===================
;开发时使用的热键
;#Include %A_ScriptDir%\Develop.ahk

;开发测试脚本
;#Include %A_ScriptDir%\Test.ahk

;常规热键
#Include %A_ScriptDir%\General.ahk

;左Alt相关热键
#Include %A_ScriptDir%\LAlt.ahk

;右Alt相关热键
#Include %A_ScriptDir%\RAlt.ahk

;Win相关热键
#Include %A_ScriptDir%\Win.ahk

;其他热键
#Include %A_ScriptDir%\Other.ahk

;可选功能
#Include %A_ScriptDir%\Optional.ahk

;网站缩写
#Include %A_ScriptDir%\WebAbbreviation.ahk







