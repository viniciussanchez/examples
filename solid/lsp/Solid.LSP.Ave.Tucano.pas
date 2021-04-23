unit Solid.LSP.Ave.Tucano;

interface

uses Solid.LSP.Ave.Intf;

type
  TTucano = class(TInterfacedObject, IAve)
  private
    procedure Voar;
  end;

implementation

procedure TTucano.Voar;
begin
  // Rotina para fazer o tucano voar;
end;

end.
