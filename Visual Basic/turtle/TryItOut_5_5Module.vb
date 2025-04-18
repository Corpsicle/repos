Friend Module TryItOut_5_5Module
    Dim numSides, repeatCount, sideLen1, sideLen2, sideLen3, I, J As Primitive
    Sub Main()
        ' TryItOut_5_5.sb
        ' Rotate 3 polygons that have a different size

        Turtle.Speed = 10
        numSides = 6 ' Set to 3 (triangle), 4 (square)...
        repeatCount = 6 ' How many times to rotate
        sideLen1 = 30 ' Side length of polygon 1
        sideLen2 = 40 ' Side length of polygon 2
        sideLen3 = 50 ' Side length of polygon 3

        For I = 1 To repeatCount

            For J = 1 To numSides ' Draws the first polygon
                Turtle.Move(sideLen1)
                Turtle.Turn(360 / numSides)
            Next

            For J = 1 To numSides ' Draws the second polygon
                Turtle.Move(sideLen2)
                Turtle.Turn(360 / numSides)
            Next

            For J = 1 To numSides ' Draws the third polygon
                Turtle.Move(sideLen3)
                Turtle.Turn(360 / numSides)
            Next

            ' Turns the turtle to prepare for the next round
            Turtle.Turn(360 / repeatCount)
        Next
    End Sub
End Module
