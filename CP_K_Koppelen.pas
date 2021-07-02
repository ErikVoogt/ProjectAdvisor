unit CP_K_Koppelen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Vcl.Grids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope,
  Vcl.StdCtrls,uClasses,Generics.Collections, Vcl.Menus;




type
  TKoppelen = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BindSourceDB1: TBindSourceDB;
    FDQuery1: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    FDQuery2: TFDQuery;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    LinkFillControlToFieldachternaam: TLinkFillControlToField;
    Koppel: TButton;
    LinkFillControlToPropertyCaption: TLinkFillControlToProperty;
    procedure FormCreate(Sender: TObject);
    procedure KoppelClick(Sender: TObject);
  private
    { Private declarations }



  public
    { Public declarations }
  end;

var
  Koppelen: TKoppelen;
  Klant:TKlant;
  KlantContactpersoon: TKlantContactpersoon;
  KlantenLijst: TObjectList<TKlant>;
  ContactPersonenLijst: TObjectList<TKlantContactpersoon>;






implementation

{$R *.dfm}

procedure TKoppelen.KoppelClick(Sender: TObject);
begin
DataModule1.KoppelKlantCP.ParamByName('ContactPersoonid').AsInteger:=ContactPersonenLijst.Items[Combobox1.ItemIndex].ID;
DataModule1.KoppelKlantCP.ParamByName('Klantid').AsInteger:=KlantenLijst.Items[Combobox2.ItemIndex].ID;
DataModule1.KoppelKlantCP.Execute;
ShowMessage('Gekoppeld');
end;

procedure TKoppelen.FormCreate(Sender: TObject);
var
Index: Integer;


begin
  KlantenLijst := TObjectList<TKlant>.Create();
  ContactPersonenLijst := TObjectList<TKlantContactpersoon>.Create();
  FDQuery1.Open();
ComboBox1.Text:='';
while not FDQuery1.Eof do begin
  KlantContactpersoon:= TKlantContactpersoon.Create(FDQuery1.Fields.Fields[0].AsInteger,FDQuery1.Fields.Fields[1].AsString,FDQuery1.Fields.Fields[2].AsString);
  ContactPersonenLijst.Add(KlantContactpersoon);
  // query vervangen voor array .naam en .achternaam
  FDQuery1.Next;
end;
  FDQuery1.Close;
for Index := 0 to ContactPersonenLijst.Count -1 do
ComboBox1.Items.Add(ContactPersonenLijst.Items[Index].Voornaam+' '+ContactPersonenLijst.Items[Index].Achternaam);
//ContactPersonenLijst.Items[Index].Insert;
  FDQuery2.Open();
  ComboBox2.Text:='';
while not FDQuery2.Eof do begin
  Klant:= TKlant.Create(FDQuery2.Fields.Fields[0].AsInteger,FDQuery2.Fields.Fields[1].AsString,FDQuery2.Fields.Fields[2].AsString);
  KlantenLijst.Add(Klant);
    //ComboBox2.Items.Add(FDQuery2.Fields.Fields[1].AsString+' '+FDQuery2.Fields.Fields[2].AsString);

  FDQuery2.Next;
end;
  FDQuery2.Close;
for Index := 0 to KlantenLijst.Count -1 do
  ComboBox2.Items.Add(KlantenLijst.Items[Index].Klantnaam+' '+KlantenLijst.Items[Index].Filiaal);
  //KlantenLijst.Items[Index].Insert;


end;

end.
