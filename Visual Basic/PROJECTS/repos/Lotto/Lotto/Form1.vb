Public Class Form1
    Private Sub Clear()
        Label1.Text = "..."
        Label2.Text = "..."
        Label3.Text = "..."
        Label4.Text = "..."
        Label5.Text = "..."
        Label6.Text = "..."
        BtnPick.Enabled = True
        BtnReset.Enabled = False
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Clear()
        Randomize()
    End Sub

    Private Sub BtnReset_Click(sender As Object, e As EventArgs) Handles BtnReset.Click
        Clear()
    End Sub

    Private Sub BtnPick_Click(sender As Object, e As EventArgs) Handles BtnPick.Click

        ' Declare working variables.
        Dim i, r, temp, nums(60)

        ' Fill elements 1-59 with integers 1 to 59.
        For i = 1 To 59
            nums(i) = i
        Next

        ' Shuffle the values in elements 1-59.
        For i = 1 To 59
            r = Int(59 * Rnd() + 1)
            temp = nums(i)
            nums(i) = nums(r)
            nums(r) = temp
        Next

        ' Display the values in elements 1-6.
        Label1.Text = nums(1)
        Label2.Text = nums(2)
        Label3.Text = nums(3)
        Label4.Text = nums(4)
        Label5.Text = nums(5)
        Label6.Text = nums(6)

        ' Set the button states to Done.
        BtnPick.Enabled = False
        BtnReset.Enabled = True


    End Sub
End Class
