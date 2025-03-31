Friend Module FontsModule
    Sub Main()
        ' Fonts.sb
        GraphicsWindow.Title = "Fonts"
        GraphicsWindow.BackgroundColor = "LightYellow"
        GraphicsWindow.FontName = "Times New Roman"
        GraphicsWindow.FontSize = 120
        GraphicsWindow.FontItalic = True

        GraphicsWindow.BrushColor = "Silver" ' Text shadow colour
        GraphicsWindow.DrawText(5, 5, "Hello!") ' Shadow position/Text

        GraphicsWindow.BrushColor = "RosyBrown" ' Text colour
        GraphicsWindow.DrawText(0, 0, "Hello!") ' Position and text
    End Sub
End Module
