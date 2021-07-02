object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Start Scherm'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 145
    Height = 41
    Caption = 'Klant Toevoegen'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 89
    Width = 145
    Height = 41
    Caption = 'Overzicht Klanten'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 224
    Width = 145
    Height = 41
    Caption = 'Contactpersoon Toevoegen'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 160
    Width = 145
    Height = 41
    Caption = 'Overzicht Contactpersonen'
    TabOrder = 3
    OnClick = Button4Click
  end
  object SearchBox1: TSearchBox
    Left = 400
    Top = 34
    Width = 145
    Height = 21
    TabOrder = 4
    TextHint = 'Klant zoeken'
    OnKeyPress = SearchBox1KeyPress
  end
  object SearchBox2: TSearchBox
    Left = 400
    Top = 99
    Width = 145
    Height = 21
    TabOrder = 5
    TextHint = 'Contactpersoon zoeken'
    OnKeyPress = SearchBox2KeyPress
  end
end
