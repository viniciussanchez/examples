unit Services.Bairro;

interface

uses System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServiceBairro = class(TDataModule)
    mtBairros: TFDMemTable;
    mtBairrosID: TIntegerField;
    mtBairrosNOME: TStringField;
  public
    function Listar: TDataSet;
  end;

implementation

{$R *.dfm}

function TServiceBairro.Listar: TDataSet;
var
  I: Integer;
begin
  mtBairros.Open;
  Result := mtBairros;
  for I := 1 to 200 do
  begin
    mtBairros.Append;
    mtBairrosNOME.AsString := 'Bairro ' + I.ToString;
    mtBairros.Post;
  end;
end;

end.
