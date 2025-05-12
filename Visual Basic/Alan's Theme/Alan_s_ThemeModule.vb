Friend Module Alan_s_ThemeModule
    Dim windowWidth, windowHeight, BackgroundColour, PenColour, color, namedColor, CenterX, CenterY, Stp, I, S, rgbColor, rgb, nColor, colors, index, dmin, d, red, green, blue, hex, dec, min, level, brightness, gray, len, ptr As Primitive
    Sub Main()
        ' Alan's Theme.sb
        ' Based on Brian's theme on the Apple ][ computer
        ' By Brian Howard (c) 1979 Apple Computers  inc
        ' Small Basic'd  by me (Alan) 2025 😁 


        ' Initial setup of window 
        GraphicsWindow.Width = 1024 ' Size of Window we are using  1024 x 768 pixels 
        GraphicsWindow.Height = 768
        GraphicsWindow.Title = "Alan's Theme" ' Initial window Title
        windowWidth = GraphicsWindow.Width ' Width 
        windowHeight = GraphicsWindow.Height ' and Height of window in Pixels
        BackgroundColour = "Black" ' Make Background always Black 
        GraphicsWindow.Show() ' Show the window on the Desktop
        Colors_Init()

Start:
        windowWidth = GraphicsWindow.Width
        windowHeight = GraphicsWindow.Height
        PenColour = GraphicsWindow.GetRandomColor() ' Get a Random Pen coloyr  to draw in
        color = PenColour
        NearestNamedColor()
        PenColour = namedColor
        If PenColour = BackgroundColour Then ' let's make sure we aren't drawing in the same 
            GoTo Start ' colour as the backgound 
        End If

        GraphicsWindow.BackgroundColor = BackgroundColour ' all ok then set the backround colour
        GraphicsWindow.Clear()
        CenterX = Microsoft.SmallBasic.Library.Math.GetRandomNumber(windowWidth) ' Get a Random  X coordinate for center
        CenterY = Microsoft.SmallBasic.Library.Math.GetRandomNumber(windowHeight) ' and the same for a Y coordinate
        Stp = Microsoft.SmallBasic.Library.Math.GetRandomNumber(5) + 3 ' draw a line every Stp pixels apart

        GraphicsWindow.Title = "Alan's Theme        Stepping By : " + Stp + "        Colour = " + PenColour

        ' Now lets draw lines first from top to bottom through the Center point  
        ' Top to Bottom, first in Colour, then 1 step ahead in black 
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

        Program.Delay(3000) ' wait for 3 seconds
        GoTo Start '  before starting all over again 
    End Sub
    Sub NearestNamedColor()
        ' param color - "#rrggbb"
        ' return namedColor - named color[s]
        Color_RGBToValues()
        rgbColor = rgb
        nColor = Microsoft.SmallBasic.Library.Array.GetItemCount(colors)
        index = Microsoft.SmallBasic.Library.Array.GetAllIndices(colors)
        dmin = 256 * Microsoft.SmallBasic.Library.Math.SquareRoot(3)
        namedColor = ""
        For I = 1 To nColor
            color = colors(index(I))
            Color_RGBToValues()
            d = Microsoft.SmallBasic.Library.Math.Power(rgb(1) - rgbColor(1), 2)
            d = d + Microsoft.SmallBasic.Library.Math.Power(rgb(2) - rgbColor(2), 2)
            d = d + Microsoft.SmallBasic.Library.Math.Power(rgb(3) - rgbColor(3), 2)
            d = Microsoft.SmallBasic.Library.Math.SquareRoot(d)
            If d = dmin Then
                namedColor = namedColor + "," + index(I)
            ElseIf d < dmin Then
                namedColor = index(I)
                dmin = d
            End If
        Next
    End Sub
    Sub Color_NameToRGB()
        ' Color | Convert Color to RGB
        ' param color - color name
        ' returns color -"#rrggbb"
        If Text.StartsWith(color, "#") Then
            If Text.GetLength(color) = 9 Then
                color = "#" + Text.GetSubText(color, 4, 6)
            End If
            If Text.GetLength(color) = 7 Then
                color = Text.ConvertToUpperCase(color)
            Else
                color = "#000000"
            End If
        Else
            color = Text.ConvertToLowerCase(color)
            color = colors(color)
            If color = CType("", Primitive) Then
                color = "#000000"
            End If
        End If
    End Sub
    Sub Color_RGBToValues()
        ' param color - "#rrggbb" or color name
        ' return rgb[] - 0..255 for each red, green, and blue
        red = Text.GetSubText(color, 2, 2)
        green = Text.GetSubText(color, 4, 2)
        blue = Text.GetSubText(color, 6, 2)
        hex = red
        Math_Hex2Dec()
        rgb(1) = dec
        hex = green
        Math_Hex2Dec()
        rgb(2) = dec
        hex = blue
        Math_Hex2Dec()
        rgb(3) = dec
    End Sub
    Sub Color_RGBtoGray()
        ' Color | Convert RGB to Gray
        ' param color - "#rrggbb"
        ' return brightness - (0, 1)
        ' return gray - "#rrggbb"
        Color_RGBToValues()
        min = Microsoft.SmallBasic.Library.Math.Min(Microsoft.SmallBasic.Library.Math.Min(rgb(1), rgb(2)), rgb(3))
        level = min + Microsoft.SmallBasic.Library.Math.Round((((rgb(1) - min) * 2) + ((rgb(2) - min) * 4) + ((rgb(2) - min) * 1)) / 7)
        brightness = Microsoft.SmallBasic.Library.Math.Round(level / 255 * 10000) / 10000
        gray = GraphicsWindow.GetColorFromRGB(level, level, level)
    End Sub
    Sub Colors_Init()
        colors("AliceBlue") = "#F0F8FF"
        colors("AntiqueWhite") = "#FAEBD7"
        colors("Aqua") = "#00FFFF"
        colors("Aquamarine") = "#7FFFD4"
        colors("Azure") = "#F0FFFF"
        colors("Beige") = "#F5F5DC"
        colors("Bisque") = "#FFE4C4"
        colors("Black") = "#000000"
        colors("BlanchedAlmond") = "#FFEBCD"
        colors("Blue") = "#0000FF"
        colors("BlueViolet") = "#8A2BE2"
        colors("Brown") = "#A52A2A"
        colors("Burlywood") = "#DEB887"
        colors("CadetBlue") = "#5F9EA0"
        colors("Chartreuse") = "#7FFF00"
        colors("Chocolate") = "#D2691E"
        colors("Coral") = "#FF7F50"
        colors("CornflowerBlue") = "#6495ED"
        colors("CornSilk") = "#FFF8DC"
        colors("Crimson") = "#DC143C"
        colors("Cyan") = "#00FFFF"
        colors("DarkBlue") = "#00008B"
        colors("DarkCyan") = "#008B8B"
        colors("DarkGoldenrod") = "#B8860B"
        colors("DarkGray") = "#A9A9A9"
        colors("DarkGreen") = "#006400"
        colors("DarkKhaki") = "#BDB76B"
        colors("DarkMagenta") = "#8B008B"
        colors("DarkOliveGreen") = "#556B2F"
        colors("DarkOrange") = "#FF8C00"
        colors("DarkOrchid") = "#9932CC"
        colors("DarkRed") = "#8B0000"
        colors("DarkSalmon") = "#E9967A"
        colors("DarkSeaGreen") = "#8FBC8F"
        colors("DarkSlateBlue") = "#483D8B"
        colors("DarkSlateGray") = "#2F4F4F"
        colors("DarkTurquoise") = "#00CED1"
        colors("DarkViolet") = "#9400D3"
        colors("DeepPink") = "#FF1493"
        colors("DeepSkyBlue") = "#00BFFF"
        colors("DimGray") = "#696969"
        colors("DodgerBlue") = "#1E90FF"
        colors("FireBrick") = "#B22222"
        colors("FloralWhite") = "#FFFAF0"
        colors("ForestGreen") = "#228B22"
        colors("Fuchsia") = "#FF00FF"
        colors("Gainsboro") = "#DCDCDC"
        colors("GhostWhite") = "#F8F8FF"
        colors("Gold") = "#FFD700"
        colors("Goldenrod") = "#DAA520"
        colors("Gray") = "#808080"
        colors("Green") = "#008000"
        colors("GreenYellow") = "#ADFF2F"
        colors("Honeydew") = "#F0FFF0"
        colors("HotPink") = "#FF69B4"
        colors("IndianRed") = "#CD5C5C"
        colors("Indigo") = "#4B0082"
        colors("Ivory") = "#FFFFF0"
        colors("Khaki") = "#F0E68C"
        colors("Lavender") = "#E6E6FA"
        colors("LavenderBlush") = "#FFF0F5"
        colors("LawnGreen") = "#7CFC00"
        colors("LemonChiffon") = "#FFFACD"
        colors("LightBlue") = "#ADD8E6"
        colors("LightCoral") = "#F08080"
        colors("LightCyan") = "#E0FFFF"
        colors("LightGoldenrodYellow") = "#FAFAD2"
        colors("LightGray") = "#D3D3D3"
        colors("LightGreen") = "#90EE90"
        colors("LightPink") = "#FFB6C1"
        colors("LightSalmon") = "#FFA07A"
        colors("LightSeaGreen") = "#20B2AA"
        colors("LightSkyBlue") = "#87CEFA"
        colors("LightSlateGray") = "#778899"
        colors("LightSteelBlue") = "#B0C4DE"
        colors("LightYellow") = "#FFFFE0"
        colors("Lime") = "#00FF00"
        colors("LimeGreen") = "#32CD32"
        colors("Linen") = "#FAF0E6"
        colors("Magenta") = "#FF00FF"
        colors("Maroon") = "#800000"
        colors("MediumAquamarine") = "#66CDAA"
        colors("MediumBlue") = "#0000CD"
        colors("MediumOrchid") = "#BA55D3"
        colors("MediumPurple") = "#9370DB"
        colors("MediumSeaGreen") = "#3CB371"
        colors("MediumSlateBlue") = "#7B68EE"
        colors("MediumSpringGreen") = "#00FA9A"
        colors("MediumTurquoise") = "#48D1CC"
        colors("MediumVioletRed") = "#C71585"
        colors("MidnightBlue") = "#191970"
        colors("MintCream") = "#F5FFFA"
        colors("MistyRose") = "#FFE4E1"
        colors("Moccasin") = "#FFE4B5"
        colors("NavajoWhite") = "#FFDEAD"
        colors("Navy") = "#000080"
        colors("OldLace") = "#FDF5E6"
        colors("Olive") = "#808000"
        colors("OliveDrab") = "#6B8E23"
        colors("Orange") = "#FFA500"
        colors("OrangeRed") = "#FF4500"
        colors("Orchid") = "#DA70D6"
        colors("PaleGoldenrod") = "#EEE8AA"
        colors("PaleGreen") = "#98FB98"
        colors("PaleTurquoise") = "#AFEEEE"
        colors("PaleVioletRed") = "#DB7093"
        colors("PapayaWhip") = "#FFEFD5"
        colors("PeachPuff") = "#FFDAB9"
        colors("Peru") = "#CD853F"
        colors("Pink") = "#FFC0CB"
        colors("Plum") = "#DDA0DD"
        colors("PowderBlue") = "#B0E0E6"
        colors("Purple") = "#800080"
        colors("Red") = "#FF0000"
        colors("RosyBrown") = "#BC8F8F"
        colors("RoyalBlue") = "#4169E1"
        colors("SaddleBrown") = "#8B4513"
        colors("Salmon") = "#FA8072"
        colors("SandyBrown") = "#F4A460"
        colors("SeaGreen") = "#2E8B57"
        colors("Seashell") = "#FFF5EE"
        colors("Sienna") = "#A0522D"
        colors("Silver") = "#C0C0C0"
        colors("SkyBlue") = "#87CEEB"
        colors("SlateBlue") = "#6A5ACD"
        colors("SlateGray") = "#708090"
        colors("Snow") = "#FFFAFA"
        colors("SpringGreen") = "#00FF7F"
        colors("SteelBlue") = "#4682B4"
        colors("Tan") = "#D2B48C"
        colors("Teal") = "#008080"
        colors("Thistle") = "#D8BFD8"
        colors("Tomato") = "#FF6347"
        colors("Turquoise") = "#40E0D0"
        colors("Violet") = "#EE82EE"
        colors("Wheat") = "#F5DEB3"
        colors("White") = "#FFFFFF"
        colors("Whitesmoke") = "#F5F5F5"
        colors("Yellow") = "#FFFF00"
        colors("YellowGreen") = "#9ACD32"
    End Sub
    Sub Math_Hex2Dec()
        ' Math | Convert hexadecimal to decimal
        ' param hex - hexadecimal
        ' return dec - decimal
        dec = 0
        len = Text.GetLength(hex)
        For ptr = 1 To len
            dec = (dec * 16) + Text.GetIndexOf("0123456789ABCDEF", Text.GetSubText(hex, ptr, 1)) - 1
        Next
    End Sub
End Module
