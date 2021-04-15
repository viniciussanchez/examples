unit Solid.OCP.Violacao;

interface

type
  TBancoItau = class
  public
    procedure GerarBoleto;
  end;

  TBancoCaixa = class
  public
    procedure GerarBoleto;
  end;

  TBoleto = class
  public
    procedure Gerar(const ABanco: TObject);
  end;

implementation

{ TBoleto }

procedure TBoleto.Gerar(const ABanco: TObject);
begin
  if not Assigned(ABanco) then
    Exit;
  if ABanco.InheritsFrom(TBancoItau) then
    TBancoItau(ABanco).GerarBoleto
  else if ABanco.InheritsFrom(TBancoCaixa) then
    TBancoCaixa(ABanco).GerarBoleto;
end;

{ TBancoItau }

procedure TBancoItau.GerarBoleto;
begin

end;

{ TBancoCaixa }

procedure TBancoCaixa.GerarBoleto;
begin

end;

end.
