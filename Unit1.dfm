object Form1: TForm1
  Left = 212
  Top = 127
  Width = 531
  Height = 101
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 0
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 0
    Top = 32
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 256
    Top = 8
    Width = 121
    Height = 22
    MaxValue = 100000
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object Button1: TButton
    Left = 256
    Top = 32
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1091#1089#1082
    TabOrder = 3
    OnClick = Button1Click
  end
  object SpinEdit2: TSpinEdit
    Left = 336
    Top = 32
    Width = 121
    Height = 22
    Increment = 100
    MaxValue = 100000
    MinValue = 1
    TabOrder = 4
    Value = 1000
  end
end
