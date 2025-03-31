Friend Module PenWidthDemoModule
    Sub Main()
        ' PenWidthDemo.sb
        GraphicsWindow.Title = "Pen Width Demo"

        GraphicsWindow.PenWidth = 20 ' Width of circle
        GraphicsWindow.PenColor = "Lime" ' Colour of circle
        GraphicsWindow.DrawEllipse(20, 20, 100, 100) ' Circle border

        GraphicsWindow.PenWidth = 1 ' Width of square
        GraphicsWindow.PenColor = "Black" ' colour of square
        GraphicsWindow.DrawRectangle(20, 20, 100, 100) ' Square border
    End Sub
End Module
