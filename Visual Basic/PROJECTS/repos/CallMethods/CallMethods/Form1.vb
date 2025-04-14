Public Class Form1





    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        LblRed.SetBounds(45, 45, 45, 100)
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        LblRed.Hide()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        LblRed.Show()
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        LblRed.SendToBack()
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        LblRed.BringToFront()
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        With LblBlue
            .AutoSize = False
            .BackColor = Color.Blue
            .Width = 50
            .Height = 50
            .SendToBack()
        End With
    End Sub
End Class
