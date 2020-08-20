program samples;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  Horse.Paginate,
  DataSet.Serialize,
  System.JSON,
  Services.Bairro in 'src\services\Services.Bairro.pas' {ServiceBairro: TDataModule};

var
  App: THorse;

begin
  App := THorse.Create(9000);

  App.Use(Paginate);
  App.Use(Jhonson);

  App.Get('/bairros',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    LService: TServiceBairro;
  begin
    LService := TServiceBairro.Create(nil);
    try
      Res.Send<TJSONArray>(LService.Listar.ToJSONArray());
    finally
      LService.Free;
    end;
  end);

  App.Start;
end.
