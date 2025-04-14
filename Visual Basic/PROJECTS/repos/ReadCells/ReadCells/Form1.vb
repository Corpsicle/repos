Public Class Form1

    Dim mySS As String = "C:\Users\mike_\Documents\Data.xlsx"

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim row, col, finalRow, finalCol As Integer
        Dim xl = CreateObject("Excel.Application")

        xl.Workbooks.Open(mySS)
        xl.Worksheets("Sheet1").Activate()
        finalRow = xl.ActiveSheet.UsedRange.Rows.Count
        finalCol = xl.ActiveSheet.UsedRange.Columns.Count
        Dim vals(finalRow, finalCol) As String

        For row = 1 To finalRow
            For col = 1 To finalCol
                vals(row, col) = Str(xl.ActiveSheet.Cells(row, col).Value)
                ListBox1.Items.Add(row)
                ListBox2.Items.Add(col)
                ListBox3.Items.Add(vals(row, col))
            Next col
        Next row

        xl.Workbooks.Close()
        xl = Nothing

    End Sub
End Class
