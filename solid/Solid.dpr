program Solid;

uses
  Vcl.Forms,
  Samples in 'Samples.pas' {Form1},
  Solid.SRP.Violacao in 'srp\Solid.SRP.Violacao.pas',
  Solid.SRP.Logger in 'srp\Solid.SRP.Logger.pas',
  Solid.SRP.MailService in 'srp\Solid.SRP.MailService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
