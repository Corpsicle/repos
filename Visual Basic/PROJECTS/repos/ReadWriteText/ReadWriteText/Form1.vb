Public Class Form1


    Dim myFile As String = "C:\Users\mike_\Desktop\log.txt"

    Private Sub BtnWrite_Click(sender As Object, e As EventArgs) Handles BtnWrite.Click
        My.Computer.FileSystem.WriteAllText(
            myFile, TextBox1.Text & vbCrLf, True)
        TextBox1.Text = ""
    End Sub

    Private Sub BtnRead_Click(sender As Object, e As EventArgs) Handles BtnRead.Click
        Try
            TextBox2.Text =
                My.Computer.FileSystem.ReadAllText(myFile)
        Catch ex As Exception
            TextBox2.Text = "Unable to read from " & myFile
        End Try
    End Sub

    Private Sub BtnDelete_Click(sender As Object, e As EventArgs) Handles BtnDelete.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        If My.Computer.FileSystem.FileExists(myFile) Then
            My.Computer.FileSystem.DeleteFile(myFile)
        End If
    End Sub
End Class
