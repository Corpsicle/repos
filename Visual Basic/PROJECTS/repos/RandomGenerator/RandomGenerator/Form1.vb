Public Class Form1

    Dim num As Integer

    Private Sub GetNumber()
        num = Math.Ceiling(Rnd() * 20)
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Randomize()
        GetNumber()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Select Case (Val(TxtGuess.Text))
            Case Is > num
                LblMsg.Text = TxtGuess.Text & " is too high"
            Case Is < num
                LblMsg.Text = TxtGuess.Text & " is too low"
            Case Is = num
                LblMsg.Text = TxtGuess.Text & " is correct" &
                    "I have thought of another number - Try again!"
                GetNumber()
        End Select
        TxtGuess.Text = ""
    End Sub
End Class
