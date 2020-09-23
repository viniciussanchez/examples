unit Samples.Sena;

interface

uses Samples.Personagem, Samples.F1;

type
  TSena = class(TPersonagem)
  public
    procedure Acelerar(const AF1: TF1); overload;
  end;

implementation

{ TSena }

procedure TSena.Acelerar(const AF1: TF1);
begin

end;

end.
