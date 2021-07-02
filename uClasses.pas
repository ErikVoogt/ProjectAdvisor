unit uClasses;

interface

uses DB;

type

TKlant = class
  private
    FKlantnaam: string;
    FFiliaal: string;
    FID: Integer;
    FPostcode: string;
    FPlaats: string;
    FTelefoon: Integer;
    FEmail: string;
  public
    property ID: Integer read FID write FID;
    property Klantnaam : string read FKlantnaam write FKlantnaam;
    property Filiaal: string read FFiliaal write FFiliaal;
    property Postcode: string read FPostcode write FPostcode;
    property Plaats: string read FPlaats write FPlaats;
    property Telefoon: Integer read FTelefoon write FTelefoon;
    property Email: string read FEmail write FEmail;
    procedure Insert;
    procedure Read;
    procedure Delete;
    Constructor Create; overload;
    Constructor Create(FID: Integer;FKlantnaam:string;FFiliaal:string);overload;
end;

TKlantContactpersoon = class
  private
    FID: Integer;
    FVoornaam: string;
    FAchternaam: string;
    FKlantID: Integer;
    FEmail: string;
    FTelefoon: Integer;
  public
    property ID: Integer read FID write FID;
    property Voornaam : string read FVoornaam write FVoornaam;
    property Achternaam : string read FAchternaam write FAchternaam;
    property Email: string read FEmail write Femail;
    property Telefoon: Integer read FTelefoon write FTelefoon;
    procedure Insert;
    procedure Read;
    procedure Delete;
    Constructor Create; overload;
    Constructor Create(FID: Integer;FVoornaam:string;FAchternaam:string);overload;

end;

TKlantCPKoppelen = class
  private
    FID: Integer;
    FVoornaam: string;
    FAchternaam: string;
    FKlantnaam: string;
    FFiliaal: string;

  public
    property ID : Integer read FID write FID;
    property Voornaam: string read FVoornaam write FVoornaam;
    property Achternaam: string read FAchternaam write FAchternaam;
    property Klantnaam: string read FKlantnaam write FKlantnaam;
    property Filiaal: string read FFiliaal write FFiliaal;
    procedure Insert;
    procedure Read;
    procedure Delete;


end;



implementation

{ TKlantContactpersoon }

constructor TKlantContactpersoon.Create;
begin

end;
constructor TKlantContactpersoon.Create(FID: Integer; FVoornaam:string;FAchternaam:string);
begin
self.ID:= FID;
self.Voornaam:= FVoornaam;
self.Achternaam:= FAchternaam;
end;
constructor TKlant.Create;
begin

end;
constructor TKlant.Create(FID: Integer; FKlantnaam:string; FFiliaal:string);
begin
self.ID := FID;
self.Klantnaam := FKlantnaam;
self.Filiaal  := FFiliaal;
end;


procedure TKlantContactpersoon.Delete;
begin

end;

procedure TKlantContactpersoon.Insert;
begin
DataModule1.AddCP.SQL.Text := 'INSERT INTO contactpersoongegevens(voornaam,achternaam,email,telefoon)VALUES(:voornaam,:achternaam,:email,:telefoon)';
DataModule1.AddCP.ParamByName('voornaam').AsString:= Voornaam;
DataModule1.AddCP.ParamByName('achternaam').AsString:= Achternaam;
DataModule1.AddCP.ParamByName('email').AsString:= Email;
DataModule1.AddCP.ParamByName('telefoon').AsInteger:= Telefoon;
DataModule1.AddCP.Execute;

end;

procedure TKlantContactpersoon.Read;
begin

end;

{ TKlant }

procedure TKlant.Delete;
begin

end;

procedure TKlant.Insert;
var
  sql : string;
begin
  DataModule1.AddKlant.SQL.Text := 'INSERT INTO klantgegevens(klantnaam,filiaal,postcode,plaats,email,telefoonnummer)VALUES(:klantnaam,:filiaal,:postcode,:plaats,:email,:telefoonnummer)';
  //DataModule1.AddKlant.SQL.Text := 'INSERT INTO klantgegevens(klantnaam,postcode)VALUES(:klantnaam,:postcode)';
  DataModule1.AddKlant.ParamByName('klantnaam').AsString:= Klantnaam;
  DataModule1.AddKlant.ParamByName('filiaal').AsString:= Filiaal;
  DataModule1.AddKlant.ParamByName('postcode').AsString:= PostCode;
  DataModule1.AddKlant.ParamByName('plaats').AsString:= Plaats;
  DataModule1.AddKlant.ParamByName('telefoonnummer').AsInteger:= Telefoon;
  DataModule1.AddKlant.ParamByName('email').AsString:= Email;
  DataModule1.AddKlant.Execute;
//  RefreshSubmitForm();


end;

procedure TKlant.Read;
begin

end;

procedure TKlantCPKoppelen.Insert;
begin


end;

procedure TKlantCPKoppelen.Read;
begin

end;

procedure TKlantCPKoppelen.Delete;
begin

end;

end.
