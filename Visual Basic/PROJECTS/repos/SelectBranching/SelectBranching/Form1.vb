Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Select Case Weekday(Now)
            Case Is = vbSaturday
                Label1.Text = "It's a Super Saturday"
            Case Is = vbSunday
                Label1.Text = "It's a Lazy Sunday"
            Case Else
                Label1.Text = "It's just another working day"
        End Select
    End Sub
End Class
