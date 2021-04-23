unit Solid.LSP.Ave.Pinguim;

interface

uses Solid.LSP.Ave.Intf;

type
  TPinguim = class(TInterfacedObject, IAve)
  private
    procedure Voar;
  end;

implementation

uses System.SysUtils;

procedure TPinguim.Voar;
begin
  raise Exception.Create('Pinguim não consegue voar!');
end;

end.
