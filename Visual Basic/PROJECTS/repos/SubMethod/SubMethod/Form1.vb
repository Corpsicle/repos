Public Class Form1


    Private Sub ClearForm()
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.ClearForm()
    End Sub

    Private Sub Customer(name As String, addr As String, num As String)
        TextBox1.Text = name
        TextBox2.Text = addr
        TextBox3.Text = num
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Customer("Mike McGrath", "1 Main Street, USA", "555-1234")
    End Sub
End Class
