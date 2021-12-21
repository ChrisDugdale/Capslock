#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ========================== HotKeys ============================================
; ==================================================================================

^!c:: Run C:\Users\Chris.Dugdale\Desktop\Cmder.exe.lnk



;#/::Run 
;+!k::Run www.https://dynalist.io
#f:: Run explorer.exe
;^!d:: Run C:\Users\Dugzor\Dropbox
#SC02B:: Send chrisdugdale{Tab}Reset123
;#SC028:: Send .\admin{Tab}Details123


; ========================== Hotstrings ============================================
; ==================================================================================

:*::snip::C:\Users\Chris.Dugdale.cmac\Files\Snippets {Enter}
:*::down::C:\Downloads {Enter}
:*::compile-solution::C:\s\Application.SupplierPortal\build\tasks
:*::buscon::"ConnectionString":"Endpoint=sb://cf-l-003242.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=8uxvP1vv3GYNkYDVhK8D5hsxuikEv7nQX8bVdx86FUg=",


:*::ec::chris.dugdale@cmacgroup.com

:*::repos::C:\\repos
:*::sed::sed -i 's/\r$//'{Space}
:*::azprodw::az aks get-credentials --resource-group cmack8sprodukwest --name cmack8sprodukwest --overwrite-existing
:*::azprods::az aks get-credentials --resource-group cmack8sproduksouth --name cmack8sproduksouth --overwrite-existing
:*::azuat::az aks get-credentials --resource-group cmack8suatukwest --name cmack8suatukwest --overwrite-existing
:*::aztrain::az aks get-credentials --resource-group cmack8strainukwest --name cmack8strainukwest --overwrite-existing
:*::zm::https://us04web.zoom.us/j/4293639588?pwd=Tkdva053QklSbzJXbzVFOG9aZVBhQT09 password duggy
:*::cbash::code ~/.bashrc
:*::sel::select top 10 * from{Space}
:*::billscreen::ALTER DATABASE SCOPED CONFIGURATION CLEAR PROCEDURE_CACHE
:*::wopsc::cd /mnt/c/repos/ops-portal/src/cmac.ops.web/client
:*::opsc::cd c://repos/ops-portal/src/cmac.ops.web/client
:*::wportalc::cd /mnt/c/repos/portal/src/cmac.portal.web/client
:*::spa::cd C:/repos/supplier-portal-spa/src
:*::lk::like '%%'{left}{left}
:*::conl::console.log('%c', "color: green; font-weight: bold;"){home}{Ctrl Down}{right}{right}{right}{Ctrl Up}{right}


;Shift + Windows + Up (maximize a window across all displays) https://stackoverflow.com/a/9830200/470749
+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, X1, Y1, Width, Height
return



; ========================== Capslock remapping to modifier ========================
; ==================================================================================
; Original caps lock script by Danik: More info at http://danikgames.com/blog/?p=714
; https://gist.github.com/Danik/5808330
;  
; Functionality:
; - Deactivates capslock for normal (accidental) use.
; - Hold Capslock and drag anywhere in a window to move it (not just the title bar).
; - Access the following functions when pressing Capslock: 
;     Cursor keys           - J, K, L, I
;     Home, PgDn, PgUp, End - U, O, Y, H
;     Backspace and Del     - ;, '
;     Mouse Wheel U,D,L,R   - W, S, A, D
;   MButtons 1, 2, 3      - M, ,, .
;     Next, previous tab    - Tab, Q
;  
; To use capslock as you normally would, you can press WinKey + Capslock
 
#Persistent
SetCapsLockState, off
SetCapsLockState, AlwaysOff
;CapsLock:: return
RAlt & SC03A:: return


;Scan code 03a is what the Samsung S9 has for the Capslock key. Using the capslock key itself shows the 'capslock on/off' popup
;F Keys onto key row (1,2,3,4,5,6,7,8,9,0,-,=)

SC03A & SC002::SendInput {Blind}{F1 Down}
SC03A & SC002 up::SendInput {Blind}{F1 Up}
SC03A & SC003::SendInput {Blind}{F2 Down}
SC03A & SC003 up::SendInput {Blind}{F2 Up}
SC03A & SC004::SendInput {Blind}{F3 Down}
SC03A & SC004 up::SendInput {Blind}{F3 Up}   
SC03A & SC005::SendInput {Blind}{F4 Down}
SC03A & SC005 up::SendInput {Blind}{F4 Up}
SC03A & SC006::SendInput {Blind}{F5 Down}
SC03A & SC006 up::SendInput {Blind}{F5 Up}
SC03A & SC007::SendInput {F6 Down}
SC03A & SC007 up::SendInput {F6 Up}
SC03A & SC008::SendInput {F7 Down}
SC03A & SC008 up::SendInput {F7 Up}
SC03A & SC009::SendInput {F8 Down}
SC03A & SC009 up::SendInput {F8 Up}
SC03A & SC00A::SendInput {F9 Down}
SC03A & SC00A up::SendInput {F9 Up}
SC03A & SC00B::SendInput {F10 Down}
SC03A & SC00B up::SendInput {F10 Up}
SC03A & SC00C::SendInput {F11 Down}
SC03A & SC00C up::SendInput {F11 Up}
SC03A & SC00D::SendInput {F12 Down}
SC03A & SC00D up::SendInput {F12 Up}

