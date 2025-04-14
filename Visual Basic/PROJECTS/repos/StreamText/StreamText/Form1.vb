Public Class Form1

    Dim txt As String

    Private Sub BtnOpen_Click(sender As Object, e As EventArgs) Handles BtnOpen.Click

        If OpenFileDialog1.ShowDialog = DialogResult.OK Then
            Dim stream As New System.IO.FileStream _
                (OpenFileDialog1.FileName, System.IO.FileMode.Open)

            Dim reader As New System.IO.StreamReader(stream)
            txt = reader.ReadToEnd
            reader.Dispose()
            stream.Dispose()
            TextBox1.Text = txt
        End If

    End Sub

    Private Sub BtnPrint_Click(sender As Object, e As EventArgs) Handles BtnPrint.Click

        PrintDialog1.AllowSomePages = True
        PrintDialog1.ShowHelp = True
        If PrintDialog1.ShowDialog = DialogResult.OK Then
            If txt <> "" Then
                PrintDocument1.Print()
            End If
        End If

    End Sub

    Private Sub PrintDocument1_PrintPage(sender As Object, e As Printing.PrintPageEventArgs) Handles PrintDocument1.PrintPage

        e.Graphics.DrawString(txt, Me.Font, Brushes.Black, e.MarginBounds, StringFormat.GenericTypographic)
    End Sub

End Class
