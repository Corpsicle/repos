Public Class Form1
    Private Sub BtnOpen_Click(sender As Object, e As EventArgs) Handles BtnOpen.Click
        With OpenFileDialog1
            .Title = "Open File"
            .Filter = "Rich Text Files | *.rtf"
            .FileName = ""
            .CheckFileExists = True
        End With

        If OpenFileDialog1.ShowDialog = DialogResult.OK Then
            RichTextBox1.LoadFile(OpenFileDialog1.FileName,
                             RichTextBoxStreamType.RichText)
        End If
    End Sub

    Private Sub BtnSave_Click(sender As Object, e As EventArgs) Handles BtnSave.Click
        With SaveFileDialog1
            .Title = "Save File"
            .Filter = "Rich Text Files | *.rtf"
            .DefaultExt = ".rtf"
            .OverwritePrompt = True
        End With

        If SaveFileDialog1.ShowDialog = DialogResult.OK Then
            RichTextBox1.SaveFile(SaveFileDialog1.FileName,
RichTextBoxStreamType.RichText)
        End If

    End Sub

    Private Sub BtnPrint_Click(sender As Object, e As EventArgs) Handles BtnPrint.Click
        If PrintDialog1.ShowDialog = DialogResult.OK Then
            ' Insert code here to process and print.
        End If
    End Sub
End Class
