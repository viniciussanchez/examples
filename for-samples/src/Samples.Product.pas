unit Samples.Product;

interface

uses System.Generics.Collections;

type
  TProduct = class
  private
    FName: string;
  public
    constructor Create(const AName: string);
    property Name: string read FName write FName;
  end;

  TProducts = TObjectList<TProduct>;

implementation

{ TProduct }

constructor TProduct.Create(const AName: string);
begin
  FName := AName;
end;

end.
