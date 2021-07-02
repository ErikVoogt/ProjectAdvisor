unit ContactPersoonToevoegen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DB, uClasses;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    VoorNaamInput: TEdit;
    AchterNaamInput: TEdit;
    EmailInput: TEdit;
    TelefoonInput: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RefreshSubmitForm();
    procedure VoorNaamInputChange(Sender: TObject);
    procedure AchterNaamInputChange(Sender: TObject);
    procedure EmailInputChange(Sender: TObject);
    procedure TelefoonInputChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FKlantContactpersoon : TKlantContactpersoon;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.AchterNaamInputChange(Sender: TObject);
begin
  FKlantContactPersoon.Achternaam := AchterNaamInput.Text;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  FKlantContactPersoon.Insert;
//DataModule1.AddCP.SQL.Text := 'INSERT INTO contactpersoongegevens(voornaam,achternaam,email,telefoon)VALUES(:voornaam,:achternaam,:email,:telefoon)';
//DataModule1.AddCP.ParamByName('voornaam').AsString:= VoorNaamInput.Text;
//DataModule1.AddCP.ParamByName('achternaam').AsString:= AchterNaamInput.Text;
//DataModule1.AddCP.ParamByName('email').AsString:= EmailInput.Text;
//DataModule1.AddCP.ParamByName('telefoon').AsInteger:= StrToInt(TelefoonInput.Text);
//DataModule1.AddCP.Execute;
RefreshSubmitForm();

end;
procedure Tform5.RefreshSubmitForm();
begin
  VoorNaamInput.Text:='';
  AchterNaamInput.Text:='';
  EmailInput.Text:='';
  TelefoonInput.Text:='0';
end;

procedure TForm5.TelefoonInputChange(Sender: TObject);
begin
  FKlantContactPersoon.Telefoon := StrToInt(TelefoonInput.Text);
end;

procedure TForm5.VoorNaamInputChange(Sender: TObject);
begin
  FKlantContactPersoon.Voornaam := VoorNaamInput.Text;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.EmailInputChange(Sender: TObject);
begin
  FKlantContactPersoon.Email := EmailInput.Text;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
 FKlantContactPersoon := TKLantContactPersoon.Create;
end;

end.
