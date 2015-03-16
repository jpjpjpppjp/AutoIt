; --------------------
;Runescape Miner Bot ;
;Autor: Babysnakes   ;
;  v0.1   16/03/2015 ;
;---------------------
; Include Start
#include <Color.au3>
; Include End

; Hotkeys Start
HotKeySet("+{F9}", "_exit()")
; Hotkeys End

$var=1

_Mine()


Func _Mine()
Sleep(10000)
MouseMove(904, 372,10) ;Pos of the Mine
MouseClick ( "left" )
Sleep(10000);Time for player to mine
MouseMove(1191, 572,10) ;Pos of the item to drop
MouseClick( "right" )
MouseMove(1157, 621,10);Pos of drop button
MouseClick( "left" )
Sleep(20000);Time for mine to respawn
   If $var=1 Then _Mine() Else Call _Exit EndIf

EndFunc

Func _Exit()
    Exit
EndFunc