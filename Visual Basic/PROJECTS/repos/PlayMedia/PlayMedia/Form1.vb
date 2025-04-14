Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        With OpenFileDialog1
            .Title = "Media File Browser"
            .Filter = "Media Files (*.mp4;*.mp3)|*.mp4;*.mp3"
            .FileName = ""
            .CheckFileExists = True
        End With

        If OpenFileDialog1.ShowDialog = DialogResult.OK Then
            AxWindowsMediaPlayer1.URL =
                OpenFileDialog1.FileName
        End If
    End Sub
End Class
