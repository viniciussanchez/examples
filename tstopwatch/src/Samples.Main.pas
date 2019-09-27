unit Samples.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmSamples = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  end;

var
  FrmSamples: TFrmSamples;

implementation

{$R *.dfm}

uses System.Diagnostics, System.TimeSpan;

procedure TFrmSamples.Button1Click(Sender: TObject);
var
  I, LIncremento: Integer;
  LInicio, LTermino: TDateTime;
begin
  LInicio := Now;
  for I := 0 to 999999999 do
    Inc(LIncremento, I);
  LTermino := Now;
  ShowMessage(TimeToStr(LTermino - LInicio));
end;

procedure TFrmSamples.Button2Click(Sender: TObject);
var
  I, LIncremento: Integer;
  LStopWatch: TStopWatch;
begin
  LStopWatch := TStopwatch.StartNew;
  //LStopWatch := TStopWatch.Create;
  //LStopWatch.Start;
  for I := 0 to 999999999 do
    Inc(LIncremento, I);
  LStopWatch.Stop;
  ShowMessage(IntToStr(LStopWatch.ElapsedMilliseconds));
end;

procedure TFrmSamples.Button3Click(Sender: TObject);
var
  I, LIncremento: Integer;
  LStopWatch: TStopWatch;
  LTempoGasto: TTimeSpan;
begin
  LStopWatch := TStopwatch.StartNew;
  for I := 0 to 999999999 do
    Inc(LIncremento, I);
  LStopWatch.Stop;
  LTempoGasto := LStopWatch.Elapsed;
  ShowMessage(IntToStr(LTempoGasto.Milliseconds));
end;

end.
