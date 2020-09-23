program Samples;

uses
  Vcl.Forms,
  Samples.Main in 'src\Samples.Main.pas' {FrmMain},
  Samples.Personagem in 'src\Samples.Personagem.pas',
  Samples.Carro in 'src\Samples.Carro.pas',
  Samples.Motocicleta in 'src\Samples.Motocicleta.pas',
  Samples.Caminhonete in 'src\Samples.Caminhonete.pas',
  Samples.Sena in 'src\Samples.Sena.pas',
  Samples.F1 in 'src\Samples.F1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
