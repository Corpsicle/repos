' FileMerge.vbs
' VBScript to read text from a parent directory.
' Author Mike McGrath http://www.ineasysteps.com
' Version 1.0 - March 2018
' -----------------------------------------------'

Option Explicit

Dim fso, folder, textOut, file, textIn
 
Set fso = CreateObject( "Scripting.FileSystemObject" )
Set folder = fso.GetFolder( ".\Textfiles" ).Files
Set textOut = fso.CreateTextFile( "Merged.txt" ) 

For Each file In folder

    Set textIn = fso.OpenTextFile( file, 1 ) 
        textOut.WriteLine "File: " & file.Name
        textOut.WriteLine textIn.ReadAll
        textOut.WriteLine vbCr
    textIn.Close

Next 
 
textOut.Close