<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.LstBooks = New System.Windows.Forms.ListBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.BtnShow = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'LstBooks
        '
        Me.LstBooks.FormattingEnabled = True
        Me.LstBooks.Location = New System.Drawing.Point(37, 45)
        Me.LstBooks.Name = "LstBooks"
        Me.LstBooks.Size = New System.Drawing.Size(349, 134)
        Me.LstBooks.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(34, 19)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(72, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Select a Title:"
        '
        'BtnShow
        '
        Me.BtnShow.Location = New System.Drawing.Point(37, 200)
        Me.BtnShow.Name = "BtnShow"
        Me.BtnShow.Size = New System.Drawing.Size(349, 23)
        Me.BtnShow.TabIndex = 2
        Me.BtnShow.Text = "Show Selection"
        Me.BtnShow.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(419, 247)
        Me.Controls.Add(Me.BtnShow)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.LstBooks)
        Me.Name = "Form1"
        Me.Text = "BookPicker"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents LstBooks As ListBox
    Friend WithEvents Label1 As Label
    Friend WithEvents BtnShow As Button
End Class
