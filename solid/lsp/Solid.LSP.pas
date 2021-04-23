unit Solid.LSP;

interface

type
  TClassePai = class
  public
    function GetNome: string;
  end;

  TCLasseDerivada = class(TClassePai)
  public
    function GetNome: string;
  end;

implementation

{ TClassePai }

function TClassePai.GetNome: string;
begin
  Result := 'Nome A';
end;

{ TCLasseDerivada }

function TCLasseDerivada.GetNome: string;
begin
  Result := 'Nome B';
end;

end.
