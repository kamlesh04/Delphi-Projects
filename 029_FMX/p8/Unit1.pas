unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,printers,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,ShellAPI, Data.DB,
  Data.Win.ADODB, ComObj;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ADODataSet1: TADODataSet;
    ADOConnection1: TADOConnection;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  WaitForm: TForm;
  WaitLabel: TLabel;

implementation

{$R *.dfm}
//Get control panel
function RunControlPanel(str : string): boolean;
begin
 WinExec(PAnsiChar('rundll32.exe shell32.dll,'+
  'Control_RunDLL '+str),
  SW_SHOWNORMAL);;
end;

//check auo hide taskbar is on or not
function IsAutoHideOn:boolean;
var
  Abdata: TAppBarData;
begin
  Abdata.cbSize := SizeOf(Abdata);
  Result := (SHAppBarMessage(ABM_GETSTATE,Abdata) and ABS_AUTOHIDE) > 0;
end;

//Get parent window name at pos
function GetParentWindowName(x,y :integer):string;
var
  w: TWinControl;
  p: TPoint;

begin
  p.X := x;
  P.Y := y;
   w:= FindVCLWindow(p);
   if w <> nil then
    Result := w.Name
   else
    Result := '';
end;

//Get default printers name
function GetPrinters: string;
begin
  if Printer.PrinterIndex >0 then
  begin
    GetPrinters := Printer.Printers[Printer.PrinterIndex];
  end
  else
    GetPrinters := '';
end;


function GetCurrentUserName : string;
const
  cnMaxUserNameLen = 254;
var
  sUserName     : string;
  dwUserNameLen : DWord;
begin
  dwUserNameLen := cnMaxUserNameLen-1;
  SetLength( sUserName, cnMaxUserNameLen );
  GetUserName(
    PChar( sUserName ),
    dwUserNameLen );
  SetLength( sUserName, dwUserNameLen );
  Result := sUserName;
end;


function WaitStart(TheParent: TComponent; sMsg: string): boolean;
begin
  Result := False;
  // create our message form
  // only if it's not already
  // created
  if (WaitForm = Nil) then
  begin
    WaitForm := TForm.Create(TheParent);
    with WaitForm do
    begin
      Position := poScreenCenter;
      Width := 500;
      Height := 25;

      // create the message label
      WaitLabel := TLabel.Create(WaitForm);
      with WaitLabel do
      begin
        Align := alClient;
        Alignment := taCenter;
        Font.Height := -30;
        ParentFont := False;
        Caption := sMsg;
        Parent := WaitForm;
      end;

      // hide the title bar
      SetWindowLong(Handle, GWL_STYLE,GetWindowLong(Handle,GWL_STYLE) and not WS_CAPTION);
      ClientHeight := Height;


      Show;
      Update;
    end;
    Result := True;
  end;
end;

procedure WaitSetMsg(sMsg: string);
begin
  WaitLabel.Caption := sMsg;
  WaitForm.Refresh;
end;

function WaitEnd: boolean;
begin
  Result := False;
  if (Nil <> WaitForm) then
  begin
    WaitForm.Hide;
    WaitForm.Free;
    WaitForm := Nil;
    Result := True;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  // start the splash window
  WaitStart(Self { or Nil } , 'Please wait...');
  sleep(1000);
  // start the long operation...
  WaitSetMsg('Almost done!...');
  sleep(1000);
  // continue the operation...
  WaitSetMsg('One more second...');
  sleep(1000);
  // complete the operation
  WaitSetMsg('Done.');

  // wait a bit here if you want users
  // to see the "done." message
  sleep(1000);
  // close the splash window
  WaitEnd;
  RunControlPanel('appwiz.cpl');
  if IsAutoHideOn then
    ShowMessage('Auto hide taskbar is ON')
   else
    ShowMessage('Auto hide taskbar is OFF');

  ShowMessage(GetParentWindowName(250,300));
  WNetConnectionDialog(Handle,RESOURCETYPE_DISK);
  ShowMessage(GetCurrentUserName);
  ComboBox1.Items := Printer.Printers;
  DBToExcel()
end;

procedure DBToExcel (DB: TDataSet; const FileName: string);
var
Excel, Workbook, Worksheet, Range: Variant;
RowCount, ColCount, i, j: Integer;
arrData: Variant;
begin
//create variant array where we'll copy our data
RowCount := DB.RecordCount;
ColCount := DB.FieldCount;
arrData := VarArrayCreate ([1, RowCount, 1, ColCount], varVariant);

//fill array
j := 1;
DB.First;
while not DB.Eof do
begin
for i := 1 to ColCount do
arrData [j, i] := DB.Fields [i - 1].Value;
Inc (j);
DB.Next;
end;

//initialize an instance of Excel
Excel := CreateOleObject ('Excel.Application');

//create workbook
Workbook := Excel.Workbooks.Add;

//get the first worksheet
Worksheet := Workbook.Worksheets [1];

//retrieve a range where data must be placed
Range := Worksheet.Range [Worksheet.Cells [1, 1], Worksheet.Cells [RowCount, ColCount]];

//copy data from allocated variant array
Range.Value := arrData;

//save the workbook
Workbook.SaveAs (FileName);

//close the workbook
Workbook.Close;

//quit Excel
Excel.Quit;
end;


end.
