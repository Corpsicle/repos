Friend Module Brian_s_ThemeModule
    Dim PenColour, BackgroundColour, windowWidth, windowHeight, CenterX, CenterY, Stp, I, S As Primitive
    Sub Main()
        ' Brian's Theme.sb

        PenColour = "White"
        BackgroundColour = "Black"

        GraphicsWindow.Width = 640
        GraphicsWindow.Height = 480
        GraphicsWindow.Title = "Brian's Theme"
        GraphicsWindow.BackgroundColor = BackgroundColour
        GraphicsWindow.PenColor = PenColour
        GraphicsWindow.Show()

        windowWidth = GraphicsWindow.Width      ' Width 
        windowHeight = GraphicsWindow.Height    ' and Height of window in Pixels


Start:
        GraphicsWindow.Clear()
        CenterX = Microsoft.SmallBasic.Library.Math.GetRandomNumber(windowWidth)    ' Get a Random  X coordinate for center
        CenterY = Microsoft.SmallBasic.Library.Math.GetRandomNumber(windowHeight)   ' and the same for a Y coordinate
        Stp = Microsoft.SmallBasic.Library.Math.GetRandomNumber(5) + 3              ' draw a line every Stp pixels apart

        ' Now lets draw lines first from top to bottom through the Center point  
        ' Top to Bottom
        For I = 0 To windowWidth Step Stp
            For S = 0 To 1
                GraphicsWindow.DrawLine(I, 1, CenterX, CenterY)
                GraphicsWindow.PenColor = "Black"
                GraphicsWindow.DrawLine(I + S, 1, CenterX, CenterY)
                GraphicsWindow.PenColor = PenColour
                GraphicsWindow.DrawLine(CenterX, CenterY, windowWidth - I, windowHeight)
                GraphicsWindow.PenColor = "Black"
                GraphicsWindow.DrawLine(CenterX, CenterY, windowWidth - I - S, windowHeight)
                GraphicsWindow.PenColor = PenColour
            Next
        Next

        ' and again this time from  Side to side through the center point 
        For I = windowHeight To 0 Step -Stp
            For S = 0 To 1
                GraphicsWindow.DrawLine(windowWidth, windowHeight - I, CenterX, CenterY)
                GraphicsWindow.PenColor = "Black"
                GraphicsWindow.DrawLine(windowWidth, windowHeight - I - S, CenterX, CenterY)
                GraphicsWindow.PenColor = PenColour
                GraphicsWindow.DrawLine(CenterX, CenterY, 1, windowHeight - I)
                GraphicsWindow.PenColor = "Black"
                GraphicsWindow.DrawLine(CenterX, CenterY, 1, windowHeight - I - S)
                GraphicsWindow.PenColor = PenColour
            Next
        Next

        Program.Delay(3000)
        GoTo Start
    End Sub
End Module
