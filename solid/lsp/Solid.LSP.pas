unit Solid.LSP;

interface

type
  TClassePai = class
  public
    function GetNome: string;
  end;

  TCLasseDerivada = class(TClassePai)
  end;

implementation

{ TClassePai }

function TClassePai.GetNome: string;
begin
  Result := 'Vinicius';
end;

end.
