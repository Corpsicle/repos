Public Class Form1
    Private Sub NewToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NewToolStripMenuItem.Click
        NewFile()
    End Sub
    Private Sub NewFile()
        RichTextBox1.Text = ""
        ToolStripStatusLabel1.Text = "Ready"
    End Sub

    Private Sub NewToolStripButton_Click(sender As Object, e As EventArgs) Handles NewToolStripButton.Click
        NewFile()

    End Sub

    Private Sub OpenToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenToolStripMenuItem.Click
        OpenFile()
    End Sub

    Private Sub OpenToolStripButton_Click(sender As Object, e As EventArgs) Handles OpenToolStripButton.Click
        OpenFile()
    End Sub

    Private Sub OpenFile()
        OpenFileDialog1.Filter = "Text Files | *.txt"
        If OpenFileDialog1.ShowDialog = DialogResult.OK Then
            RichTextBox1.LoadFile(OpenFileDialog1.FileName,
            RichTextBoxStreamType.PlainText)
        End If
    End Sub

    Private Sub SaveToolStripButton_Click(sender As Object, e As EventArgs) Handles SaveToolStripButton.Click
        SaveFile()
    End Sub

    Private Sub SaveToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveToolStripMenuItem.Click
        SaveFile()
    End Sub
    Private Sub SaveFile()
        SaveFileDialog1.Filter = "Text Files | *.txt"
        If SaveFileDialog1.ShowDialog = DialogResult.OK Then
            RichTextBox1.SaveFile(SaveFileDialog1.FileName,
            RichTextBoxStreamType.PlainText)
        End If
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem.Click
        Application.Exit()
    End Sub

    Private Sub AboutToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AboutToolStripMenuItem.Click
        AboutBox1.ShowDialog()

    End Sub
End Class
