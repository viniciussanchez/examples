program HandlerException;

uses
  Vcl.Forms,
  Handler.Exception.Main in 'src\Handler.Exception.Main.pas' {FrmMain},
  Handler.Exception in 'src\Handler.Exception.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.OnException := TMyHandlerException.DoHandlerException;
  Application.Run;
end.
