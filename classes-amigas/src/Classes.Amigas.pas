unit Classes.Amigas;

interface

type
  TCarro = class
  private
    FId: Integer;
    FNome: string;
    procedure SetId(const Value: Integer);
    procedure SetNome(const Value: string);
  public
    property Id: Integer read FId write SetId;
    property Nome: string read FNome write SetNome;
  end;

  TProduto = class
  private
    FDescricao: string;
    FCodigoBarra: string;
    procedure SetCodigoBarra(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    procedure CriarCarro;
    property CodigoBarra: string read FCodigoBarra write SetCodigoBarra;
    property Descricao: string read FDescricao write SetDescricao;
  end;

implementation

{ TCarro }

procedure TCarro.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TCarro.SetNome(const Value: string);
begin
  FNome := Value;
end;

{ TProduto }

procedure TProduto.CriarCarro;
var
  LCarro: TCarro;
begin
  LCarro := TCarro.Create;
  LCarro.FNome := 'exemplo';
end;

procedure TProduto.SetCodigoBarra(const Value: string);
begin
  FCodigoBarra := Value;
end;

procedure TProduto.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
