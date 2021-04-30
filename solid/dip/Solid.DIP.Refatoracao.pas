unit Solid.DIP.Refatoracao;

interface

type
  TFirebirdConnection = class
  public
    procedure Connect;
  end;

  IAves = interface
    ['{1F0490B4-0D6D-4BDE-A28A-8E1E2E717874}']
    procedure Salvar(const AConnection: TFirebirdConnection);
  end;

  TPinguim = class(TInterfacedObject, IAves)
  private
    procedure Salvar(const AConnection: TFirebirdConnection);
  end;

implementation

{ TFirebirdConnection }

procedure TFirebirdConnection.Connect;
begin

end;

{ TPinguim }

procedure TPinguim.Salvar(const AConnection: TFirebirdConnection);
begin

end;

end.
