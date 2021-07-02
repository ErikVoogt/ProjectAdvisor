object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Contactpersoon Toevoegen'
  ClientHeight = 338
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Voornaam'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 58
    Height = 13
    Caption = 'Achternaam'
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Label5: TLabel
    Left = 24
    Top = 184
    Width = 42
    Height = 13
    Caption = 'Telefoon'
  end
  object VoorNaamInput: TEdit
    Left = 160
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'voornaam'
    OnChange = VoorNaamInputChange
  end
  object AchterNaamInput: TEdit
    Left = 160
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'achternaam'
    OnChange = AchterNaamInputChange
  end
  object EmailInput: TEdit
    Left = 160
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'email'
    OnChange = EmailInputChange
  end
  object TelefoonInput: TEdit
    Left = 160
    Top = 181
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'telefoon'
    OnChange = TelefoonInputChange
  end
  object Button1: TButton
    Left = 280
    Top = 296
    Width = 89
    Height = 34
    Caption = 'Toevoegen'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 296
    Width = 89
    Height = 34
    Caption = 'Annuleren'
    TabOrder = 5
    OnClick = Button2Click
  end
end
