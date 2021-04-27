unit Solid.ISP.Violacao;

interface

type
  IAves = interface
    ['{1F0490B4-0D6D-4BDE-A28A-8E1E2E717874}']
    procedure BeberAgua;
    procedure EmitirSom;
    procedure Voar;
  end;

  TArara = class(TInterfacedObject, IAves)
  private
    procedure BeberAgua;
    procedure EmitirSom;
    procedure Voar;
  end;

  TPinguim = class(TInterfacedObject, IAves)
  private
    procedure BeberAgua;
    procedure EmitirSom;
    procedure Voar;
  end;

implementation

uses System.SysUtils;

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

procedure TPinguim.Voar;
begin
  raise Exception.Create('Pinguim não sabe voar!');
end;

end.
