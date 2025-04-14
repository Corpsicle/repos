Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim amount As Double = Val(TextBox1.Text)
        For counter = 1 To 10
            ListBox1.Items.Add("At " & counter &
                               "% interest is " &
                               FormatCurrency((amount * counter) / 100))
        Next
    End Sub
End Class
