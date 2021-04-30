program Solid;

uses
  Vcl.Forms,
  Samples in 'Samples.pas' {Form1},
  Solid.SRP.Violacao in 'srp\Solid.SRP.Violacao.pas',
  Solid.SRP.Logger in 'srp\Solid.SRP.Logger.pas',
  Solid.SRP.MailService in 'srp\Solid.SRP.MailService.pas',
  Solid.OCP.Violacao in 'ocp\Solid.OCP.Violacao.pas',
  Solid.OCP.Boleto in 'ocp\Solid.OCP.Boleto.pas',
  Solid.LSP in 'lsp\Solid.LSP.pas',
  Solid.ISP.Violacao in 'isp\Solid.ISP.Violacao.pas',
  Solid.ISP.Correcao in 'isp\Solid.ISP.Correcao.pas',
  Solid.DIP.Violacao in 'dip\Solid.DIP.Violacao.pas',
  Solid.DIP.Refatoracao in 'dip\Solid.DIP.Refatoracao.pas',
  Solid.DIP.Correcao in 'dip\Solid.DIP.Correcao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
