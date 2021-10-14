# Robocookie

#### An AutoHotKey script to help with crafting and levequest handins for FFXIV.

This AHK script is designed to make the [cookie levequest](https://ffxiv.consolegameswiki.com/wiki/A_Cookie_for_Your_Troubles) loop a little less painful.  
AHK, short for [AutoHotKey](https://www.autohotkey.com/), is a simple scripting language. Robocookie uses AHK and leverages existing keybinds in Final Fantasy to tell it to do stuff quickly and with minimal user intervention, freeing up your time to, I dunno, clean your dang house or something.

# What it does

Robocookie performs two functions:
1. It automates crafting
2. It automates the annoying part of leve handins

## Requirements
- You must have the following keybinds in FFXIV set:
    ```
    Hotbar Slot 1: 1
    Confirm: Numpad 0
    Target Focus Target: F10
    Close UI Component: Esc
    ```
    These are the defaults so if you haven't messed with them, no need to worry.
- You need to be chill about breaking the FFXIV TOS. (As long as you don't tell anyone you're using this, you're unlikely to be found out).
- If you want to edit the script (i.e. to change the hotkeys), you will need AutoHotKey (downloadable from [here](https://www.autohotkey.com/download/ahk-install.exe).) AutoHotKey is also on [GitHub](https://github.com/Lexikos/AutoHotkey_L). If you don't want to edit it, you can just download the binary executable from [Releases](https://github.com/jade-doggerel/robocookie/releases).

# Instructions

Run the `.exe` or double click the `.ahk` file to get started. To make sure Robocookie is going, press `Ctrl-Q`. You should hear a beep.

### Crafting Automation:

Note - the timing for this is set to my macro, which is 21 seconds long[^1]. If your macro is shorter or longer, edit the line in the script that looks like this: `Sleep, 21000 ; Crafting macro duration.`

1. Put your crafting macro (as made in FFXIV) in hotbar slot 1.
2. Open the Crafting Log and select the recipe you want to make.
3. Hover your mouse over the gold 'Synthesize' button.
4. Press `Ctrl-Z` (like 'Undo')
5. A popup box will come up asking how many you'd like to craft - fill it in.
6. Wait for the magic to occur.

A sound will beep when it is done. You can press `Ctrl-Q` to cancel.  
I recommend trying this with Test Synthesis first to make sure all is working as it should.  
Remember to keep an eye on your gear durability!

### Handins:

This automates the process _after_ you have accepted the leve. I had automated the first part as well, but it was very unreliable and cost me a lot of allowances, so I have put that on hold for now.  

1. Put your HQ cookies in the top left spot of your inventory.
2. Focus target Moyce by clicking on her and pressing `Shift-F`.
3. Talk to Eirikur and accept the 'A Cookie for your Troubles' leve, but *don't close the window*.
4. Press `Ctrl-X`.

The script will close the window and hand in the cookies for you.

# Notes

If you want to change the hotkeys, it's easy to do so with AHK. Change the `^x::`, `^z::` and `^q::` lines as you see fit, using this [this syntax](https://www.autohotkey.com/docs/Hotkeys.htm).

[^1]: One day soon I will put my macro here for you to try.

