Friend Module MandelbrotModule
    Dim X, Y, width, height, winWidth, winHeight, Hue, Saturation, Lightness, precision, stripy, nowX, screenY, nowY, realVal, imagVal, color, screenX, realCopy, imagCopy, i, a, b, squareImag, squareReal, dist, RedCompo, GreenCompo, BlueCompo, H, S, L, tmp1, tmp2, tmpRGB As Primitive
    Sub Main()
        X = -2.0
        Y = -1.4
        width = 3.0
        height = 3.0
        winWidth = GraphicsWindow.Width
        winHeight = GraphicsWindow.Height
        Hue = 0
        Saturation = 50
        Lightness = 50
        precision = 2
        stripy = False

        For nowX = X To X + width Step width / winWidth * precision
            screenY = 0
            For nowY = Y To Y + height Step height / winHeight * precision
                realVal = nowX
                imagVal = nowY
                InMandelbrot()
                GraphicsWindow.BrushColor = color
                GraphicsWindow.FillRectangle(screenX, screenY, precision, precision)
                screenY = screenY + precision
            Next
            screenX = screenX + precision
        Next



    End Sub
    Sub InMandelbrot()
        realCopy = realVal
        imagCopy = imagVal
        For i = 1 To 20
            a = realCopy
            b = imagCopy
            SquareComplex()
            imagCopy = squareImag + imagVal
            realCopy = squareReal + realVal
            dist = (realCopy * realCopy) + (imagCopy * imagCopy)
            If dist > 4 Then
                Hue = i * 360 / 20
                HSL_2_RGB(L)
                color = GraphicsWindow.GetColorFromRGB(RedCompo, GreenCompo, BlueCompo)
                i = 20
            ElseIf (i = 19) And (stripy <> CType(True, Primitive)) Then
                Hue = 360
                HSL_2_RGB(L)
                color = GraphicsWindow.GetColorFromRGB(RedCompo, GreenCompo, BlueCompo)
            End If
        Next
    End Sub
    Sub HSL_2_RGB(L)
        H = Hue / 360
        S = Saturation / 100
        L = Lightness / 100
        If L < 0.5 Then
            tmp1 = L + (L * S)
        Else
            tmp1 = L + S - (L * S)
        End If
        tmp2 = (2 * L) - tmp1
        tmpRGB(1) = H + (1 / 3)
        tmpRGB(2) = H
        tmpRGB(3) = H - (1 / 3)
        If (6 * tmpRGB(1)) < 1 Then
            RedCompo = tmp2 + ((tmp1 - tmp2) * 6 * tmpRGB(1))
        ElseIf (2 * tmpRGB(1)) < 1 Then
            RedCompo = tmp1
        ElseIf (3 * tmpRGB(1)) < 2 Then
            RedCompo = tmp2 + ((tmp1 - tmp2) * ((2 / 3) - tmpRGB(1)) * 6)
        Else
            RedCompo = tmp2
        End If
        If (6 * tmpRGB(2)) < 1 Then
            GreenCompo = tmp2 + ((tmp1 - tmp2) * 6 * tmpRGB(2))
        ElseIf (2 * tmpRGB(2)) < 1 Then
            GreenCompo = tmp1
        ElseIf (3 * tmpRGB(2)) < 2 Then
            GreenCompo = tmp2 + ((tmp1 - tmp2) * ((2 / 3) - tmpRGB(2)) * 6)
        Else
            GreenCompo = tmp2
        End If
        If (6 * tmpRGB(3)) < 1 Then
            BlueCompo = tmp2 + ((tmp1 - tmp2) * 6 * tmpRGB(3))
        ElseIf (2 * tmpRGB(3)) < 1 Then
            BlueCompo = tmp1
        ElseIf (3 * tmpRGB(3)) < 2 Then
            BlueCompo = tmp2 + ((tmp1 - tmp2) * ((2 / 3) - tmpRGB(3)) * 6)
        Else
            BlueCompo = tmp2
        End If
        BlueCompo = Microsoft.SmallBasic.Library.Math.Round(Microsoft.SmallBasic.Library.Math.Max(BlueCompo * 255, 0))
        RedCompo = Microsoft.SmallBasic.Library.Math.Round(Microsoft.SmallBasic.Library.Math.Max(RedCompo * 255, 0))
        GreenCompo = Microsoft.SmallBasic.Library.Math.Round(Microsoft.SmallBasic.Library.Math.Max(GreenCompo * 255, 0))
    End Sub
    Sub SquareComplex()
        squareReal = (a * a) - (b * b)
        squareImag = 2 * a * b
    End Sub
End Module
