Friend Module HouseModule
    Sub Main()
        ' House.sb
        GraphicsWindow.Title = "House"
        GraphicsWindow.DrawRectangle(30, 50, 80, 40)         ' Front 0f the house

        GraphicsWindow.BrushColor = "Orange"                 ' Door is light orange
        GraphicsWindow.FillRectangle(40, 60, 20, 30)         ' Door
        GraphicsWindow.DrawRectangle(40, 60, 20, 30)         ' Door Border

        GraphicsWindow.BrushColor = "LightBlue"              ' Window is light blue
        GraphicsWindow.FillRectangle(80, 60, 20, 20)         ' Window
        GraphicsWindow.DrawRectangle(80, 60, 20, 20)         ' Window border

        GraphicsWindow.DrawRectangle(100, 20, 10, 30)        ' Chimney

        GraphicsWindow.BrushColor = "Grey"                   ' Roof is grey
        GraphicsWindow.FillTriangle(30, 50, 70, 10, 110, 50) ' Roof
        GraphicsWindow.DrawTriangle(30, 50, 70, 10, 110, 50) ' Roof border
    End Sub
End Module
