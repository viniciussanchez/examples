unit Samples.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Samples.Pessoa, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    mmJSON: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses REST.Json;

procedure TFrmMain.Button1Click(Sender: TObject);
var
  LPessoa: TPessoa;
begin
  LPessoa := TPessoa.Create;
  try
    LPessoa.Id := 1;
    LPessoa.Nome := 'Maria Bafuda';
    LPessoa.Status := True;
    mmJSON.Lines.Text := TJson.ObjectToJsonString(LPessoa);
  finally
    LPessoa.Free;
  end;
end;

end.
