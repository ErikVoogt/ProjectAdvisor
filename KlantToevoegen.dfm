object frmKlanttoevoegen: TfrmKlanttoevoegen
  Left = 0
  Top = 0
  Caption = 'Klant Toevoegen'
  ClientHeight = 383
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 50
    Height = 13
    Caption = 'Klantnaam'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 26
    Height = 13
    Caption = 'Filiaal'
  end
  object Label3: TLabel
    Left = 26
    Top = 126
    Width = 44
    Height = 13
    Caption = 'Postcode'
  end
  object Label4: TLabel
    Left = 26
    Top = 176
    Width = 29
    Height = 13
    Caption = 'Plaats'
  end
  object Label7: TLabel
    Left = 24
    Top = 224
    Width = 42
    Height = 13
    Caption = 'Telefoon'
  end
  object Label8: TLabel
    Left = 24
    Top = 269
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object KlantNaamInput: TEdit
    Left = 104
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'klantnaam'
    OnChange = KlantNaamInputChange
  end
  object FiliaalInput: TEdit
    Left = 104
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'filiaal'
    OnChange = FiliaalInputChange
  end
  object PostCodeInput: TEdit
    Left = 104
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'postcode'
    OnChange = PostCodeInputChange
  end
  object PlaatsInput: TEdit
    Left = 104
    Top = 173
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'plaats'
    OnChange = PlaatsInputChange
  end
  object TelefoonInput: TEdit
    Left = 104
    Top = 221
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'telefoon'
    OnChange = TelefoonInputChange
  end
  object EmailInput: TEdit
    Left = 104
    Top = 266
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'email'
    OnChange = EmailInputChange
  end
  object Button1: TButton
    Left = 248
    Top = 20
    Width = 128
    Height = 39
    Caption = 'Toevoegen'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 65
    Width = 128
    Height = 40
    Caption = 'Annuleren'
    TabOrder = 7
    OnClick = Button2Click
  end
end
