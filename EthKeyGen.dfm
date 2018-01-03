object Form1: TForm1
  Left = 224
  Top = 199
  Width = 456
  Height = 178
  Caption = 'Ethereum Key Generator'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Generate: TButton
    Left = 112
    Top = 40
    Width = 233
    Height = 41
    Caption = 'Generate and Copy'
    TabOrder = 0
    OnClick = GenerateClick
  end
  object AlwaysOnTop: TButton
    Left = 64
    Top = 96
    Width = 105
    Height = 25
    Caption = 'Always on Top'
    TabOrder = 1
    OnClick = AlwaysOnTopClick
  end
  object KeyBox: TEdit
    Left = 8
    Top = 8
    Width = 425
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 288
    Top = 96
    Width = 105
    Height = 25
    TabOrder = 3
    Kind = bkClose
  end
end
