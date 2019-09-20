unit Samples.Pessoa;

interface

uses REST.Json.Types;

type
  TPessoa = class
  private
    [JSONMarshalledAttribute(False)]
    FStatus: Boolean;
    [JSONNameAttribute('codigo')]
    FId: Int64;
    FNome: string;
    procedure SetStatus(const Value: Boolean);
    procedure SetId(const Value: Int64);
    procedure SetNome(const Value: string);
  public
    property Id: Int64 read FId write SetId;
    property Nome: string read FNome write SetNome;
    property Status: Boolean read FStatus write SetStatus;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetId(const Value: Int64);
begin
  FId := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TPessoa.SetStatus(const Value: Boolean);
begin
  FStatus := Value;
end;

end.
