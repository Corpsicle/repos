Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Sales(2) As Double
        Sales(0) = 5245.0
        Sales(1) = 4785.0
        Sales(2) = 7365.0
        Dim Quarter As Double
        Quarter = Sales(0) + Sales(1) + Sales(2)
        MsgBox("Quarter Sales: " & FormatCurrency(Quarter))
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim Sales(2, 1) As Double
        Sales(0, 0) = 1255 : Sales(1, 0) = 1845.5 : Sales(2, 0) = 1065
        Sales(0, 1) = 2175 : Sales(1, 1) = 2215.5 : Sales(2, 1) = 2453

        Dim Store1, Store2 As Double
        Store1 = Sales(0, 0) + Sales(1, 0) + Sales(2, 0)
        Store2 = Sales(0, 1) + Sales(1, 1) + Sales(2, 1)

        MsgBox("Quarter Sales..." & vbCrLf &
               "Store1: " & FormatCurrency(Store1) & vbCrLf &
               "Store2: " & FormatCurrency(Store2)
          )

    End Sub
End Class
