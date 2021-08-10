CoordMode, Mouse, Screen


^esc::pause

; 复制光标所在的位置到剪切板
+c:: 
;	Click, 200 300, right, 0
	Pos2Clib()
return
;+d:: 
;	MouseGetPos, XX, YY
;	Click, -200 100, right, 0
;	GetPos()
;	global XX,YY
;	MoveBack(XX,YY) 
;return


;GetPos()
;{
;	sleep, 10
;	MouseGetPos, Orignal_X, Orignal_Y  
	MsgBox, The cursor is at X%XX%, Y%Orignal_Y%
;	sleep, 10
;return
;}
;MoveBack(X,Y)
;{
;	MouseMove,X, Y
;	MsgBox, %X%, %Y%
;return
;}
Pos2Clib()
{
	MouseGetPos, Orignal_X, Orignal_Y
;	clipboard := Orignal_X ", " Orignal_Y
	clipboard := Orignal_Y
}