#NoEnv
SendMode Input
SetKeyDelay, 100, 30 ; Tested to work reliably with FFXIV.

^z::
  MouseGetPos, xpos, ypos
  InputBox, qty, Enter quantity, How many do you want to make?
  if ErrorLevel
    Exit
  Sleep, 300
  iteration := 0
  Loop, %qty%
  {
    iteration := iteration + 1
    WinActivate, FINAL FANTASY XIV ahk_class FFXIVGAME
    Sleep, 333
    Click, %xpos% %ypos% Left, Down
    Sleep, 50
    Click, %xpos% %ypos% Left, Up
    ToolTip, %iteration% of %qty% (press ctrl+q to stop)
    Sleep, 1400 ; Wait between clicking 'Synthesize' and starting craft.
    Send, {1}
    Sleep, 21000 ; Crafting macro duration.
    Sleep, 2000 ; Wait to get back to the Crafting Log from synthesis.
  }
  ToolTip ; Clear tooltip.
  SoundBeep 1000, 100
  SoundBeep 500, 100
return

^x::
  MoyceWait := 500 ; This is the duration to wait between bursts. Could be finessed but I have run out of leve allowances.
  WinActivate, FINAL FANTASY XIV ahk_class FFXIVGAME
  Sleep, 333
  MouseGetPos, xpos, ypos
  BlockInput, On
  MouseMove, 100, 100
  Sleep, 100
  Send, {Escape}
  Sleep, 400
  Send, {Escape}
  Sleep, 400
  Send, {F10} ; Target focus target (Moyce)
  Sleep, 400

  Send, {Numpad0}

  Sleep, %MoyceWait%

  Loop, 5
  {
    Send, {Numpad0}
  }

  Sleep, %MoyceWait%

  Loop, 3
  {
    Send, {Numpad0}
  }

  Sleep, %MoyceWait%

  Loop, 6
  {
    Send, {Numpad0}
  }

  Sleep, %MoyceWait%

  Loop, 3
  {
    Send, {Numpad0}
  }

  Sleep, %MoyceWait%

  Loop, 6
  {
    Send, {Numpad0}
  }

  Sleep, %MoyceWait%

  Loop, 3
  {
    Send, {Numpad0}
  }

  BlockInput, Off
  MouseMove, %xpos%, %ypos%
return

^q::
  SoundBeep 1000, 100
  SoundBeep 500, 100
  Reload
