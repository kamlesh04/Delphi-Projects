unit DllMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TDLLFM = class(TForm)
    pnlHeader: TPanel;
    lblHeader: TLabel;
    pnlBody: TPanel;
    txtresults: TEdit;
    cbFrom: TComboBox;
    cbTo: TComboBox;
    txtFrom: TEdit;
    lblFrom: TLabel;
    lblTo: TLabel;
    lblConvert: TLabel;
    procedure cbFromChange(Sender: TObject);
    procedure cbToChange(Sender: TObject);
    procedure txtFromChange(Sender: TObject);
    procedure lblConvertClick(Sender: TObject);
    procedure lblConvertMouseEnter(Sender: TObject);
    procedure lblConvertMouseLeave(Sender: TObject);
  private
    { Private declarations }
    Fcurr : String;
    Ffrom : String;
    Fto : String;
  public
    { Public declarations }
  end;

var
  DLLFM: TDLLFM;

implementation

{$R *.dfm}

function INR_TO_(a:double; curr:string):double;external 'currency.dll';
function USD_TO_(a:double; curr:string):double;external 'currency.dll';
function EUR_TO_(a:double; curr:string):double;external 'currency.dll';
function CAD_TO_(a:double; curr:string):double;external 'currency.dll';
function JPY_TO_(a:double; curr:string):double;external 'currency.dll';
function GBP_TO_(a:double; curr:string):double;external 'currency.dll';

procedure TDLLFM.cbFromChange(Sender: TObject);
var
  i : integer;
begin
  txtresults.Clear;
  if cbTo.Items.Count<>cbfrom.Items.Count then
    cbto.Items.Add(Ffrom);

  Ffrom:=cbFrom.Items[cbfrom.ItemIndex];
  for i := 0 to cbTo.Items.Count-1 do
  begin
    if  cbto.Items[i]=Ffrom then
      cbto.Items.Delete(i);
    end;

end;

procedure TDLLFM.cbToChange(Sender: TObject);
begin
  txtresults.Clear;
  Fto:=cbTo.Items[cbTo.ItemIndex];
  if Fto='INR' then
    Fcurr:=' Indian Rupee'
  else if Fto='USD' then
    Fcurr:=' United State Dollar'
  else if Fto='EUR' then
    Fcurr:=' Euro'
  else if Fto='JPY' then
    Fcurr:=' Japanese Yen'
  else if Fto='CAD' then
    Fcurr:=' Canadian Dollar'
  else if Fto='GBP' then
    Fcurr:=' Pound Sterling ';
end;

procedure TDLLFM.lblConvertClick(Sender: TObject);
var
  lresults : string;
begin
  if (txtFrom.Text <> '') and (cbTo.ItemIndex <> -1) and (cbFrom.ItemIndex <> -1)then
  begin
    if Ffrom='INR' then
      lresults:= FloatToStr(INR_TO_(StrToInt(txtFrom.Text),Fto))+ Fcurr
    else if Ffrom='USD' then
      lresults:= FloatToStr(USD_TO_(StrToInt(txtFrom.Text),Fto)) + Fcurr
    else if Ffrom='CAD' then
      lresults:= FloatToStr(CAD_TO_(StrToInt(txtFrom.Text),Fto)) + Fcurr
    else if Ffrom='EUR' then
      lresults:= FloatToStr(EUR_TO_(StrToInt(txtFrom.Text),Fto)) + Fcurr
    else if Ffrom='JPY' then
      lresults:= FloatToStr(JPY_TO_(StrToInt(txtFrom.Text),Fto)) + Fcurr
    else if Ffrom='GBP' then
      lresults:= FloatToStr(GBP_TO_(StrToInt(txtFrom.Text),Fto)) + Fcurr;

    txtresults.Text:= lresults;
  end
  else
  begin
    if cbTo.ItemIndex = -1 then
      ShowMessage('Select Currency')
    else
      ShowMessage('Enter Amount to convert');
  end;
end;

procedure TDLLFM.lblConvertMouseEnter(Sender: TObject);
begin
  lblConvert.Font.Color:=clBlue;
  lblConvert.Cursor:=crHandPoint;
end;

procedure TDLLFM.lblConvertMouseLeave(Sender: TObject);
begin
  lblConvert.Font.Color:=clRed;
  lblConvert.Cursor:=crdefault;
end;

procedure TDLLFM.txtFromChange(Sender: TObject);
begin
  txtresults.Clear;
end;

end.
