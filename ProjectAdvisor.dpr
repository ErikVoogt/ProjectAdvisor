program ProjectAdvisor;

uses
  Vcl.Forms,
  StartScherm in 'StartScherm.pas' {Form3},
  KlantToevoegen in 'KlantToevoegen.pas' {frmKlanttoevoegen},
  KlantenOverzicht in 'KlantenOverzicht.pas' {Form2},
  ContactPersonenOverzicht in 'ContactPersonenOverzicht.pas' {Form4},
  ContactPersoonToevoegen in 'ContactPersoonToevoegen.pas' {Form5},
  ZoekResultaatKlanten in 'ZoekResultaatKlanten.pas' {Form6},
  ZoekResultaatContact in 'ZoekResultaatContact.pas' {Form7},
  KlantEdit in 'KlantEdit.pas' {Form8},
  ContactPersoonEdit in 'ContactPersoonEdit.pas' {Form9},
  DB in 'DB.pas' {DataModule1: TDataModule},
  CP_K_Koppelen in 'CP_K_Koppelen.pas' {Koppelen},
  uClasses in 'uClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TfrmKlanttoevoegen, frmKlanttoevoegen);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TKoppelen, Koppelen);
  Application.Run;
end.
