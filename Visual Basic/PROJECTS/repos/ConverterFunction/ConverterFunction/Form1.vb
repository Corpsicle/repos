Public Class Form1

    Private Function Inches(ByVal Cm As String) As Double
        Inches = Cm / 2.54
        Inches = FormatNumber(Inches, 2)
        Return Inches
    End Function

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = Inches(TextBox1.Text) & " Inches"
    End Sub
End Class
