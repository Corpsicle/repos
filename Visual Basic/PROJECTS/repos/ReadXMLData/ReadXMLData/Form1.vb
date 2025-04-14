Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim doc As New System.Xml.XmlDocument
        doc.Load("C:\Users\mike_\Documents\Books.xml")

        Dim nodes As System.Xml.XmlNodeList
        nodes = doc.SelectNodes("shelf/book")

        Dim counter = 0
        Do Until counter = nodes.Count
            ListBox1.Items.Add(nodes.Item(counter) _
                               .SelectSingleNode("title").InnerText & " by " _
                               & nodes.Item(counter) _
                               .SelectSingleNode("author").InnerText & vbCrLf)
            counter += 1
        Loop


    End Sub
End Class
