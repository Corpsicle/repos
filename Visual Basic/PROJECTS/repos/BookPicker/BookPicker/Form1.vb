Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        LstBooks.Items.Add("Java in easy steps")
        LstBooks.Items.Add("C Programming in easy steps")
        LstBooks.Items.Add("C# Programming in easy steps")
        LstBooks.Items.Add("C++ Programming in easy steps")
        LstBooks.Items.Add("Coding for Kids in easy steps")
        LstBooks.Items.Add("Coding for Beginners in easy steps")
        LstBooks.Items.Add("Python in easy steps")
        LstBooks.Items.Add("PHP & MySQL in easy steps")

        LstBooks.Sorted = True
        LstBooks.SelectedIndex = 0
        Me.Text = LstBooks.Items.Count &
            " More Books by Mike McGrath"
    End Sub

    Private Sub BtnShow_Click(sender As Object, e As EventArgs) Handles BtnShow.Click
        MsgBox(LstBooks.Text)
    End Sub
End Class
