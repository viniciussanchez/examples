unit Solid.OCP.Boleto;

interface

type
  IBanco = interface
    ['{71EB60CC-91C0-40E3-9D58-9F2CC46E84A9}']
    procedure GerarBoleto;
  end;

  TBancoItau = class(TInterfacedObject, IBanco)
  private
    procedure GerarBoleto;
  end;

  TBancoCaixa = class(TInterfacedObject, IBanco)
  private
    procedure GerarBoleto;
  end;

  TBoleto = class
  public
    procedure Gerar(const ABanco: IBanco);
  end;

implementation

{ TBoleto }

procedure TBoleto.Gerar(const ABanco: IBanco);
begin
  ABanco.GerarBoleto;
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
