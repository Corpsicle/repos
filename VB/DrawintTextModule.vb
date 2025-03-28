Module DrawintTextModule
    Public Sub Main()
        'Welcome to Small Basic! 
        'Below is a sample code to print 'Hello, World!' on the screen. 
        'Press Run(F5) for output.
        GraphicsWindow.Show()
        GraphicsWindow.Width = 400
        GraphicsWindow.Height = 150
        GraphicsWindow.BrushColor = "Red"
        GraphicsWindow.FontSize = 24
        GraphicsWindow.FontBold = False
        GraphicsWindow.DrawText(50, 50, "Drawing text ...")
    End Sub
End Module
