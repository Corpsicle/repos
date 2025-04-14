Public Class Form1
    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnAdd.Click
        Dim num1 As Long = Val(TextBox1.Text)
        Dim num2 As Long = Val(TextBox2.Text)
        LblResult.Text = num1 + num2














    End Sub

    Private Sub BtnClear_Click(sender As Object, e As EventArgs) Handles BtnClear.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        LblResult.Text = "?"
    End Sub
End Class
