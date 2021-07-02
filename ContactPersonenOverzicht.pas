unit ContactPersonenOverzicht;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Vcl.Grids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope,
  Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator,
  Vcl.StdCtrls, CP_K_Koppelen;

type
  TForm4 = class(TForm)
    BindSourceDB1: TBindSourceDB;
    FDQuery1: TFDQuery;
    StringGridBindSourceDB1: TStringGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Sluiten: TButton;
    button1: TButton;
    procedure SluitenClick(Sender: TObject);
    procedure button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}



procedure TForm4.button1Click(Sender: TObject);
begin
Koppelen.Show;
end;

procedure TForm4.SluitenClick(Sender: TObject);
begin
Form4.Close;
end;

end.
