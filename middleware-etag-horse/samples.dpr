program samples;

{$APPTYPE CONSOLE}
{$R *.res}

uses Horse, Horse.Etag, Horse.Jhonson, System.JSON;

var
  App: THorse;

begin
  App := THorse.Create(9000);

  App.Use(Jhonson);
  App.Use(Etag);

  App.Get('users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send<TJsonObject>(TJsonObject.Create.AddPair('login', 'thulio'));
    end);

  App.Start;
end.
