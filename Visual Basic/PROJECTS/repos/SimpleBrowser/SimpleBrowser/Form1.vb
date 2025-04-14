Public Class Form1
    Private Sub BtnGo_Click(sender As Object, e As EventArgs) Handles BtnGo.Click
        WebBrowser1.Navigate(TextBox1.Text)
    End Sub
End Class
