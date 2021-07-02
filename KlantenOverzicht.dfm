object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Klanten Overzicht'
  ClientHeight = 355
  ClientWidth = 670
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
    Tag = 8
    Left = 0
    Top = 0
    Width = 665
    Height = 305
    ColCount = 8
    FixedCols = 0
    RowCount = 3
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = GetKlantGegevens
    ScopeMappings = <>
    Left = 328
    Top = 184
  end
  object GetKlantGegevens: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM klantgegevens')
    Left = 472
    Top = 184
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGridBindSourceDB1
      Columns = <>
    end
  end
end
