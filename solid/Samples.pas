unit Samples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Solid.LSP, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MostrarNome;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MostrarNome;
end;

procedure TForm1.MostrarNome;
var
  LClassePai: TClassePai;
  LClasseDerivada: TCLasseDerivada;
begin
  LClassePai := TClassePai.Create;
  LClasseDerivada := TCLasseDerivada.Create;
  try
    ShowMessage(LClassePai.GetNome);
    ShowMessage(LClasseDerivada.GetNome);
  finally
    LClasseDerivada.Free;
    LClassePai.Free;
  end;
end;

end.
