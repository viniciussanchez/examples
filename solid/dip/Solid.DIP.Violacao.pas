unit Solid.DIP.Violacao;

interface

type
  TFirebirdConnection = class
  public
    procedure Connect;
  end;

  IAves = interface
    ['{1F0490B4-0D6D-4BDE-A28A-8E1E2E717874}']
    procedure Salvar;
  end;

  TPinguim = class(TInterfacedObject, IAves)
  private
    FConnection: TFirebirdConnection;
  private
    procedure Salvar;
  end;

implementation

{ TFirebirdConnection }

procedure TFirebirdConnection.Connect;
begin

end;

{ TPinguim }

procedure TPinguim.Salvar;
begin
  FConnection := TFirebirdConnection.Create;
end;

end.
