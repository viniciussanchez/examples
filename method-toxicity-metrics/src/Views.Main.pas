unit Views.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs;

type
  TFrmMain = class(TForm)
  private
    procedure MethodIfDepth;
    procedure MethodParameters(const A1, A2, A3, A4, A5, A6, A7: Integer);
    function MethodCiclomaticComplexity: Integer;
    function MethodLength: Boolean;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

function TFrmMain.MethodCiclomaticComplexity: Integer;
begin
  case 1 of
    1:
      Result := 1;
    2:
      Result := 2;
    3:
      Result := 3;
    4:
      Result := 4;
    5:
      Result := 5;
    6:
      Result := 6;
    7:
      Result := 7;
    8:
      Result := 8;
    9:
      Result := 9;
    10:
      Result := 10;
  end;
end;

procedure TFrmMain.MethodIfDepth;
begin
  if 1 = 1 then
  begin
    if 2 = 2 then
    begin
      if 3 = 3 then
      begin
        if 4 = 4 then
        begin
          if 5 = 5 then
          begin
            if 6 = 6 then
            begin
              ShowMessage('Bad...');
            end;
          end;
        end;
      end;
    end;
  end;
end;

function TFrmMain.MethodLength: Boolean;
var
  LNumero1, LNumero2: Integer;
begin
  LNumero1 := 20;
  LNumero2 := 0;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  LNumero2 := LNumero2 + 1;
  Result := LNumero1 = LNumero2;
end;

procedure TFrmMain.MethodParameters(const A1, A2, A3, A4, A5, A6, A7: Integer);
begin

end;

end.
