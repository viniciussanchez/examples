unit Operadores.Ternarios.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, System.StrUtils, System.Math;

type
  TForm1 = class(TForm)
  private
    function ExemploOperadorTernarioString: string;
    function ExemploOperadorTernarioNumerico: Double;
    function ExemploOperadorTernarioBooleano: Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.ExemploOperadorTernarioString: string;
begin
  Result := IfThen(1 = 1, 'Igual', 'Diferente');
//  if (1 = 1) then
//  begin
//    Result := 'Igual';
//  end
//  else
//  begin
//    Result := 'Diferente';
//  end;
end;

function TForm1.ExemploOperadorTernarioNumerico: Double;
begin
  Result := IfThen(1 = 1, 10, 20);
//  if (1 = 1) then
//  begin
//    Result := 10;
//  end
//  else
//  begin
//    Result := 20;
//  end;
end;

function TForm1.ExemploOperadorTernarioBooleano: Boolean;
begin
  Result := 1 = 1;
//  if (1 = 1) then
//  begin
//    Result := True;
//  end
//  else
//  begin
//    Result := False;
//  end;
end;

end.
