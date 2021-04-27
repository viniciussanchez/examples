unit Solid.ISP.Correcao;

interface

type
  IAves = interface
    ['{1F0490B4-0D6D-4BDE-A28A-8E1E2E717874}']
    procedure BeberAgua;
    procedure EmitirSom;
  end;

  IAvesQueVoam = interface
    ['{DB0EFA81-92AB-4EB2-BFA4-12E4C420FBCD}']
    procedure Voar;
  end;

  TArara = class(TInterfacedObject, IAves, IAvesQueVoam)
  private
    procedure BeberAgua;
    procedure EmitirSom;
    procedure Voar;
  end;

  TPinguim = class(TInterfacedObject, IAves)
  private
    procedure BeberAgua;
    procedure EmitirSom;
  end;

implementation

{ TArara }

procedure TArara.BeberAgua;
begin
  // beber água
end;

procedure TArara.EmitirSom;
begin
  // emitir som
end;

procedure TArara.Voar;
begin
  // voar
end;

{ TPinguim }

procedure TPinguim.BeberAgua;
begin
  // beber água
end;

procedure TPinguim.EmitirSom;
begin
  // emitir som
end;

end.
