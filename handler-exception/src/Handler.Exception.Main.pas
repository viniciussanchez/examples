unit Handler.Exception.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmMain = class(TForm)
    btnGerarException: TButton;
    pnlContent: TPanel;
    procedure btnGerarExceptionClick(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.btnGerarExceptionClick(Sender: TObject);
var
  LValor: Integer;
begin
  LValor := StrToInt('X');
end;

end.
