unit Views.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TVenda = record
    Valor: Currency;
    QuantidadeItensVendidos: Integer;
    class operator Add(AVenda1, AVenda2: TVenda): Currency;
    class operator Implicit(AValor: string): TVenda;
    class operator Inc(AVenda: TVenda): TVenda;
    class operator Equal(AVenda1, AVenda2: TVenda): Boolean;
  end;

  TFrmMain = class(TForm)
    btnSomarVenda: TButton;
    btnImplicit: TButton;
    btnInc: TButton;
    btnEqual: TButton;
    procedure btnSomarVendaClick(Sender: TObject);
    procedure btnImplicitClick(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.btnEqualClick(Sender: TObject);
var
  LVenda1, LVenda2: TVenda;
begin
  LVenda1.Valor := 100;
  LVenda1.QuantidadeItensVendidos := 10;

  LVenda2.Valor := 100;
  LVenda2.QuantidadeItensVendidos := 10;

  if LVenda1 = LVenda2 then
    ShowMessage('Igual')
  else
    ShowMessage('Diferente');
end;

procedure TFrmMain.btnImplicitClick(Sender: TObject);
var
  LVenda: TVenda;
begin
  LVenda := '300';
end;

procedure TFrmMain.btnIncClick(Sender: TObject);
var
  LVenda: TVenda;
begin
  LVenda.QuantidadeItensVendidos := 10;
  Inc(LVenda);
  ShowMessage(IntToStr(LVenda.QuantidadeItensVendidos));
end;

procedure TFrmMain.btnSomarVendaClick(Sender: TObject);
var
  LVenda1, LVenda2: TVenda;
begin
  LVenda1.Valor := 100;
  LVenda2.Valor := 50;
  ShowMessage(CurrToStr(LVenda1 + LVenda2));
end;

{ TVenda }

class operator TVenda.Add(AVenda1, AVenda2: TVenda): Currency;
begin
  Result := AVenda1.Valor + AVenda2.Valor;
end;

class operator TVenda.Equal(AVenda1, AVenda2: TVenda): Boolean;
begin
  Result := (AVenda1.Valor = AVenda2.Valor) and (AVenda1.QuantidadeItensVendidos = AVenda2.QuantidadeItensVendidos);
end;

class operator TVenda.Implicit(AValor: string): TVenda;
begin
  Result.Valor := StrToCurr(AValor);
end;

class operator TVenda.Inc(AVenda: TVenda): TVenda;
begin
  Result.QuantidadeItensVendidos := AVenda.QuantidadeItensVendidos + 1;
end;

end.
