unit KlantenOverzicht;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Vcl.Grids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope,
  Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator;

type
  TForm2 = class(TForm)
    BindSourceDB1: TBindSourceDB;
    GetKlantGegevens: TFDQuery;
    StringGridBindSourceDB1: TStringGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
