Friend Module snailModule
    Dim pw, rnd, a, stp, X0, Y0, r, s, X, Y As Primitive
    Sub Main()
        'Challenge of the Month - September 2018    by NaochanON 
        ' Graphics Challenges 2   --  Snail shell  --
        GraphicsWindow.BackgroundColor = "#AACF53" '#69B076"
        GraphicsWindow.Show()
        GraphicsWindow.Width = 800
        GraphicsWindow.Height = 600
        GraphicsWindow.Left = 5
        GraphicsWindow.Top = 5
        pw = 10
        GraphicsWindow.PenWidth = pw


        While True
            draw()
            Program.Delay(1000)
            GraphicsWindow.Clear()
        End While



    End Sub
    Sub draw()
        rnd = 1 + Microsoft.SmallBasic.Library.Math.GetRandomNumber(5)
        a = 5 * rnd
        stp = 0.05
        X0 = 300 + ((6 - rnd) * 80)
        Y0 = 250 + ((6 - rnd) * 30)
        GraphicsWindow.BrushColor = "#E9E4D4"
        r = Microsoft.SmallBasic.Library.Math.SquareRoot(a * a * 22)
        GraphicsWindow.FillTriangle(X0, Y0, X0 - (2 * r), Y0 + (r / 2), X0, Y0 + (r * 0.7))
        GraphicsWindow.FillTriangle(X0, Y0, X0 + (1.5 * r), Y0 + (r * 0.7), X0, Y0 + (r * 0.7))
        GraphicsWindow.BrushColor = "Brown"
        GraphicsWindow.PenWidth = pw * rnd / 6
        GraphicsWindow.DrawLine(X0 - (1.2 * r), Y0 + (r / 3), X0 - (1.5 * r), Y0 - (0.2 * r))
        GraphicsWindow.FillEllipse(X0 - (1.5 * r) - (r / 10), Y0 - (0.2 * r) - (r / 10), r / 5, r / 5)
        GraphicsWindow.DrawLine(X0 - (1.1 * r), Y0 + (r / 3), X0 - (1.3 * r), Y0 - (0.2 * r))
        GraphicsWindow.FillEllipse(X0 - (1.3 * r) - (r / 10), Y0 - (0.2 * r) - (r / 10), r / 5, r / 5)
        GraphicsWindow.PenWidth = pw
        For s = 22.3 To 0 Step -stp
            r = Microsoft.SmallBasic.Library.Math.SquareRoot(a * a * s) * s / 22
            X = X0 + (r * Microsoft.SmallBasic.Library.Math.Cos(-s))
            Y = Y0 + (r * Microsoft.SmallBasic.Library.Math.Sin(-s))
            GraphicsWindow.PenColor = GraphicsWindow.GetColorFromRGB(25 * rnd, (s * 10) + 34, (-s * 4) + 100)
            GraphicsWindow.DrawLine(X0, Y0, X, Y)
        Next
    End Sub
End Module
