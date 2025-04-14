Public Class Form1
    Private Sub BtnCount_Click(sender As Object, e As EventArgs) Handles BtnCount.Click
        MsgBox("You typed: " &
               Str(Len(TextBox1.Text)) & " characters")
    End Sub
End Class
