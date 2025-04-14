Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim bool As Boolean = False
        Dim str As String = "Some text"
        Dim int As Integer = 1000
        Dim num As Double = 7.5
        ListBox1.Items.Add("bool value is " & bool)
        ListBox1.Items.Add("str value is " & str)
        ListBox1.Items.Add("int value is " & int)
        ListBox1.Items.Add("num value is " & num)
    End Sub
End Class
