MsgBox, % 3+32, 选择使用的屏幕方向, 你要使用横向还是竖向屏幕？`n 横向=是`n 纵向=否,
IfMsgBox, Cancel
	return
IfMsgBox, Yes
	KX  := 1892
	K1	:= 150	;功能,矩形选择,坐标,		1892,150,快捷键,ctrl+shift+f1
	K2	:= 205	;功能,套索,坐标,			1892,205,快捷键,ctrl+shift+f2
	K3	:= 267	;功能,青笔,坐标,			1894,267,快捷键,ctrl+shift+f3
	K4	:= 319	;功能,粉笔,坐标,			1894,319,快捷键,ctrl+shift+f4
	K5	:= 369	;功能,荧光笔,坐标,			1894,369,快捷键,ctrl+shift+f5
	K6	:= 429	;功能,绿色高亮,坐标,		1894,429,快捷键,ctrl+shift+f6
	K7	:= 481	;功能,黄色高亮,坐标,		1894,481,快捷键,ctrl+alt+1
	K8	:= 536	;功能,红下划线,坐标,		1894,536,快捷键,ctrl+alt+2
	K9	:= 587	;功能,字,坐标,				1894,587,快捷键,ctrl+alt+3
	K10	:= 643	;功能,红线,坐标,			1894,643,快捷键,ctrl+alt+4
	K11	:= 689	;功能,橡皮擦,坐标,			1894,689,快捷键,ctrl+alt+5
	K12	:= 749	;功能,移动,坐标,			1894,749,快捷键,ctrl+alt+6
IfMsgBox, No	
	KX  := -28
	K1	:= -126	;功能,矩形选择,坐标,		-28,1892,-688,快捷键,ctrl+shift+f1
	K2	:= -72	;功能,套索,坐标,			-28,1892,-634,快捷键,ctrl+shift+f2
	K3	:= -13	;功能,青笔,坐标,			-28,1894,-575,快捷键,ctrl+shift+f3
	K4	:= 40	;功能,粉笔,坐标,			-28,1894,-522,快捷键,ctrl+shift+f4
	K5	:= 95	;功能,荧光笔,坐标,			-28,1894,-467,快捷键,ctrl+shift+f5
	K6	:= 151	;功能,绿色高亮,坐标,		-28,1894,-411,快捷键,ctrl+shift+f6
	K7	:= 203	;功能,黄色高亮,坐标,		-28,1894,-359,快捷键,ctrl+alt+1
	K8	:= 256	;功能,红下划线,坐标,		-28,1894,-306,快捷键,ctrl+alt+2
	K9	:= 317	;功能,字,坐标,				-28,1894,-245,快捷键,ctrl+alt+3
	K10	:= 367	;功能,红线,坐标,			-28,1894,-195,快捷键,ctrl+alt+4
	K11	:= 414	;功能,橡皮擦,坐标,			-28,1894,-148,快捷键,ctrl+alt+5
	K12	:= 472	;功能,移动,坐标,			-28,	, -90,快捷键,ctrl+alt+6
CoordMode, Mouse, Screen

^esc::
    MsgBox, , ,程序已经退出, 1
    ExitApp
    


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
;	MsgBox, The cursor is at X%XX%, Y%Orignal_Y%
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
