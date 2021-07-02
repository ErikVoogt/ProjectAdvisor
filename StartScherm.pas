unit StartScherm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,KlantenOverzicht,KlantToevoegen,
  ContactPersoonToevoegen, ContactPersonenOverzicht, ZoekResultaatKlanten, ZoekResultaatContact, DB;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SearchBox1: TSearchBox;
    SearchBox2: TSearchBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SearchBox1KeyPress(Sender: TObject; var Key: Char);
    procedure SearchBox2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}



procedure TForm3.Button1Click(Sender: TObject);
begin
  frmKlanttoevoegen.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
DB.DataModule1.KlantGegevensTafelMaken.Execute;
DB.DataModule1.CPGegevensTafelMaken.Execute;

end;

procedure TForm3.SearchBox1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
  Form6.Show;
end;
end;

procedure TForm3.SearchBox2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
  Form7.Show;
end;
end;

end.
