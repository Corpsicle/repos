Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            Dim rssURL = "http://api.openweathermap.org/data/2.5/weather?appid=[YOUR-APPID-HERE]=xml&units=metric&zip=" + TxtZip.Text

            Dim rssRequest As System.Net.WebRequest = System.Net.WebRequest.Create(rssURL)
            Dim rssResponse As System.Net.WebResponse = rssRequest.GetResponse()
            Dim rssStream As System.IO.Stream = rssResponse.GetResponseStream

            Dim rssDoc As New System.Xml.XmlDocument
            rssDoc.Load(rssStream)

            Dim nodes As System.Xml.XmlNodeList
            nodes = rssDoc.SelectNodes("current")

            GroupBox1.Text = nodes.Item(0).
                SelectSingleNode("city/@name").InnerText
            TxtClimate.Text = nodes.Item(0).
                SelectSingleNode("weather/@value").InnerText
            TxtTemperature.Text = nodes.Item(0).
                SelectSingleNode("temperature/@value").InnerText + "C"
            TxtHumidity.Text = nodes.Item(0).
                SelectSingleNode("humidity/@value").InnerText + "%"

        Catch err As System.Net.WebException
            MsgBox(err.Message)
        End Try

    End Sub

End Class