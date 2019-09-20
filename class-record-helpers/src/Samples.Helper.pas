unit Samples.Helper;

interface

uses Vcl.StdCtrls;

type
  TEditHelper = class helper for TEdit
    function IsEmpty: Boolean;
    function IsDate: Boolean;
    function OnlyNumbers: string;
  end;

implementation

uses System.SysUtils;

{ TEditHelper }

function TEditHelper.IsDate: Boolean;
begin
  Result := StrToDateDef(Self.Text, StrToDate('30/12/1899')) <> StrToDate('30/12/1899');
end;

function TEditHelper.IsEmpty: Boolean;
begin
  Result := Trim(Self.Text) = EmptyStr;
end;

function TEditHelper.OnlyNumbers: string;
var
  LChar: Char;
begin
  for LChar in Self.Text Do
    if CharInSet(LChar, ['0' .. '9']) then
      Result := Result + LChar;
end;

end.
