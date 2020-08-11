program samples;

{$APPTYPE CONSOLE}

{$R *.res}

uses System.SysUtils;

var
  LGUID1, LGUID2, LGUID3: TGUID;

begin
  CreateGUID(LGUID1);
  Writeln('GUID 1: ' + GUIDToString(LGUID1));

  CreateGUID(LGUID2);
  Writeln('GUID 2: ' + GUIDToString(LGUID2));

  LGUID3 := StringToGUID('{AD078A8F-0C01-4460-BC44-0BB72CC49292}');
  Writeln('GUID 3: ' + GUIDToString(LGUID3));

  if not IsEqualGUID(LGUID1, LGUID2) then
    Writeln('GUID 1 é diferente do GUID 2');

  Readln;
end.
