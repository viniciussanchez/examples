unit Samples.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmMain = class(TForm)
  public
    /// <summary>
    ///   Verifica se a string passada como parâmetro é vazia.
    ///   <para>
    ///     Exemplo:
    ///   </para>
    ///   <code>
    ///     if IsEmpty(edtNome.Text) then
    ///   </code>
    /// </summary>
    /// <param name="Value">
    ///   Refere-se a string a qual deseja-se verificar se está preenchida.
    /// </param>
    /// <returns>
    ///   Retorna True se estiver vazia ou False se tiver preenchida.
    /// </returns>
    /// <remarks>
    ///   Existe um helper nativo do Delphi que faz o mesmo que essa função.
    /// </remarks>
    function IsEmpty(const Value: string): Boolean;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

function TFrmMain.IsEmpty(const Value: string): Boolean;
begin

end;

end.
