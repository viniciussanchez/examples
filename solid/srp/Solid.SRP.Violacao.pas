unit Solid.SRP.Violacao;

interface

type
  TLogger = class
  private
    procedure SendMail;
  public
    procedure Log;
  end;

implementation

procedure TLogger.Log;
begin
  // write log
  SendMail;
end;

procedure TLogger.SendMail;
begin
  // Send mail
end;

end.
