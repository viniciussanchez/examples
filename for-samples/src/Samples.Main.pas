unit Samples.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ListBox1: TListBox;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses Samples.Product, System.Generics.Collections;

procedure TFrmMain.Button1Click(Sender: TObject);
var
  I: Integer;
  LProducts: TProducts;
begin
  LProducts := TProducts.Create();
  try
    LProducts.Add(TProduct.Create('Notebook'));
    LProducts.Add(TProduct.Create('Smartwatch'));
    LProducts.Add(TProduct.Create('Smartphone'));

    for I := 0 to Pred(LProducts.Count) do
      ShowMessage(LProducts.Items[I].Name);
  finally
    LProducts.Free;
  end;
end;

procedure TFrmMain.Button2Click(Sender: TObject);
var
  I: Integer;
  LProducts: TProducts;
begin
  LProducts := TProducts.Create();
  try
    LProducts.Add(TProduct.Create('Notebook'));
    LProducts.Add(TProduct.Create('Smartwatch'));
    LProducts.Add(TProduct.Create('Smartphone'));

    for I := Pred(LProducts.Count) downto 0 do
      ShowMessage(LProducts.Items[I].Name);
  finally
    LProducts.Free;
  end;
end;

procedure TFrmMain.Button3Click(Sender: TObject);
var
  LProduct: TProduct;
  LProducts: TProducts;
begin
  LProducts := TProducts.Create();
  try
    LProducts.Add(TProduct.Create('Notebook'));
    LProducts.Add(TProduct.Create('Smartwatch'));
    LProducts.Add(TProduct.Create('Smartphone'));

    for LProduct in LProducts do
      ShowMessage(LProduct.Name);
  finally
    LProducts.Free;
  end;
end;

procedure TFrmMain.Button4Click(Sender: TObject);
var
  LProducts: TProducts;
  LItens: TEnumerator<TProduct>;  
begin
  LProducts := TProducts.Create();
  try
    LProducts.Add(TProduct.Create('Notebook'));
    LProducts.Add(TProduct.Create('Smartwatch'));
    LProducts.Add(TProduct.Create('Smartphone'));

    LItens := LProducts.GetEnumerator;
    while LItens.MoveNext do
      ShowMessage(LItens.Current.Name);
  finally
    LProducts.Free;
  end;
end;

procedure TFrmMain.Button5Click(Sender: TObject);
var
  LItens: TStringsEnumerator;
begin
  LItens := ListBox1.Items.GetEnumerator;
  while LItens.MoveNext do
    ShowMessage(LItens.Current);
end;

end.
