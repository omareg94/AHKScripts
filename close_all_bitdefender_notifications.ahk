; Temporary solution for Bitdefender many notification popups issue: https://community.bitdefender.com/en/discussion/82379/how-to-stop-bitdefender-popups-notifications/p1
#Persistent
bd_notification_wintitle := "ahk_class bdHtmlDlg_sc ahk_exe bdagent.exe"
SetTimer, closeBDNotifications, 1000
return

closeBDNotifications:
  Loop {
    if WinExist(bd_notification_wintitle) {
      WinKill, % bd_notification_wintitle    ; better than WinClose
      Sleep, 50
    } else {
      Break
    }
  }
return
