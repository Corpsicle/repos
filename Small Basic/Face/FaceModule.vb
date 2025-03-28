Friend Module FaceModule
    Sub Main()
        ' Face.sb
        GraphicsWindow.Title = "Face"

        GraphicsWindow.BrushColor = "Yellow" ' Colour  of two ears
        GraphicsWindow.FillEllipse(20, 30, 10, 40) ' Left ear
        GraphicsWindow.DrawEllipse(20, 30, 10, 40) ' Left ear border

        GraphicsWindow.FillEllipse(100, 30, 10, 40) ' Right ear
        GraphicsWindow.DrawEllipse(100, 30, 10, 40) ' Right ear border

        GraphicsWindow.BrushColor = "Lime" ' Colour of the two eyes
        GraphicsWindow.FillEllipse(40, 30, 10, 10) ' Left eye
        GraphicsWindow.DrawEllipse(40, 30, 10, 10) ' Left eye border

        GraphicsWindow.FillEllipse(80, 30, 10, 10) ' Right eye
        GraphicsWindow.DrawEllipse(80, 30, 10, 10) ' Right eye border

        GraphicsWindow.BrushColor = "SandyBrown" ' Colour of the nose
        GraphicsWindow.FillEllipse(60, 40, 10, 20) ' Nose
        GraphicsWindow.DrawEllipse(60, 40, 10, 20) ' Nose border

        GraphicsWindow.BrushColor = "LightCyan" ' Colour of the mouth
        GraphicsWindow.FillEllipse(50, 65, 30, 10) ' Mouth
        GraphicsWindow.DrawEllipse(50, 65, 30, 10) ' Mouth border

        GraphicsWindow.DrawEllipse(30, 10, 70, 70) ' Face border
    End Sub
End Module
