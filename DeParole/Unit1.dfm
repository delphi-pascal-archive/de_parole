object Form1: TForm1
  Left = 134
  Top = 136
  BorderStyle = bsDialog
  Caption = 'Блоки памяти'
  ClientHeight = 516
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 50
    Height = 16
    Caption = 'Начало'
  end
  object Label2: TLabel
    Left = 200
    Top = 8
    Width = 50
    Height = 16
    Caption = 'Начало'
  end
  object Label3: TLabel
    Left = 400
    Top = 8
    Width = 50
    Height = 16
    Caption = 'Начало'
  end
  object Label4: TLabel
    Left = 600
    Top = 8
    Width = 50
    Height = 16
    Caption = 'Начало'
  end
  object Label5: TLabel
    Left = 33
    Top = 459
    Width = 40
    Height = 16
    Caption = 'Конец'
  end
  object Label6: TLabel
    Left = 209
    Top = 459
    Width = 40
    Height = 16
    Caption = 'Конец'
  end
  object Label7: TLabel
    Left = 409
    Top = 459
    Width = 40
    Height = 16
    Caption = 'Конец'
  end
  object Label8: TLabel
    Left = 609
    Top = 459
    Width = 40
    Height = 16
    Caption = 'Конец'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 31
    Width = 161
    Height = 417
    ColCount = 2
    DefaultColWidth = 60
    DefaultRowHeight = 20
    RowCount = 10000
    TabOrder = 0
    ColWidths = (
      60
      96)
  end
  object StringGrid2: TStringGrid
    Left = 184
    Top = 31
    Width = 185
    Height = 417
    ColCount = 2
    DefaultColWidth = 60
    DefaultRowHeight = 20
    RowCount = 10000
    TabOrder = 1
    ColWidths = (
      60
      96)
  end
  object StringGrid3: TStringGrid
    Left = 384
    Top = 31
    Width = 185
    Height = 417
    ColCount = 2
    DefaultColWidth = 60
    DefaultRowHeight = 20
    RowCount = 10000
    TabOrder = 2
    ColWidths = (
      60
      96)
  end
  object StringGrid4: TStringGrid
    Left = 584
    Top = 31
    Width = 185
    Height = 417
    ColCount = 2
    DefaultColWidth = 60
    DefaultRowHeight = 20
    RowCount = 10000
    TabOrder = 3
    ColWidths = (
      60
      96)
  end
  object BitBtn1: TBitBtn
    Left = 344
    Top = 488
    Width = 89
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 3
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 5
    Text = '0'
  end
  object UpDown1: TUpDown
    Left = 130
    Top = 3
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 6
    Wrap = False
    OnClick = UpDown1Click
  end
  object Edit2: TEdit
    Left = 256
    Top = 3
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 7
    Text = '0'
  end
  object UpDown2: TUpDown
    Left = 314
    Top = 3
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 8
    Wrap = False
    OnClick = UpDown2Click
  end
  object Edit3: TEdit
    Left = 456
    Top = 3
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 9
    Text = '0'
  end
  object UpDown3: TUpDown
    Left = 514
    Top = 3
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 10
    Wrap = False
    OnClick = UpDown3Click
  end
  object Edit4: TEdit
    Left = 656
    Top = 3
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 11
    Text = '0'
  end
  object UpDown4: TUpDown
    Left = 714
    Top = 3
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 12
    Wrap = False
    OnClick = UpDown4Click
  end
  object Edit5: TEdit
    Left = 80
    Top = 454
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 13
    Text = '0'
  end
  object UpDown5: TUpDown
    Left = 138
    Top = 454
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 14
    Wrap = False
    OnClick = UpDown5Click
  end
  object Edit6: TEdit
    Left = 256
    Top = 454
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 15
    Text = '0'
  end
  object UpDown6: TUpDown
    Left = 314
    Top = 454
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 16
    Wrap = False
    OnClick = UpDown6Click
  end
  object Edit7: TEdit
    Left = 456
    Top = 454
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 17
    Text = '0'
  end
  object UpDown7: TUpDown
    Left = 514
    Top = 454
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 18
    Wrap = False
    OnClick = UpDown7Click
  end
  object Edit8: TEdit
    Left = 656
    Top = 454
    Width = 55
    Height = 22
    AutoSize = False
    TabOrder = 19
    Text = '0'
  end
  object UpDown8: TUpDown
    Left = 714
    Top = 454
    Width = 20
    Height = 22
    Min = 0
    Max = 32767
    Position = 0
    TabOrder = 20
    Wrap = False
    OnClick = UpDown8Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 459
    Width = 17
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 21
  end
  object CheckBox2: TCheckBox
    Left = 184
    Top = 459
    Width = 17
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 22
  end
  object CheckBox3: TCheckBox
    Left = 384
    Top = 459
    Width = 17
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 23
  end
  object CheckBox4: TCheckBox
    Left = 584
    Top = 459
    Width = 17
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 24
  end
end
