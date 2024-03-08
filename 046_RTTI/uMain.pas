unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Rtti;

type
  TForm5 = class(TForm)
    btnGetTypes: TButton;
    Memo: TMemo;
    procedure btnGetTypesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnGetTypesClick(Sender: TObject);
var
  LGetContext : TRttiContext;
  LPkgArrays : TArray<TRttiPackage>;
  LPkge : TRttiPackage;
  LTypes : TArray<TRttiType>;
  Ltype : TRttiType;
begin
  LGetContext := TRttiContext.Create;
  try
  LPkgArrays := LGetContext.GetPackages;
  for LPkge in LPkgArrays do
  begin
   memo.Lines.Add( LPkge.Name); ;
  end;
    LTypes := LPkge.GetTypes;
  for Ltype in Ltypes do
  begin
   memo.Lines.Add( Ltype.Name); ;
  end;

   memo.Lines.Add( LGetContext.GetType(TForm5).ToString);
  finally
    LGetContext.Free;
  end;
end;

end.
