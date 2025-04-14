Public Class Form1
    Private Sub BtnShow_Click(sender As Object, e As EventArgs) Handles BtnShow.Click
        LstPizza.Items.Clear()
        If RadioButton1.Checked = True Then
            LstPizza.Items.Add(RadioButton1.Text)
        End If
        If RadioButton2.Checked = True Then
            LstPizza.Items.Add(RadioButton2.Text)
        End If

        If CheckBox1.Checked = True Then
            LstPizza.Items.Add(CheckBox1.Text)
        End If
        If CheckBox2.Checked = True Then
            LstPizza.Items.Add(CheckBox2.Text)
        End If

    End Sub

    Private Sub BtnClear_Click(sender As Object, e As EventArgs) Handles BtnClear.Click
        LstPizza.Items.Clear()
        RadioButton1.Checked = False
        RadioButton2.Checked = False
        CheckBox1.Checked = False
        CheckBox2.Checked = False
    End Sub
End Class
