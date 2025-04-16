Friend Module Brian_s_ThemeModule
    Dim windowWidth, windowHeight, PenColour, BackgroundColour, CenterX, CenterY, Stp, I, S As Primitive
    Sub Main()
        ' Brian's Theme.sb
        ' Initial setup of window 
        GraphicsWindow.Width = 1024 ' Size of Window we are using  1024 x 768 pixels 
        GraphicsWindow.Height = 768
        GraphicsWindow.Title = "Brian's Theme" ' Initial window Title
        GraphicsWindow.Show()
        windowWidth = GraphicsWindow.Width ' Width 
        windowHeight = GraphicsWindow.Height ' and Height of window in Pixels

Start:
        PenColour = GraphicsWindow.GetRandomColor() ' Get a Random Pen coloyr  to draw in
        BackgroundColour = GraphicsWindow.GetRandomColor() ' Get a randome Background colour to draw on 
        If PenColour = BackgroundColour Then ' let's make sure we aren't drawing in the same 
            GoTo Start ' colour as the backgound 
        End If
        GraphicsWindow.BackgroundColor = BackgroundColour ' all ok then set the backround colour
        GraphicsWindow.Clear()
        CenterX = Microsoft.SmallBasic.Library.Math.GetRandomNumber(windowWidth) ' Get a Random  X coordinate for center
        CenterY = Microsoft.SmallBasic.Library.Math.GetRandomNumber(windowHeight) ' and the same for a Y coordinate
        Stp = Microsoft.SmallBasic.Library.Math.GetRandomNumber(5) + 3 ' draw a line every Stp pixels apart

        GraphicsWindow.Title = "Brian's Theme        Stepping By : " + Stp + "          PenColour = " + PenColour + "    Backgound Colour = " + BackgroundColour
        ' Now lets draw lines first from top to bottom through the Center point  
        ' Top to Bottom
        For I = 0 To windowWidth Step Stp
            For S = 0 To 1
                GraphicsWindow.DrawLine(I, 1, CenterX, CenterY)
                GraphicsWindow.PenColor = BackgroundColour
                GraphicsWindow.DrawLine(I + S, 1, CenterX, CenterY)
                GraphicsWindow.PenColor = PenColour
                GraphicsWindow.DrawLine(CenterX, CenterY, windowWidth - I, windowHeight)
                GraphicsWindow.PenColor = BackgroundColour
                GraphicsWindow.DrawLine(CenterX, CenterY, windowWidth - I - S, windowHeight)
                GraphicsWindow.PenColor = PenColour
            Next
        Next

        ' and again this time from  Side to side through the center point 
        For I = 0 To windowHeight Step Stp
            For S = 0 To 1
                GraphicsWindow.DrawLine(windowWidth, I, CenterX, CenterY)
                GraphicsWindow.PenColor = BackgroundColour
                GraphicsWindow.DrawLine(windowWidth, I + S, CenterX, CenterY)
                GraphicsWindow.PenColor = PenColour
                GraphicsWindow.DrawLine(CenterX, CenterY, 1, windowHeight - I)
                GraphicsWindow.PenColor = BackgroundColour
                GraphicsWindow.DrawLine(CenterX, CenterY, 1, windowHeight - I - S)
                GraphicsWindow.PenColor = PenColour
            Next
        Next

        Program.Delay(3000)
        GoTo Start
    End Sub
End Module
