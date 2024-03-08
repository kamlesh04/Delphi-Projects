unit Notify_FM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Notification, Vcl.StdCtrls,
  Vcl.ExtCtrls,ShellApi, AdvAlertWindow, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, W7Labels;

type
  TAlertFM = class(TForm)
    Button1: TButton;
    NotificationCenter1: TNotificationCenter;
    Timer1: TTimer;
    AdvAlertWindow1: TAdvAlertWindow;
    AdvAlertWindow2: TAdvAlertWindow;
    W7ActiveLabel1: TW7ActiveLabel;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
    lTimeArr:TArray<String>;
    function ExecuteProcess(const FileName, Params: string; Folder: string; WaitUntilTerminated, WaitUntilIdle, RunMinimized: boolean;
  var ErrorCode: integer): boolean;

  public
    { Public declarations }
  end;

var
  AlertFM: TAlertFM;

implementation

{$R *.dfm}
function MyNotification_AtStart:Boolean;external 'notify.dll';
function MyNotification(value: String): boolean;external 'notify.dll';

procedure TAlertFM.Button1Click(Sender: TObject);
var
  MyNotif: TNotification;
  FileName, Parameters, WorkingFolder,lTime: string;
  Error: integer;
  OK: boolean;
  //lTimeArr:TArray<String>;
begin
  MyNotif:= NotificationCenter1.CreateNotification;
  try
    //MyNotif.Name := 'My_Notification';
    //MyNotif.Title := 'My_Notification';
    //MyNotif.AlertBody := 'Its Time To Logout..';
    //NotificationCenter1.PresentNotification(MyNotif);
    //FileName := 'D:\kamlesg  delphi tranning\Services_practice\Notification_FM\Win32\Debug\Project_Notity.exe';//'c:\Windows\notepad.exe';
  //WorkingFolder := ''; // if empty function will extract path from FileName
  //Parameters := 'Project_Notity'; // can be empty
  //OK := ExecuteProcess(FileName, Parameters, WorkingFolder, false, false, false, Error);
  //if not OK then ShowMessage('Error: ' + IntToStr(Error));
  lTime:=TimeToStr(now);
  lTimeArr:=lTime.Split([':']);
  if ((lTimeArr[0]='13') and (lTimeArr[1]='30')) or ((lTimeArr[0]='18') and (lTimeArr[1]='30')) then
  begin
    Timer1.Enabled:=false;
    Timer2.Enabled:=true;
    MyNotification(lTimeArr[0]);
    if ((lTimeArr[0]='13') and (lTimeArr[1]='30')) then
    begin
      AdvAlertWindow1.AlertMessages.Add;
      AdvAlertWindow1.AlertMessages[0].Text.Add('<FONT face="@Microsoft JhengHei UI"  size="20"    color="#FF0000"  ><B><BLINK><P align="center"><SHAD>Break Time...<BR>'+lTimeArr[0]+':'+lTimeArr[1]+' PM</SHAD></P></BLINK></B>   </FONT>');
      AdvAlertWindow1.Update;
      AdvAlertWindow2.Show;
      Timer1.Enabled:=true;
    end
    else
    begin
      //AdvAlertWindow1.AlertMessages.Add;
      AdvAlertWindow1.AlertMessages[0].Text.Add('<FONT face="@Microsoft JhengHei UI"  size="20"    color="#FF0000"  ><B><BLINK><P align="center"><SHAD>Time To Checkout...<BR>'+lTimeArr[0]+':'+lTimeArr[1]+' PM</SHAD></P></BLINK></B>   </FONT>');
      AdvAlertWindow1.Update;
      AdvAlertWindow1.Show;
    end;
  end;
  finally
    //ShowMessage(TimeToStr(now));
    MyNotif.Free;
  end;
end;

procedure TAlertFM.Timer1Timer(Sender: TObject);
begin
  AlertFM.Hide;
  Button1.Click;
end;

procedure TAlertFM.Timer2Timer(Sender: TObject);
begin
  lTimeArr:=TimeToStr(now).Split([':']);
  if ((lTimeArr[0]='13')) then
  begin
    AdvAlertWindow1.AlertMessages[0].Text.Clear;
    AdvAlertWindow1.AlertMessages[0].Text.Add('<FONT face="@Microsoft JhengHei UI"  size="20"    color="#FF0000"  ><B><BLINK><P align="center"><SHAD>Break Time...<BR>'+lTimeArr[0]+':'+lTimeArr[1]+' PM</SHAD></P></BLINK></B>   </FONT>');
    AdvAlertWindow1.Update;
    AdvAlertWindow2.Show;
    if ((lTimeArr[1]='35')) then
      Timer2.Enabled:=false;
      Timer1.Enabled:=true;
  end
  else
  begin
    AdvAlertWindow1.AlertMessages[0].Text.Clear;
    AdvAlertWindow1.AlertMessages[0].Text.Add('<FONT face="@Microsoft JhengHei UI"  size="20"    color="#FF0000"  ><B><BLINK><P align="center"><SHAD>Time To Checkout...<BR>'+lTimeArr[0]+':'+lTimeArr[1]+' PM</SHAD></P></BLINK></B>   </FONT>');
    AdvAlertWindow1.Update;
    AdvAlertWindow1.Show;
  end;
end;

function TAlertFM.ExecuteProcess(const FileName, Params: string; Folder: string; WaitUntilTerminated, WaitUntilIdle, RunMinimized: boolean;
  var ErrorCode: integer): boolean;
var
  CmdLine: string;
  WorkingDirP: PChar;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  Result := true;
  CmdLine := '"' + FileName + '" ' ;//+ Params;
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
      if result then
        //repeat
         //Application.ProcessMessage;
      // until MsgWaitForMultipleObjects(1, hProcess, false, INFINITE, QS_ALLINPUT) <> WAIT_OBJECT_0 + 1;
      CloseHandle(hProcess);
    end;
end;
procedure TAlertFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Timer1.Enabled:=false;
end;

procedure TAlertFM.FormCreate(Sender: TObject);
begin
  MyNotification_AtStart;

end;

procedure TAlertFM.FormDestroy(Sender: TObject);
begin
  Timer1.Enabled:=false;
end;

end.
