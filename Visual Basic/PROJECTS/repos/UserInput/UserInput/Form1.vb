Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnAdd.Click

        Sum.Text = Val(Num1.Text) + Val(Num2.Text)

    End Sub

    Private Sub ClearBtn_Click(sender As Object, e As EventArgs) Handles BtnClear.Click

        Sum.Text = "RESULT" : Num1.Text = "" : Num2.Text = ""

    End Sub

End Class
