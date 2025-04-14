' Explicit.vbs
' VBScript to demonstrate enforcing declarations.
' Author Mike McGrath http://www.ineasysteps.com
' Version 1.0 - March 2018
' -----------------------------------------------
Option Explicit

Dim bookTitle
bookTitle="Visual Basic in easy steps"
MsgBox bookTile, vbInformation, "Message"

' Edit the call to MsgBox to correct the error.
' MsgBox bookTitle, vbInformation, "Message"