Public Class Form1

    Friend WithEvents player _
        As New System.Media.SoundPlayer

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        player.Stream = My.Resources.tada
        player.Play()

    End Sub
End Class
