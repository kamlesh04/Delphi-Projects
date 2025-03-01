unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, fmx.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winsoft.FireMonkey.PDFium,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm5 = class(TForm)
    FPdf1: TFPdf;
    btnExpBitMap: TButton;
    pbMain: TProgressBar;
    procedure btnExpBitMapClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnExpBitMapClick(Sender: TObject);
var
i : integer;
bitmap : TBitmap;
begin
 pbMain.Position := 0;
 pbMain.Max := FPdf1.PageCount;
 for I := 1 to FPdf1.PageCount do
 begin
   FPdf1.PageNumber := i;
   bitmap := FPdf1.RenderPage(0,0, Width, Height);
   try
     bitmap.SaveToFile('Page'+IntToStr(i)+'.jpeg');
   finally
    bitmap.free;
   end;
   pbMain.Position := i div FPdf1.PageCount * 100;
 end;
 FPdf1.Active := false;
end;

end.
