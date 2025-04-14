Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub BtnColor_Click(sender As Object, e As EventArgs) Handles BtnColor.Click
        If ColorDialog1.ShowDialog = DialogResult.OK Then
            Me.BackColor = ColorDialog1.Color
        End If
    End Sub

    Private Sub BtnFont_Click(sender As Object, e As EventArgs) Handles BtnFont.Click
        If FontDialog1.ShowDialog = DialogResult.OK Then
            TextBox1.Font = FontDialog1.Font
        End If
    End Sub

    Private Sub BtnImage_Click(sender As Object, e As EventArgs) Handles BtnImage.Click
        If OpenFileDialog1.ShowDialog = DialogResult.OK Then
            Try
                PictureBox1.Image =
                    New Bitmap(OpenFileDialog1.FileName)
            Catch ex As ArgumentException
                MsgBox("Not an image")
            End Try
        End If
    End Sub
End Class
