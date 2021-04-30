unit Solid.DIP.Correcao;

interface

type
  IConnection = interface
    ['{9C68D361-8374-443A-AC99-80EEF63F9BE6}']
    procedure Connect;
  end;

  IAves = interface
    ['{1F0490B4-0D6D-4BDE-A28A-8E1E2E717874}']
    procedure Salvar(const AConnection: IConnection);
  end;

  TFirebirdConnection = class(TInterfacedObject, IConnection)
  private
    procedure Connect;
  end;

  TPostgresConnection = class(TInterfacedObject, IConnection)
  private
    procedure Connect;
  end;

  TPinguim = class(TInterfacedObject, IAves)
  private
    procedure Salvar(const AConnection: IConnection);
  end;

implementation

{ TFirebirdConnection }

procedure TFirebirdConnection.Connect;
begin

end;

{ TPostgresConnection }

procedure TPostgresConnection.Connect;
begin

end;

{ TPinguim }

procedure TPinguim.Salvar(const AConnection: IConnection);
begin

end;

end.
