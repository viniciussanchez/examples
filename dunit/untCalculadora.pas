unit untCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    edtResultado: TEdit;
    Label3: TLabel;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
  public
    function Somar(const ANumero1, ANumero2: Integer): Integer;
    function Subtrair(const ANumero1, ANumero2: Integer): Integer;
    function Multiplicar(const ANumero1, ANumero2: Integer): Integer;
    function Dividir(const ANumero1, ANumero2: Integer): Integer;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnDividirClick(Sender: TObject);
begin
  edtResultado.Text := Self.Dividir(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TForm2.btnMultiplicarClick(Sender: TObject);
begin
  edtResultado.Text := Self.Multiplicar(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TForm2.btnSomarClick(Sender: TObject);
begin
  edtResultado.Text := Self.Somar(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

procedure TForm2.btnSubtrairClick(Sender: TObject);
begin
  edtResultado.Text := Self.Subtrair(StrToInt(edtNumero1.Text), StrToInt(edtNumero2.Text)).ToString;
end;

function TForm2.Dividir(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 div ANumero2;
end;

function TForm2.Multiplicar(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 * ANumero2;
end;

function TForm2.Somar(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 + ANumero2 + 5;
end;

function TForm2.Subtrair(const ANumero1, ANumero2: Integer): Integer;
begin
  Result := ANumero1 - ANumero2;
end;

end.
