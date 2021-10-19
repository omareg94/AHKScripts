bd_notification_wintitle := "ahk_class bdHtmlDlg_sc ahk_exe bdagent.exe"
While(1) {
    WinKill, % bd_notification_wintitle
    Sleep, 100
}