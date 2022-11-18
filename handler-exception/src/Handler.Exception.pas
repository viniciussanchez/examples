unit Handler.Exception;

interface

uses System.SysUtils;

type
  TMyHandlerException = class
  private
    class procedure GerarLog(E: Exception);
    class procedure EnviarEmail(E: Exception);
  public
    class procedure DoHandlerException(Sender: TObject; E: Exception);
  end;

implementation

uses Vcl.Dialogs, System.UITypes;

class procedure TMyHandlerException.DoHandlerException(Sender: TObject; E: Exception);
begin
  GerarLog(E);
  EnviarEmail(E);
  MessageDlg('Aconteceu um erro, mas não se preocupe, já avisamos a equipe do suporte!', mtError, [mbOK], 0);
end;

class procedure TMyHandlerException.EnviarEmail(E: Exception);
begin

end;

class procedure TMyHandlerException.GerarLog(E: Exception);
begin

end;

end.
