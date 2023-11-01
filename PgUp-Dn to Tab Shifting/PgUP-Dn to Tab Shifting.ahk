#Requires AutoHotkey v2.0

; Use this to get the active window name for testing
;LWin:: MsgBox "The active window is '" WinGetTitle("A") "'."


PgUp::{
    title:= WinGetTitle("A")
    
    If BrowserCheck(title)
        Send "{LCtrl down}{PgUp}{LCtrl up}"
    Else
        Send "{PgUp}"
}

PgDn::{
    title:= WinGetTitle("A")
    
    If BrowserCheck(title)
        Send "{LCtrl down}{PgDn}{LCtrl up}"
    Else
        Send "{PgDn}"
}

BrowserCheck(title)
{
    BrowserList := ["Brave",
                    "Google Chrome", 
                    "Microsoft Edge", 
                    "Mozilla Firefox",
                    "Opera"]

    for browser in BrowserList

    If InStr(title, browser)
        return True
    Else
        return False
}