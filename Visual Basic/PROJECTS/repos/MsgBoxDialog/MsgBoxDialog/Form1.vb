﻿Public Class Form1
    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        TxtValue.Text = MsgBox("Click any Button",
        vbYesNoCancel + vbQuestion)

    End Sub
End Class
