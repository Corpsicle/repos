Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnRead.Click

        DataSet1.ReadXml("C:\Users\mike_\Documents\Books.xml")

        DataGridView1.DataSource = DataSet1
        DataGridView1.DataMember = "book"

    End Sub

    Private Sub BtnWrite_Click(sender As Object, e As EventArgs) Handles BtnWrite.Click

        DataSet1.WriteXml("C:\Users\mike_\Documents\Books.xml")

    End Sub
End Class
