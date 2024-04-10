object Form5: TForm5
  Left = 2156
  Top = 145
  AutoSize = True
  BorderStyle = bsToolWindow
  Caption = 'Controlls'
  ClientHeight = 270
  ClientWidth = 189
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 189
    Height = 270
    AutoSize = True
    Color = clBlack
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 228
      Width = 185
      Height = 41
      Caption = 'OK'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 1
      Width = 185
      Height = 105
      Caption = 'Player 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 26
        Height = 16
        Caption = 'Fire:'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 24
        Height = 16
        Caption = 'Left:'
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 34
        Height = 16
        Caption = 'Right:'
      end
      object p1u: TLabel
        Left = 64
        Top = 24
        Width = 22
        Height = 16
        Caption = 'p1u'
        OnClick = p1uClick
      end
      object p1l: TLabel
        Left = 64
        Top = 48
        Width = 18
        Height = 16
        Caption = 'p1l'
        OnClick = p1lClick
      end
      object p1r: TLabel
        Left = 64
        Top = 72
        Width = 19
        Height = 16
        Caption = 'p1r'
        OnClick = p1rClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 111
      Width = 185
      Height = 105
      Caption = 'Player 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label4: TLabel
        Left = 16
        Top = 24
        Width = 26
        Height = 16
        Caption = 'Fire:'
      end
      object Label5: TLabel
        Left = 16
        Top = 48
        Width = 24
        Height = 16
        Caption = 'Left:'
      end
      object Label6: TLabel
        Left = 8
        Top = 72
        Width = 31
        Height = 16
        Caption = 'Right'
      end
      object p2u: TLabel
        Left = 64
        Top = 24
        Width = 22
        Height = 16
        Caption = 'p2u'
        OnClick = p2uClick
      end
      object p2l: TLabel
        Left = 64
        Top = 48
        Width = 18
        Height = 16
        Caption = 'p2l'
        OnClick = p2lClick
      end
      object p2r: TLabel
        Left = 64
        Top = 72
        Width = 19
        Height = 16
        Caption = 'p2r'
        OnClick = p2rClick
      end
    end
  end
end
