unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TForm5 = class(TForm)
    ImgDraw: TImage;
    ADOConnection: TADOConnection;
    ADOTable: TADOTable;
    btnSave: TButton;
    ImgDisplay: TImage;
    btnShow: TButton;
    ADOQuery: TADOQuery;
    btnclr: TButton;
    btnClear: TButton;
    lblHead: TLabel;
    procedure ImgDrawMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDrawMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgDrawMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSaveClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnclrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btnClearClick(Sender: TObject);
begin
  ImgDraw.Canvas.FillRect(Rect(0, 0, ImgDraw.Width, ImgDraw.Height));
end;

procedure TForm5.btnclrClick(Sender: TObject);
begin
  ImgDisplay.Canvas.FillRect(Rect(0, 0, ImgDisplay.Width, ImgDisplay.Height));
end;

procedure TForm5.btnSaveClick(Sender: TObject);
var
   st : TMemoryStream;
begin
  st := TMemoryStream.Create;
  try
    st.Position := 0;
    ImgDraw.Picture.SaveToStream(st);
    ADOTable.Insert;
    TBlobField(ADOTable.FieldByName('img')).LoadFromStream(st);
    ADOTable.Post;
  finally
    st.Free;
  end;
end;

procedure TForm5.btnShowClick(Sender: TObject);
begin
  ADOQuery.Active:= false;
  ADOQuery.Active:= true;
  ADOQuery.Open;
  ImgDisplay.Picture.Bitmap.Assign(TBlobField(ADOQuery.FieldByName('img')));

end;

procedure TForm5.ImgDrawMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  with ImgDraw.Canvas do
  begin
   ArcTo(x,y,x+10,y+10,x+20,y+20,x+30,y+30);
      Pen.Color:= clBlue;
  end;
end;

procedure TForm5.ImgDrawMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  with ImgDraw.Canvas do
  begin
    if ssLeft in Shift then
    begin
      //LineTo(X,Y);
      //Rectangle(x,y,x+50,y+50);
      ArcTo(x,y,x+10,y+10,x+20,y+20,x+30,y+30);
      Pen.Color:= clBlue;
    end
    else
      Pen.Color:= clWhite;
  end;
end;

procedure TForm5.ImgDrawMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; x, Y: Integer);
begin
    with ImgDraw.Canvas do
  begin
      //LineTo(x,Y);
      Pen.Color:= clYellow;
  end;
end;

end.
