object form3: Tform3
  Left = 1594
  Top = 610
  BorderStyle = bsToolWindow
  Caption = 'Settings'
  ClientHeight = 238
  ClientWidth = 341
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 0
    Top = 200
    Width = 121
    Height = 30
    Caption = 'OK'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 220
    Top = 200
    Width = 121
    Height = 30
    Caption = 'Cancel'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object speed: TGroupBox
    Left = 8
    Top = 8
    Width = 153
    Height = 113
    Caption = 'Game speed'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object m: TRadioButton
      Left = 8
      Top = 56
      Width = 113
      Height = 17
      Caption = 'Standard'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object h: TRadioButton
      Left = 8
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Fast'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object vh: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Very fast'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object lifes: TGroupBox
    Left = 168
    Top = 8
    Width = 169
    Height = 113
    Caption = 'Lifes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object l3: TRadioButton
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = '3'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = l3Click
    end
    object l2: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = l2Click
    end
    object l1: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = l1Click
    end
    object dif: TRadioButton
      Left = 8
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Custom:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = difClick
    end
    object dl: TSpinEdit
      Left = 8
      Top = 80
      Width = 81
      Height = 24
      AutoSize = False
      Color = clBlack
      Ctl3D = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 3
      MaxValue = 500
      MinValue = 4
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Value = 4
    end
  end
  object players: TGroupBox
    Left = 8
    Top = 128
    Width = 329
    Height = 65
    Caption = 'Players'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 25
      Height = 16
      Caption = 'First'
    end
    object Label2: TLabel
      Left = 200
      Top = 16
      Width = 47
      Height = 16
      Caption = 'Second'
    end
    object pl1: TEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 24
      Color = clBlack
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      Text = 'User1'
    end
    object pl2: TEdit
      Left = 200
      Top = 32
      Width = 121
      Height = 24
      Color = clBlack
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'User2'
    end
  end
end
