Public Class Form1


    Function Square(ByVal num As Integer)
        num = num * num
        Return num
    End Function

    Private Sub routine()

        ' Dim num As Integr

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim num As Double = 7.5
        Dim str As String = "five"
        MsgBox(num * str)


        Dim i, nums(10) As Integer
        For i = 1 To 20
            nums(i) = i
        Next

    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        Dim i As Integer
        Dim pass As Integer = 0
        Dim base As Integer = 2
        For i = 1 To 2
            pass = pass + 1
            base = Square(base)
        Next


    End Sub
End Class
