Friend Module SailBoatModule
    Sub Main()
        ' Sailboat.sb
        GraphicsWindow.Title = "SailBoat"
        GraphicsWindow.DrawLine(10, 70, 130, 70) ' Top of boat
        GraphicsWindow.DrawLine(130, 70, 110, 90) ' Right side
        GraphicsWindow.DrawLine(110, 90, 30, 90) ' Bottom of boat
        GraphicsWindow.DrawLine(30, 90, 10, 70) ' Left edge
        GraphicsWindow.DrawLine(100, 70, 100, 10) ' Mast
        GraphicsWindow.DrawLine(100, 10, 40, 50) ' Slanted sail edge
        GraphicsWindow.DrawLine(40, 50, 100, 50) ' Bottom edge of sail
    End Sub
End Module
