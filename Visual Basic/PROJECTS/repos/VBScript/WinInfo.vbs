' Winserial.vbs
' VBScript to read Windows serial from the registry.
' Author Mike McGrath http://www.ineasysteps.com
' Version 1.0 - March 2018
' -----------------------------------------------' 

Option Explicit 

Dim wss, dir, sys, pid, bin

Set wss = CreateObject( "WScript.Shell" )

dir = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\"
sys = "Version: " & wss.RegRead( dir & "ProductName" ) & vbCr
pid = "ID: " & wss.RegRead( dir & "ProductID") &vbCr
bin = wss.RegRead( dir & "DigitalProductId" )

MsgBox sys & pid & "Key: " & Decrypt( bin ), vbInformation, "WinInfo"

Private Function Decrypt( bin )
 
    Dim win, map, i, j, cut, seq, fin, top, add, serial

    win = ( bin( 66 ) \ 6 ) And 1
    bin( 66 ) = ( bin( 66 ) And &HF7 ) Or ( ( win And 2 ) * 4 )
    map = "BCDFGHJKMPQRTVWXY2346789"

    i = 24    
    Do
       	cut = 0
	j = 14
        Do
           cut = cut * 256
           cut = bin( j + 52 ) + cut
           bin( j + 52 ) = ( cut \ 24 )
           cut = cut Mod 24
	   j = j-1
        Loop Until j < 0
        i = i-1
        seq = Mid( map, cut + 1, 1 ) & seq
        fin = cut
    Loop Until i < 0

    top = Mid( seq, 2, fin )
    add = "N"
    seq = Replace( seq, top, top & add, 2, 1, 0 )
    If fin = 0 Then seq = add & seq
    
    serial = ""
    For i = 1 To 25
        serial = serial + Mid( seq, i, 1 )
	If (i Mod 5 = 0 ) And ( i < 25 ) Then 
		serial = serial + "-"
	End If
    Next
    Decrypt = serial

End Function