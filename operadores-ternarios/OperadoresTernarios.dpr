program OperadoresTernarios;

uses
  Vcl.Forms,
  Operadores.Ternarios.Main in 'src\Operadores.Ternarios.Main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
