object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 353
  Width = 567
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=klantgegevens'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 128
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Erik\Code\ProjectAdvisor\libmysql.dll'
    Left = 168
    Top = 128
  end
  object KlantGegevensTafelMaken: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS klantgegevens'
      '('
      'id INTEGER PRIMARY KEY AUTO_INCREMENT,'
      'klantnaam      TEXT,'
      'filiaal        TEXT,'
      'postcode       TEXT,'
      'plaats         TEXT,'
      'contactpersoon INTEGER,'
      'telefoonnummer INT,'
      'email          TEXT'
      ''
      '  '
      ''
      ')')
    Left = 72
    Top = 248
  end
  object CPGegevensTafelMaken: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS contactpersoongegevens'
      '('
      ''
      'id         INTEGER PRIMARY KEY AUTO_INCREMENT,'
      'voornaam   TEXT,'
      'achternaam TEXT,'
      'telefoon   BIGINT,'
      'email      TEXT,'
      'bedrijf    TEXT'
      ''
      ')')
    Left = 168
    Top = 248
  end
  object AddKlant: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 184
  end
  object AddCP: TFDQuery
    Connection = FDConnection1
    Left = 168
    Top = 184
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 248
    Top = 184
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS contactpersoongegevens_klantgegevens'
      '('
      ''
      'contactpersoon_id   INTEGER,'
      'klant_id            INTEGER'
      ''
      ')')
    Left = 248
    Top = 248
  end
  object DataSource1: TDataSource
    Left = 320
    Top = 96
  end
  object KlantCPKoppelTafel: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS contactpersoon_klantkoppeling'
      '('
      ''
      'ContactPersoonid         INTEGER,'
      'Klantid                  INTEGER'
      ''
      ''
      ')')
    Left = 344
    Top = 184
  end
  object KoppelKlantCP: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO contactpersoon_klantkoppeling(ContactPersoonid,Klant' +
        'id)VALUES(:ContactPersoonid,:Klantid)'
      '')
    Left = 360
    Top = 256
    ParamData = <
      item
        Name = 'CONTACTPERSOONID'
        ParamType = ptInput
      end
      item
        Name = 'KLANTID'
        ParamType = ptInput
      end>
  end
end
