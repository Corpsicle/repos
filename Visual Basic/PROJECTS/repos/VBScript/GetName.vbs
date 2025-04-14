' GetName.vbs
' VBScript to validate username input.
' Author Mike McGrath http://www.ineasysteps.com
' Version 1.0 - March 2018
' -----------------------------------------------'

Option Explicit 

Dim name, regX

Private Function GetName()

name = InputBox( "What's Your Name?", "Question" )

' Is Cancel pressed?
If VarType( name ) = vbEmpty Then 
Exit Function

' Is empty input?
Elseif name = "" Then
MsgBox "You didn't input anything", vbInformation, "Error"
Call GetName

' Is input invalid?
Elseif Invalid() Then
MsgBox "Only A-Z and Spaces Allowed!", vbCritical, "Error"
Call GetName

' Is accepted.
Else
MsgBox "Welcome " & name & "!", vbExclamation, "Message"
End If

End Function

Private Function Invalid()
Set regX = New RegExp 
regX.Pattern = "[^A-Z a-z]"
Invalid = regX.Test( Name ) 
End Function

Call GetName