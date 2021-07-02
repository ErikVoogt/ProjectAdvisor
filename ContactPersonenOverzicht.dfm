object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Contactpersonen'
  ClientHeight = 353
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGridBindSourceDB1: TStringGrid
    Tag = 6
    Left = 0
    Top = 0
    Width = 833
    Height = 169
    ColCount = 6
    FixedCols = 0
    RowCount = 6
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64
      64)
  end
  object Sluiten: TButton
    Left = 8
    Top = 304
    Width = 121
    Height = 41
    Caption = 'Sluiten'
    TabOrder = 1
    OnClick = SluitenClick
  end
  object button1: TButton
    Left = 680
    Top = 304
    Width = 140
    Height = 33
    Caption = 'Koppelen'
    TabOrder = 2
    OnClick = button1Click
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 448
    Top = 96
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM contactpersoongegevens')
    Left = 512
    Top = 112
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 340
    Top = 189
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGridBindSourceDB1
      Columns = <>
    end
  end
end
