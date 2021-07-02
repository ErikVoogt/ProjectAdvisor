object Koppelen: TKoppelen
  Left = 0
  Top = 0
  Caption = 'Koppelen'
  ClientHeight = 299
  ClientWidth = 635
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
  object ComboBox1: TComboBox
    Left = 32
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 432
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'ComboBox2'
  end
  object Koppel: TButton
    Left = 264
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Koppel'
    TabOrder = 2
    OnClick = KoppelClick
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 144
    Top = 168
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT id,voornaam,achternaam FROM contactpersoongegevens')
    Left = 48
    Top = 168
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDQuery2
    ScopeMappings = <>
    Left = 256
    Top = 168
  end
  object FDQuery2: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT id, klantnaam,filiaal FROM klantgegevens')
    Left = 488
    Top = 168
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      Columns = <>
    end
    object LinkFillControlToFieldachternaam: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'achternaam'
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToPropertyCaption: TLinkFillControlToProperty
      Category = 'Quick Bindings'
      Track = True
      Control = ComboBox1
      Component = Koppel
      ComponentProperty = 'Caption'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
