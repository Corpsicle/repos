Public Class Form1
    Private Sub BtnAdd_Click(sender As Object, e As EventArgs) Handles BtnAdd.Click


        Try

            Dim num1 As Integer = Val(TextBox1.Text)
            Dim num2 As Integer = Val(TextBox2.Text)
            LblResult.Text = num1 + num2

        Catch ex As OverflowException

            MsgBox("only numbers up to 2 Billion are allowed")

        End Try




















    End Sub

    Private Sub BtnClear_Click(sender As Object, e As EventArgs) Handles BtnClear.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        LblResult.Text = "?"
    End Sub
End Class