; Capslock + ijkl (Up, down, left, right cursor keys)
SC03A & SC017::Send {Blind}{Up Down}
SC03A & SC017 up::Send {Blind}{Up Up}
SC03A & SC024::Send {Blind}{Left Down}
SC03A & SC024 up::Send {Blind}{Left Up}
SC03A & SC025::Send {Blind}{Down Down}
SC03A & SC025 up::Send {Blind}{Down Up}
SC03A & SC026::Send {Blind}{Right Down}
SC03A & SC026 up::Send {Blind}{Right Up}


; SC03A + uo (home, end)
SC03A & SC016::SendInput {Blind}{Home Down}
SC03A & SC016 up::SendInput {Blind}{Home Up}
SC03A & SC018::SendInput {Blind}{End Down}
SC03A & SC018 up::SendInput {Blind}{End Up}

; SC03A + hy (pgup, pgdown)
SC03A & SC023::SendInput {Blind}{PgDn Down}
SC03A & SC023 up::SendInput {Blind}{PgDn Up}
SC03A & SC015::SendInput {Blind}{PgUp Down}
SC03A & SC015 up::SendInput {Blind}{PgUp Up} 



; F R E Q  ctrl shift and Esc 
SC03A & SC021::Send {Ctrl Down}
SC03A & SC021 Up::Send {Ctrl Up}
SC03A & SC010::SendInput {Escape}{Escape}
SC03A & SC010 up::SendInput {Escape}{Escape}
SC03A & SC012::Send {Esc Down}
SC03A & SC012 Up::Send {Esc Up}
SC03A & SC013::Send {Shift Down}
SC03A & SC013 Up::Send {Shift Up}


SC03A & SC020::Send {Shift Down}
SC03A & SC020 Up::Send {Shift Up}


; SC03A + wsad (Navigate with mouse wheel keys)
;SC03A & SC011::SendInput {WheelUp}
;SC03A & SC01F::SendInput {WheelDown}
;SC03A & SC01E:: 
;  ; Scroll to the left
;  MouseGetPos,,,id, fcontrol,1
;  Loop 8 ; <-- Increase for faster scrolling
;    SendMessage, 0x114, 0, 0, %fcontrol%, ahk_id %id% ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINERIGHT.
;return
;
;SC03A & SC020:: 
;  ;Scroll to the right
;  MouseGetPos,,,id, fcontrol,1
;  Loop 8 ; <-- Increase for faster scrolling
;    SendMessage, 0x114, 1, 0, %fcontrol%, ahk_id %id% ;  0x114 is WM_HSCROLL and the 1 after it is SB_LINELEFT.
;return

