Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        If (Weekday(Now) = vbSaturday) Or
            (Weekday(Now) = vbSunday) Then
            Label1.Text = "Relax - it's the weekend"
        Else
            Label1.Text = "Today's a working weekday"
        End If
    End Sub
End Class
