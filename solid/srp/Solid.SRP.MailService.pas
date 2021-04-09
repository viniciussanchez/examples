unit Solid.SRP.MailService;


interface

type
  TMailService = class
  public
    procedure SendMail;
  end;

implementation

{ TMailService }

procedure TMailService.SendMail;
begin
  // send mail
end;

end.
