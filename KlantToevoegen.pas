unit KlantToevoegen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DB, uClasses;

type
  TfrmKlanttoevoegen = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    KlantNaamInput: TEdit;
    FiliaalInput: TEdit;
    PostCodeInput: TEdit;
    PlaatsInput: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    EmailInput: TEdit;
    Button1: TButton;
    Button2: TButton;
    TelefoonInput: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RefreshSubmitForm();
    procedure KlantNaamInputChange(Sender: TObject);
    procedure FiliaalInputChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PostCodeInputChange(Sender: TObject);
    procedure PlaatsInputChange(Sender: TObject);
    procedure TelefoonInputChange(Sender: TObject);
    procedure EmailInputChange(Sender: TObject);
    procedure ConstructortestClick(Sender: TObject);
    procedure ConstructorTest2Click(Sender: TObject);
  private
    FKlant : TKlant;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKlanttoevoegen: TfrmKlanttoevoegen;

implementation

{$R *.dfm}

procedure TfrmKlanttoevoegen.Button1Click(Sender: TObject);
begin
 FKlant.Insert;
//DataModule1.AddKlant.SQL.Text := 'INSERT INTO klantgegevens(klantnaam,filiaal,postcode,plaats,telefoonnummer,email)VALUES(:klantnaam,:filiaal,:postcode,:plaats,:telefoonnummer,:email)';
//DataModule1.AddKlant.ParamByName('klantnaam').AsString:= KlantNaamInput.Text;
//DataModule1.AddKlant.ParamByName('filiaal').AsString:= FiliaalInput.Text;
//DataModule1.AddKlant.ParamByName('postcode').AsString:= PostCodeInput.Text;
//DataModule1.AddKlant.ParamByName('plaats').AsString:= PlaatsInput.Text;
//DataModule1.AddKlant.ParamByName('telefoonnummer').AsInteger:= StrToInt(TelefoonInput.Text);
//DataModule1.AddKlant.ParamByName('email').AsString:= EmailInput.Text;
//DataModule1.AddKlant.Execute;
RefreshSubmitForm();

end;

procedure TfrmKlanttoevoegen.RefreshSubmitForm();
begin
KlantNaamInput.Text := '';
FiliaalInput.Text   := '';
PostCodeInput.Text  := '';
PlaatsInput.Text    := '';
TelefoonInput.Text  := '0';
EmailInput.Text     := '';

end;

procedure TfrmKlanttoevoegen.TelefoonInputChange(Sender: TObject);
begin
  FKlant.Telefoon := StrtoInt(TelefoonInput.Text);
end;

procedure TfrmKlanttoevoegen.Button2Click(Sender: TObject);
begin
  frmKlanttoevoegen.Close;
end;

procedure TfrmKlanttoevoegen.ConstructorTest2Click(Sender: TObject);
begin
TKlantContactpersoon.Create;
end;

procedure TfrmKlanttoevoegen.ConstructortestClick(Sender: TObject);
begin
TKlant.Create;
end;

procedure TfrmKlanttoevoegen.EmailInputChange(Sender: TObject);
begin
  FKlant.Email := EmailInput.Text;
end;

procedure TfrmKlanttoevoegen.FiliaalInputChange(Sender: TObject);
begin
  FKlant.Filiaal := FiliaalInput.Text;
end;

procedure TfrmKlanttoevoegen.FormCreate(Sender: TObject);
begin
     FKlant := TKlant.Create;
end;

procedure TfrmKlanttoevoegen.FormDestroy(Sender: TObject);
begin
  FKlant.Free;
end;

procedure TfrmKlanttoevoegen.KlantNaamInputChange(Sender: TObject);
begin
   FKlant.Klantnaam := KlantNaamInput.Text;
end;

procedure TfrmKlanttoevoegen.PlaatsInputChange(Sender: TObject);
begin
  FKlant.Plaats := PlaatsInput.Text;
end;

procedure TfrmKlanttoevoegen.PostCodeInputChange(Sender: TObject);
begin
  FKlant.Postcode := PostCodeInput.Text;
end;

end.
