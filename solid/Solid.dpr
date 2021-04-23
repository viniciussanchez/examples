program Solid;

uses
  Vcl.Forms,
  Samples in 'Samples.pas' {Form1},
  Solid.SRP.Violacao in 'srp\Solid.SRP.Violacao.pas',
  Solid.SRP.Logger in 'srp\Solid.SRP.Logger.pas',
  Solid.SRP.MailService in 'srp\Solid.SRP.MailService.pas',
  Solid.OCP.Violacao in 'ocp\Solid.OCP.Violacao.pas',
  Solid.OCP.Boleto in 'ocp\Solid.OCP.Boleto.pas',
  Solid.LSP.Ave.Intf in 'lsp\Solid.LSP.Ave.Intf.pas',
  Solid.LSP.Ave.Tucano in 'lsp\Solid.LSP.Ave.Tucano.pas',
  Solid.LSP.Ave.Pinguim in 'lsp\Solid.LSP.Ave.Pinguim.pas',
  Solid.LSP in 'lsp\Solid.LSP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
