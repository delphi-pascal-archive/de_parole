object Form2: TForm2
  Left = 219
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1077#1096#1080#1092#1088#1072#1090#1086#1088' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1092#1072#1081#1083#1072
  ClientHeight = 731
  ClientWidth = 1009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 16
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 400
    Top = 8
    Width = 41
    Height = 16
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 648
    Top = 8
    Width = 137
    Height = 17
    AutoSize = False
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 872
    Top = 89
    Width = 50
    Height = 16
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 872
    Top = 112
    Width = 50
    Height = 16
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 872
    Top = 137
    Width = 59
    Height = 16
    Caption = #1063#1080#1089#1083#1086':  '
  end
  object Button1: TButton
    Left = 872
    Top = 8
    Width = 129
    Height = 25
    Caption = #1044#1088#1091#1075#1086#1081' '#1092#1086#1088#1084#1072#1090
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 872
    Top = 680
    Width = 129
    Height = 25
    Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    Caption = #1042#1099#1093#1086#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 4
    Top = 32
    Width = 861
    Height = 505
    Color = clInfoBk
    ColCount = 35
    DefaultColWidth = 22
    DefaultRowHeight = 20
    RowCount = 100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnClick = StringGrid1Click
    OnDrawCell = StringGrid1DrawCell
    ColWidths = (
      76
      22
      22
      22
      22
      22
      22
      22
      22
      4
      22
      22
      22
      22
      22
      22
      22
      22
      17
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22)
  end
  object Button3: TButton
    Left = 872
    Top = 48
    Width = 129
    Height = 25
    Hint = #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1072#1081#1083#1072' '#1076#1072#1085#1085#1099#1093
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 872
    Top = 648
    Width = 129
    Height = 25
    Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 872
    Top = 190
    Width = 129
    Height = 275
    Caption = ' '#1058#1080#1087' '#1076#1072#1085#1085#1099#1093' '
    TabOrder = 5
  end
  object RadioButton1: TRadioButton
    Left = 880
    Top = 207
    Width = 105
    Height = 17
    Caption = 'Char 1 '#1073#1072#1081#1090
    Checked = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 880
    Top = 231
    Width = 105
    Height = 18
    Caption = 'Byte 1 '#1073#1072#1081#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 880
    Top = 255
    Width = 105
    Height = 17
    Caption = 'Int 2 '#1073#1072#1081#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 880
    Top = 279
    Width = 105
    Height = 18
    Caption = 'Int 4 '#1073#1072#1081#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = RadioButton4Click
  end
  object RadioButton5: TRadioButton
    Left = 880
    Top = 390
    Width = 105
    Height = 17
    Caption = 'Real 4 '#1073#1072#1081#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = RadioButton5Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 537
    Width = 865
    Height = 168
    Caption = #1054#1082#1085#1086' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
    TabOrder = 11
    object Memo1: TMemo
      Left = 9
      Top = 16
      Width = 608
      Height = 145
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu2
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Chart1: TChart
      Left = 624
      Top = 16
      Width = 233
      Height = 145
      Hint = #1044#1076#1086#1081#1085#1086#1077' '#1085#1072#1078#1072#1090#1080#1077' '#1084#1099#1096#1080' - '#1074#1082#1083'./'#1074#1099#1082#1083'. '#1075#1088#1072#1092#1080#1082#1080' '#1082#1088#1091#1087#1085#1099#1084' '#1087#1083#1072#1085#1086#1084
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        #1043#1088#1072#1092#1080#1082)
      Legend.Visible = False
      View3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnDblClick = Chart1DblClick
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
  end
  object RadioButton6: TRadioButton
    Left = 880
    Top = 303
    Width = 113
    Height = 17
    Caption = 'Word 2 '#1073#1072#1081#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = RadioButton6Click
  end
  object RadioButton7: TRadioButton
    Left = 880
    Top = 327
    Width = 113
    Height = 18
    Caption = 'Word 4 '#1073#1072#1081#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = RadioButton7Click
  end
  object Edit1: TEdit
    Left = 928
    Top = 134
    Width = 41
    Height = 19
    AutoSize = False
    TabOrder = 14
    Text = '1'
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
  end
  object UpDown1: TUpDown
    Left = 976
    Top = 134
    Width = 25
    Height = 19
    Associate = Edit1
    Min = 1
    Max = 32767
    Position = 1
    TabOrder = 15
    Wrap = True
    OnClick = UpDown1Click
  end
  object Button5: TButton
    Left = 872
    Top = 160
    Width = 129
    Height = 25
    Hint = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072' '#1086#1073#1083#1072#1089#1090#1080' '#1084#1077#1084#1086' '#1076#1083#1103' '#1076#1072#1085#1085#1099#1093' '#1090#1080#1087#1072' Char'
    Caption = #1064#1088#1080#1092#1090
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnClick = Button5Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 712
    Width = 1009
    Height = 19
    Panels = <>
  end
  object RadioButton8: TRadioButton
    Left = 880
    Top = 439
    Width = 105
    Height = 18
    Caption = 'Real 8 '#1073#1072#1081#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = RadioButton8Click
  end
  object GroupBox2: TGroupBox
    Left = 872
    Top = 536
    Width = 129
    Height = 97
    Caption = ' '#1057#1084#1077#1097#1077#1085#1080#1077' '
    TabOrder = 19
    object Label7: TLabel
      Left = 13
      Top = 71
      Width = 43
      Height = 16
      Hint = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1096#1072#1075#1072' - '#1082#1085#1086#1087#1082#1072' '#1064', Shift+'#1064
      Caption = #1064#1072#1075'=1'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Button6: TButton
      Left = 70
      Top = 21
      Width = 24
      Height = 23
      Caption = #1069
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 72
      Top = 65
      Width = 23
      Height = 22
      Caption = #1071
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 48
      Top = 44
      Width = 22
      Height = 21
      Caption = #1068
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 95
      Top = 42
      Width = 23
      Height = 23
      Caption = #1070
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 70
      Top = 44
      Width = 24
      Height = 21
      Caption = #1064
      TabOrder = 4
      OnClick = Button10Click
      OnMouseDown = Button10MouseDown
    end
  end
  object RadioButton9: TRadioButton
    Left = 880
    Top = 353
    Width = 105
    Height = 17
    Caption = 'Int 3 '#1073#1072#1081#1090#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = RadioButton9Click
  end
  object RadioButton10: TRadioButton
    Left = 880
    Top = 415
    Width = 105
    Height = 17
    Caption = 'Real 6 '#1073#1072#1081#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnClick = RadioButton10Click
  end
  object Chart2: TChart
    Left = 82
    Top = 55
    Width = 759
    Height = 480
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082#1080)
    Legend.Visible = False
    View3D = False
    TabOrder = 22
    Visible = False
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = #1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 752
    Top = 400
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 712
    Top = 400
  end
  object ColorDialog1: TColorDialog
    Left = 440
    Top = 496
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 112
    object N1: TMenuItem
      Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1062#1074#1077#1090' '#1074#1099#1073#1086#1088#1072
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1062#1074#1077#1090' '#1089#1080#1084#1074#1086#1083#1086#1074
      OnClick = N3Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 304
    Top = 528
    object N4: TMenuItem
      Caption = #1062#1074#1077#1090' '#1086#1082#1085#1072
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1062#1074#1077#1090' '#1089#1080#1084#1074#1086#1083#1086#1074
      OnClick = N5Click
    end
  end
end
