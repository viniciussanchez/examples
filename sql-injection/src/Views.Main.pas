unit Views.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmMain = class(TForm)
    Label1: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label2: TLabel;
    btnLogin: TButton;
    qryUsuarios: TFDQuery;
    FDConnection: TFDConnection;
    lblResultado: TLabel;
    procedure btnLoginClick(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.btnLoginClick(Sender: TObject);
begin
  qryUsuarios.SQL.Clear;
  qryUsuarios.SQL.Add('select *');
  qryUsuarios.SQL.Add('  from user');
  qryUsuarios.SQL.Add(' where login = :login');
  qryUsuarios.SQL.Add('   and password = :senha');
  qryUsuarios.ParamByName('login').AsString := edtUsuario.Text;
  qryUsuarios.ParamByName('senha').AsString := edtSenha.Text;
  qryUsuarios.Open();
  if qryUsuarios.IsEmpty then
    lblResultado.Caption := 'ERRO!!!'
  else
    lblResultado.Caption := 'Ok';
end;

end.
