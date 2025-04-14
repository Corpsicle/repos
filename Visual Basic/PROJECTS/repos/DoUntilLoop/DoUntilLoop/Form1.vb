Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim Sales() As Double = {5601, 8502, 6703, 4204,
            7605, 8206, 9107, 6508, 7209, 5010, 8011, 7012}

        Dim sum As String

        Dim counter As Integer
        Do Until counter = Sales.Length
            sum = FormatCurrency(Sales(counter))
            counter = counter + 1
            sum = sum & vbTab & MonthName(counter)
            ListBox1.Items.Add(sum)
        Loop
    End Sub
End Class
