﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
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
        Me.LblMsg = New System.Windows.Forms.Label()
        Me.TxtGuess = New System.Windows.Forms.TextBox()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'LblMsg
        '
        Me.LblMsg.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.LblMsg.Location = New System.Drawing.Point(12, 9)
        Me.LblMsg.Name = "LblMsg"
        Me.LblMsg.Size = New System.Drawing.Size(331, 55)
        Me.LblMsg.TabIndex = 0
        Me.LblMsg.Text = "I have thought of a number between 1 and 20 Can you guess what it is?"
        '
        'TxtGuess
        '
        Me.TxtGuess.Location = New System.Drawing.Point(16, 67)
        Me.TxtGuess.Name = "TxtGuess"
        Me.TxtGuess.Size = New System.Drawing.Size(100, 20)
        Me.TxtGuess.TabIndex = 2
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(155, 67)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(188, 23)
        Me.Button1.TabIndex = 3
        Me.Button1.Text = "Guess"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(356, 129)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.TxtGuess)
        Me.Controls.Add(Me.LblMsg)
        Me.Name = "Form1"
        Me.Text = "RandomGenerator"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents LblMsg As Label
    Friend WithEvents TxtGuess As TextBox
    Friend WithEvents Button1 As Button
End Class
