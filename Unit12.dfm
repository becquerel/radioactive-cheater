object FormOnlineRCh: TFormOnlineRCh
  Left = 564
  Top = 526
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Hled'#225'n'#237' - Online RCh'
  ClientHeight = 135
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  DesignSize = (
    291
    135)
  PixelsPerInch = 96
  TextHeight = 13
  object TileImage1: TTileImage
    Left = 0
    Top = 0
    Width = 291
    Height = 135
    Align = alClient
    TileImage = True
  end
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 59
    Height = 13
    Caption = 'Datab'#225'ze:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 76
    Height = 13
    Caption = 'Hledan'#253' text:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Edit1: TEdit
    Left = 96
    Top = 58
    Width = 177
    Height = 21
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Color = clWhite
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 50
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 104
    Width = 77
    Height = 17
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 24
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ComboBox1'
    Items.Strings = (
      'PC Cheaty'
      'PSX Cheaty')
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 104
    Width = 77
    Height = 17
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