; SC03A + ; p BS(insert, backspace, del)`
SC03A & SC027::SendInput {Blind}{BS Down}
SC03A & SC00E::SendInput {Blind}{Del Down}
 
; Make SC03A & Enter equivalent to Control+Enter
SC03A & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}
 
; Make SC03A & Alt Equivalent to Control+Alt
!SC03A::SendInput {Ctrl down}{Alt Down}
!SC03A up::SendInput {Ctrl up}{Alt up}
 
; SC03A + TAB/q (prev/next tab)
SC03A & SC029::SendInput {Ctrl Down}{Shift Down}{Tab Down}
SC03A & SC029 up::SendInput {Ctrl Up}{Shift Up}{Tab Up}
SC03A & SC00F::SendInput {Ctrl Down}{Tab Down}
SC03A & SC00F up::SendInput {Ctrl Up}{Tab Up}

; SC03A + m,. (Mouse buttons on keyboard)
SC03A & SC032::SendInput {LButton}
SC03A & SC033::SendInput {MButton}
SC03A & SC034::SendInput {RButton}

; SC03A + z\ (undo, redo)
;caps shift z will redo, so will caps and \
SC03A & SC02C::
  GetKeyState, sh, Shift
  if sh = D
    Send {Ctrl Down}{SC015 Down}
  else
    Send {Ctrl Down}{SC02C Down}
return

SC03A & SC02C Up::
    Send {Ctrl Up}{SC015 Up}
    Send {Ctrl Up}{SC02C Up}
return
SC03A & SC056::Send {Ctrl Down}{SC015 Down}
SC03A & SC056 Up::Send {Ctrl Up}{SC015 Up}



;Browser Navigate
;SC03A & SC012::Browser_Back ;e
;SC03A & SC013::Browser_Forward ;r

SC03A & SC035::SendInput {Blind}{Enter}
SC03A & SC028::SendInput {Blind}{Del Down}

; SC03A + xcv (cut, copy, paste)
SC03A & SC02D:: SendInput {Ctrl Down}{SC02D Down}
SC03A & SC02D up:: SendInput {Ctrl Up}{SC02D Up}
SC03A & SC02E:: SendInput {Ctrl Down}{SC02E Down}
SC03A & SC02E up:: SendInput {Ctrl Up}{SC02E Up}
SC03A & SC02F:: SendInput {Ctrl Down}{SC02F Down}
SC03A & SC02F up:: SendInput {Ctrl Up}{SC02F Up}

;Winkey and Caps (Capslock)
#SC03A:: CapsLock

; Currently unused keys are mapped to do nothing to prevent accidental text entry
;SC03A & SC012::return ;e
;SC03A & SC013::return ;r
SC03A & SC014::return ;t
;SC03A & SC019::return ;p
SC03A & SC01A::return ;[
SC03A & SC01B::return ;]
;SC03A & SC021::return ;f
;SC03A & SC022::return ;g
;SC03A & SC028::return ;'
SC03A & SC02B::return ;#
SC03A & SC030::return ;b
SC03A & SC031::return ;n
;SC03A & SC035::return ;/


; ================================= Media Keys =====================================
; ==================================================================================
;useful in case keyboard has no media keys. saves restoring a media windows just to change track. 

;previous song
SC03A & F1::
Send {Media_Prev}
return

;play/pause
SC03A & F2::
Send {Media_Play_Pause}
return

;stop
SC03A & F3::
Send {Media_Stop}
return

;next song
SC03A & F4::
Send {Media_Next}
return


SC03A & F5::
Send {Volume_Down}
return

SC03A & F6::
Send {Volume_Mute}
return

SC03A & F7::
Send {Volume_Up}
return


;#Pause::Volume_Mute
;#PgUp::Volume_Up
;#PgDn::Volume_Down



; ========================== Drag windows anywhere =================================
; ==================================================================================
; This mouse move script from: http://www.autohotkey.com/docs/scripts/EasyWindowDrag.htm
 
~MButton & LButton::
LAlt & LButton::
CoordMode, Mouse  ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0  ; Only if the window isn't SC0
    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
return

RAlt & LButton::
CoordMode, Mouse  ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0  ; Only if the window isn't SC0
    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
return

EWD_WatchMouse:
GetKeyState, EWD_LButtonState, LButton, P
if EWD_LButtonState = U  ; Button has been released, so drag is complete.
{
    SetTimer, EWD_WatchMouse, off
    return
}
GetKeyState, EWD_EscapeState, Escape, P
if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
{
    SetTimer, EWD_WatchMouse, off
    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
    return
}
; Otherwise, reposition the window to match the change in mouse coordinates
; caused by the user having dragged the mouse:
CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
SetWinDelay, -1   ; Makes the below move faster/smoother.
WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
EWD_MouseStartY := EWD_MouseY
return
;
;CAPSLOCK & LButton::
;CoordMode, Mouse  ; Switch to screen/absolute coordinates.
;MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
;WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
;WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
;if EWD_WinState = 0  ; Only if the window isn't SC0 a
;    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
;return
; 
;EWD_WatchMouse:
;GetKeyState, EWD_LButtonState, LButton, P
;if EWD_LButtonState = U  ; Button has been released, so drag is complete.
;{
;    SetTimer, EWD_WatchMouse, off
;    return
;}
;GetKeyState, EWD_EscapeState, Escape, P
;if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
;{
;    SetTimer, EWD_WatchMouse, off
;    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
;    return
;}
;; Otherwise, reposition the window to match the change in mouse coordinates
;; caused by the user having dragged the mouse:
;CoordMode, Mouse
;MouseGetPos, EWD_MouseX, EWD_MouseY
;WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
;SetWinDelay, -1   ; Makes the below move faster/smoother.
;WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
;EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
;EWD_MouseStartY := EWD_MouseY
;return
;

; ========================== HotKeys ===============================================
; ==================================================================================

RAlt & F1::KeyHistory
RAlt & F2::Reload 

; ========================== Alternative Alt Gr Remaps =============================
; ==================================================================================

; ! " £ $ %  ^ & * _ 
; + [ { ( <  > ) } ] = -

;bring usefull shift number characters to the top keyboard row 
RAlt & SC010:: Send {ShiftDown}{1}{ShiftUp}
RAlt & SC011:: Send {ShiftDown}{2}{ShiftUp}
RAlt & SC012:: Send {ShiftDown}{3}{ShiftUp}
RAlt & SC013:: Send {ShiftDown}{4}{ShiftUp}
RAlt & SC014:: Send {ShiftDown}{5}{ShiftUp}
RAlt & SC015:: Send {ShiftDown}{6}{ShiftUp}
RAlt & SC016:: Send {ShiftDown}{7}{ShiftUp}
RAlt & SC017:: Send {ShiftDown}{8}{ShiftUp}
RAlt & SC018:: Send {ShiftDown}{-}{ShiftUp}
RAlt & SC019:: Send {ShiftDown}{-}{ShiftUp}

;brackets to home keys (a,s,d,f,g  h,j,k,l,;,'
RAlt & SC01E::  Send {+}
RAlt & SC01F::  Send {[}
RAlt & SC020::  Send {{}
RAlt & SC021::  Send {(}
RAlt & SC022::  Send {<}

RAlt & SC023::  Send {>}
RAlt & SC024::  Send {)}
RAlt & SC025::  Send {}}
RAlt & SC026::  Send {]}
RAlt & SC027::  Send {=}
RAlt & SC028::  Send {-}






; ========================== Application Navigation ================================
; ==================================================================================
; ========================== Method Calls ==========================================
;
;Just some application keys that allow navigation to other apps that are open.
;This needs to be modified to open the window if no window is found. 
;This will require hardcoded values for the install locoations of the exe files or programs. 

+!v::ToggleWinMinimize("Visual Studio")
;+!s::ToggleWinMinimize("Sublime Text")
+!q::ToggleWinMinimize("SQL Server Management Studio")

;+!e::ToggleWinMinimize("ahk_class CabinetWClass")
;+!c::ToggleWinMinimize("Chrome")

!+e::
IfWinExist, ahk_class CabinetWClass
	IfWinNotActive
	{
		WinActivate
		WinWaitActive, ahk_class CabinetWClass
		Send !d
	}
	;else
	;{
		;WinMinimize
	;}
else
{
	run explorer.exe computer
	WinWaitActive ahk_class CabinetWClass
	Send !d
}
return


; ==================================================================================
; ========================== Methods ===============================================


ToggleWinMinimize(TheWindowTitle)
{
	SetTitleMatchMode,2
	DetectHiddenWindows, Off
	IfWinActive, %TheWindowTitle%
	{
		WinMinimize, %TheWindowTitle%
	}
	Else
	{
		IfWinExist, %TheWindowTitle%
		{
			WinGet, winid, ID, %TheWindowTitle%
			DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
		}
	}
	Return
}



;MOUSE MOVE NOT WORKING

;SC02A & SC03A & SC017:: ;UP
;SC02A & SC03A & SC024:: ;Left
;SC02A & SC03A & SC025:: ;Right::
;SC02A & SC03A & SC026:: ;Down::
;    R := 0
;    Loop{
;	 X := Y := 0
;	 MouseMove, X := GetKeyState("SC03A & RALT & SC024","P") ? -++R : GetKeyState("SC03A & RALT & SC025","P") ? ++R : X
;		  , Y := GetKeyState("up","P") ? -++R : GetKeyState("down","P") ? ++R : Y,,R
;	}until !X && !Y
;return

^!SC017::MouseMove, 0, -10, 100, R
^!SC024::MouseMove, -10, 0, 100, R
^!SC025::MouseMove, 0, 10, 100, R
^!SC026::MouseMove, 10, 0, 100, R


;SC03A & SC017::Send {Blind}{Up Down}
;SC03A & SC017 up::Send {Blind}{Up Up}
;SC03A & SC024::Send {Blind}{Left Down}
;SC03A & SC024 up::Send {Blind}{Left Up}
;SC03A & SC025::Send {Blind}{Down Down}
;SC03A & SC025 up::Send {Blind}{Down Up}
;SC03A & SC026::Send {Blind}{Right Down}
;SC03A & SC026 up::Send {Blind}{Right Up}


;Up::
;Left::
;Right::
;Down::
;    R := 0
;    Loop{
;	 X := Y := 0
;	 MouseMove, X := GetKeyState("left","P") ? -++R : GetKeyState("right","P") ? ++R : X
;		  , Y := GetKeyState("up","P") ? -++R : GetKeyState("down","P") ? ++R : Y,,R
;	}until !X && !Y
;return
;Esc::ExitApp
