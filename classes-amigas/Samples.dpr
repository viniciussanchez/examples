program Samples;

uses
  Vcl.Forms,
  Samples.Main in 'src\Samples.Main.pas' {Form2},
  Classes.Amigas in 'src\Classes.Amigas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
