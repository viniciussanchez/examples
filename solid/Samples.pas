unit Samples;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Solid.LSP, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure MostrarNome;
    function GetMensagemOk(const AObjeto: TClassePai): string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MostrarNome;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  LClassePai: TClassePai;
  LClasseDerivada: TCLasseDerivada;
begin
  LClassePai := TClassePai.Create;
  LClasseDerivada := TCLasseDerivada.Create;
  try
    ShowMessage(GetMensagemOk(LClassePai));
    ShowMessage(GetMensagemOk(LClasseDerivada));
  finally
    LClasseDerivada.Free;
    LClassePai.Free;
  end;
end;

function TForm1.GetMensagemOk(const AObjeto: TClassePai): string;
begin
  Result := 'Ok';
end;

procedure TForm1.MostrarNome;
var
  LClasse: TClassePai;
begin
  LClasse := TCLasseDerivada.Create;
  try
    ShowMessage(LClasse.GetNome); // Vinicius
  finally
    LClasse.Free;
  end;
end;

end.
