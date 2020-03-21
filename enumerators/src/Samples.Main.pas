unit Samples.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
{$SCOPEDENUMS ON}
  TTipoPesoa = (FISICA, JURIDICA);
  TStatusUsuario = (INATIVO, ATIVO);
{$SCOPEDENUMS OFF}

  TFrmSamples = class(TForm)
    btnGetImpostoRenda: TButton;
    mtUsuario: TFDMemTable;
    mtUsuarioID: TIntegerField;
    mtUsuarioNOME: TStringField;
    mtUsuarioSTATUS: TIntegerField;
    procedure btnGetImpostoRendaClick(Sender: TObject);
    procedure mtUsuarioAfterInsert(DataSet: TDataSet);
  private
    function GetValorImpostoRenda(const TipoPessoa: TTipoPesoa): Currency;
  end;

var
  FrmSamples: TFrmSamples;

implementation

{$R *.dfm}

procedure TFrmSamples.btnGetImpostoRendaClick(Sender: TObject);
var
  ValorImpostoRenda: Currency;
begin
  ValorImpostoRenda := GetValorImpostoRenda(TTipoPesoa.JURIDICA);
end;

function TFrmSamples.GetValorImpostoRenda(const TipoPessoa: TTipoPesoa): Currency;
begin
  case TipoPessoa of
    TTipoPesoa.FISICA:
      Result := 100;
    TTipoPesoa.JURIDICA:
      Result := 200;
  end;
end;

procedure TFrmSamples.mtUsuarioAfterInsert(DataSet: TDataSet);
begin
  mtUsuarioSTATUS.AsInteger := Ord(TStatusUsuario.ATIVO);
end;

end.
