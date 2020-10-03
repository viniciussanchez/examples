unit Samples.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Samples.Participante;

type
  TFrmSamples = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Inscritos: TInscritos;
    function IsLotado: Boolean;
    procedure Inscrever(const AParticipante: TParticipante);
  end;

var
  FrmSamples: TFrmSamples;

implementation

{$R *.dfm}

const
  QUANTIDADE_MAXIMA_PARTICIPANTES = 500;

function TFrmSamples.IsLotado: Boolean;
begin
  Result := Inscritos.Count >= QUANTIDADE_MAXIMA_PARTICIPANTES;
end;

procedure TFrmSamples.FormCreate(Sender: TObject);
begin
  Inscritos := TInscritos.Create();
end;

procedure TFrmSamples.FormDestroy(Sender: TObject);
begin
  Inscritos.Free;
end;

procedure TFrmSamples.Inscrever(const AParticipante: TParticipante);
begin
  if Inscritos.Count < QUANTIDADE_MAXIMA_PARTICIPANTES then
    Inscritos.Add(AParticipante)
  else
    raise Exception.Create('Evento lotado');
end;

end.
