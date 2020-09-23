unit Samples.Personagem;

interface

uses Samples.Carro, Samples.Motocicleta, Samples.Caminhonete;

type
  TPersonagem = class
  public
    procedure Acelerar(const ACarro: TCarro); overload;
    procedure Acelerar(const AMotocicleta: TMotocicleta); overload;
    procedure Acelerar(const ACaminhonete: TCaminhonete); overload;
  end;

implementation

{ TPersonagem }

procedure TPersonagem.Acelerar(const ACarro: TCarro);
begin

end;

procedure TPersonagem.Acelerar(const AMotocicleta: TMotocicleta);
begin

end;

procedure TPersonagem.Acelerar(const ACaminhonete: TCaminhonete);
begin

end;

end.
