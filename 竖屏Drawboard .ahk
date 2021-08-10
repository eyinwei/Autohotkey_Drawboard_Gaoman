CoordMode, Mouse, Screen
;适用于-竖屏-的Drawboard,并且把托盘收进去时对应的坐标

KX  := -28
K1	:= -688	;功能,矩形选择,坐标,		-28,1892,-688,快捷键,ctrl+shift+f1
K2	:= -634	;功能,套索,坐标,			-28,1892,-634,快捷键,ctrl+shift+f2
K3	:= -575	;功能,青笔,坐标,			-28,1894,-575,快捷键,ctrl+shift+f3
K4	:= -522	;功能,粉笔,坐标,			-28,1894,-522,快捷键,ctrl+shift+f4
K5	:= -467	;功能,荧光笔,坐标,		-28,1894,-467,快捷键,ctrl+shift+f5
K6	:= -411	;功能,绿色高亮,坐标,		-28,1894,-411,快捷键,ctrl+shift+f6
K7	:= -359	;功能,黄色高亮,坐标,		-28,1894,-359,快捷键,ctrl+alt+1
K8	:= -306	;功能,红下划线,坐标,		-28,1894,-306,快捷键,ctrl+alt+2
K9	:= -245	;功能,字,坐标,			-28,1894,-245,快捷键,ctrl+alt+3
K10	:= -195	;功能,红线,坐标,			-28,1894,-195,快捷键,ctrl+alt+4
K11	:= -148	;功能,橡皮擦,坐标,		-28,1894,-148,快捷键,ctrl+alt+5
K12	:= -90	;功能,移动,坐标,			-28,,-90,快捷键,ctrl+alt+6


^esc::pause


^+f1::
	Click_Main(KX,K1)
return

^+f2::
	Click_Main(KX,K2)
return

^+f3::
	Click_Main(KX,K3)
return

^+f4::
	Click_Main(KX,K4)
return

^+f5::
	Click_Main(KX,K5)
return

^+f6::
	Click_Main(KX,K6)
return

^!1::
	Click_Main(KX,K7)
return

^!2::
	Click_Main(KX,K8)
return

^!3::
	Click_Main(KX,K9)
return

^!4::
	Click_Main(KX,K10)
return

^!5::
	Click_Main(KX,K11)
return

^!6::
	Click_Main(KX,K12)
return




GetPos()
{
	sleep, 10
	MouseGetPos, Orignal_X, Orignal_Y  
	MsgBox, The cursor is at X%XX%, Y%Orignal_Y%
	sleep, 10
return
}
MoveBack(X,Y)
{
	MouseMove, %X%, %Y%
return
}
Click_Main(KX,KY)
{
	MouseGetPos, XX, YY	;获取原来的位置
	Click, %KX%, %KY%, left, 1	;
	MoveBack(XX,YY)
}
