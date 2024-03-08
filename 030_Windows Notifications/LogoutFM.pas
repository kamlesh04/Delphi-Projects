unit LogoutFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Notification, Vcl.StdCtrls,
  Vcl.ExtCtrls,Vcl.SvcMgr,ShellApi;

type
  TForm1 = class(TForm)
    Button1: TButton;
    NotificationCenter1: TNotificationCenter;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    function ExecuteProcess(const FileName, Params: string; Folder: string; WaitUntilTerminated, WaitUntilIdle, RunMinimized: boolean;
  var ErrorCode: integer): boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses ServiceFM;

function MyNotification_AtStart:Boolean;external 'notify.dll';
function MyNotification(value: String): boolean;external 'notify.dll';

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
  Logout.ServiceStartt('Asus','Logout');
  if (TimeToStr(now)='01:30:00 PM') or (TimeToStr(now)='06:30:00 PM') then
       MyNotification(TimeToStr(now));

 finally
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // Logout.ServiceStopp('Asus','Logout');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Button1.Click;
  Logout.Timer1.Enabled:=true;
end;

function TForm1.ExecuteProcess(const FileName, Params: string; Folder: string; WaitUntilTerminated, WaitUntilIdle, RunMinimized: boolean;
  var ErrorCode: integer): boolean;
var
  CmdLine: string;
  WorkingDirP: PChar;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  hToken: THandle;
begin
 Result := true;
  CmdLine := '"' + FileName + '" ' + Params;
  if Folder = '' then Folder := ExcludeTrailingPathDelimiter(ExtractFilePath(FileName));
  ZeroMemory(@StartupInfo, SizeOf(StartupInfo));
  StartupInfo.cb := SizeOf(StartupInfo);
  if RunMinimized then
    begin
      StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
      StartupInfo.wShowWindow := SW_SHOWMINIMIZED;
    end;
  if Folder <> '' then WorkingDirP := PChar(Folder)
  else WorkingDirP := nil;
  if not CreateProcess(nil, PChar(CmdLine), nil, nil, false, 0, nil, WorkingDirP, StartupInfo, ProcessInfo) then
    begin
      Result := false;
      ErrorCode := GetLastError;
      exit;
    end;
  with ProcessInfo do
    begin
      CloseHandle(hThread);
      if WaitUntilIdle then WaitForInputIdle(hProcess, INFINITE);
     // if result then
       // repeat
         //Application.ProcessMessage;
       //   WaitForSingleObject(ProcessInfo.hProcess,INFINITE);
     // until MsgWaitForMultipleObjects(1, hProcess, false, INFINITE, QS_ALLINPUT) <> WAIT_OBJECT_0 + 1;
      CloseHandle(hProcess);
    end;
end;



end.
