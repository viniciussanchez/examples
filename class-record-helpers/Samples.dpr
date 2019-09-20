program Samples;

uses
  Vcl.Forms,
  Samples.Main in 'src\Samples.Main.pas' {FrmSamples},
  Samples.Helper in 'src\Samples.Helper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmSamples, FrmSamples);
  Application.Run;
end.
