Friend Module BoundTextDemoModule
    Sub Main()
        ' BoundTextDemo.sb
        GraphicsWindow.Title = "DrawBoundText Demo"

        ' No clipping
        GraphicsWindow.FontSize = 15 ' Smaller font
        GraphicsWindow.DrawBoundText(10, 10, 70, "Today is my birthday")

        ' With clipping
        GraphicsWindow.FontSize = 18 ' ' Larger font 
        GraphicsWindow.DrawBoundText(150, 10, 70, "Today is my birthday")
        GraphicsWindow.DrawRectangle(150, 10, 70, 80)
    End Sub
End Module
