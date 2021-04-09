unit Solid.SRP.Logger;

interface

type
  TLogger = class
  public
    procedure Log;
  end;

implementation

{ TLogger }

uses Solid.SRP.MailService;

procedure TLogger.Log;
var
  LMailService: TMailService;
begin
  LMailService := TMailService.Create;
  try
    // write log
    LMailService.SendMail;
  finally
    LMailService.Free;
  end;
end;

end.
