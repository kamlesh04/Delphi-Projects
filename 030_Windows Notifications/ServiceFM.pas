unit ServiceFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,
  System.Win.Registry, Vcl.ExtCtrls, AdvAlertWindow, System.ImageList,
  Vcl.ImgList, System.Notification,LogoutFM,ShellApi,WinSvc;

type
  TLogout = class(TService)
    Timer1: TTimer;
    ImageList1: TImageList;
    NotificationCenter1: TNotificationCenter;
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceAfterInstall(Sender: TService);
  private
    { Private declarations }
    Ffile : TFileStream;
    Flog: TStreamWriter;

  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
    function ServiceStopp(sMachine,sService : string ) : boolean;
    function ServiceStartt(sMachine,sService : string ) : boolean;
  end;

var
  Logout: TLogout;

implementation

{$R *.dfm}
function MyNotification_AtStart:Boolean;external 'notify.dll';
function MyNotification(value: String): boolean;external 'notify.dll';


procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Logout.Controller(CtrlCode);
end;

function TLogout.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TLogout.ServiceAfterInstall(Sender: TService);
var
  LRegistry: TRegistry;
begin
  LRegistry:=TRegistry.Create(KEY_READ OR KEY_WRITE);
  try
    LRegistry.RootKey:=HKEY_LOCAL_MACHINE;
    if LRegistry.OpenKey('\SYSTEM\CurrentControlSet\Services\'+name,false) then
      LRegistry.WriteString('Description','Checkout_service');
      LRegistry.CloseKey;
  finally
    LRegistry.Free;
  end;
end;

procedure TLogout.ServiceCreate(Sender: TObject);
var
  lflg:boolean;
begin
  lflg:=true;
  //ServiceStart(Self,lflg);
  MyNotification_AtStart;
end;

procedure TLogout.ServiceStart(Sender: TService; var Started: Boolean);
begin
  //Ffile:=TFileStream.Create('D:\kamlesg  delphi tranning\Services_practice\test.txt',fmOpenWrite);
  //Flog:=TStreamWriter.Create(Ffile);
  Timer1.Enabled:=true;
  //Logout.Interactive:=true;
  MyNotification_AtStart;

end;

procedure TLogout.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
   Timer1.Enabled:=false;
   LogoutFM.Form1.Button1.Click;
end;

procedure TLogout.Timer1Timer(Sender: TObject);
begin
  Ffile:=TFileStream.Create('D:\kamlesg  delphi tranning\Services_practice\test.txt',fmOpenWrite);
  Flog:=TStreamWriter.Create(Ffile);
    try
     LogoutFM.Form1.Button1.Click;
     Flog.WriteLine('Logged:'+TimeToStr(now));
  finally
    Flog.Free;
    Ffile.Free;
  end;
end;

function TLogout.ServiceStartt(sMachine,sService : string ) : boolean;
var
  schm,schs   : SC_Handle;
  ss    : TServiceStatus;
  psTemp : PChar;
  dwChkP : DWord;
begin
  ss.dwCurrentState := 1;
  schm := OpenSCManager(
    PChar(Nil),
    Nil,
    SC_MANAGER_CONNECT);
  if(schm > 0)then
  begin
    schs := OpenService(
      schm,
      PChar(sService),
      SERVICE_START or
      SERVICE_QUERY_STATUS);
    if(schs > 0)then
    begin
      psTemp := Nil;
      if(StartService(
           schs,
           0,
           psTemp))then
      begin
        if(QueryServiceStatus(
             schs,
             ss))then
        begin
          while(SERVICE_RUNNING
            <> ss.dwCurrentState)do
          begin
            dwChkP := ss.dwCheckPoint;
            Sleep(ss.dwWaitHint);

            if(not QueryServiceStatus(
                 schs,
                 ss))then
            begin
              break;
            end;

            if(ss.dwCheckPoint <
              dwChkP)then
            begin
              break;
            end;
          end;
        end;
      end;

      CloseServiceHandle(schs);
    end;
    CloseServiceHandle(schm);
  end;

  Result :=
    SERVICE_RUNNING =
      ss.dwCurrentState;
end;

function TLogout.ServiceStopp(sMachine,sService : string ) : boolean;
var
  schm,schs   : SC_Handle;
  ss     : TServiceStatus;
  dwChkP : DWord;
begin
  schm := OpenSCManager(
    PChar(sMachine),
    Nil,
    SC_MANAGER_CONNECT);
  if(schm > 0)then
  begin
    schs := OpenService(
      schm,
      PChar(sService),
      SERVICE_STOP or
      SERVICE_QUERY_STATUS);
    if(schs > 0)then
    begin
      if(ControlService(
           schs,
           SERVICE_CONTROL_STOP,
           ss))then
      begin
        // check status
        if(QueryServiceStatus(
             schs,
             ss))then
        begin
          while(SERVICE_STOPPED
            <> ss.dwCurrentState)do
          begin
            dwChkP := ss.dwCheckPoint;
            Sleep(ss.dwWaitHint);
            if(not QueryServiceStatus(
                 schs,
                 ss))then
            begin
              break;
            end;

            if(ss.dwCheckPoint <
              dwChkP)then
            begin
              break;
            end;
          end;
        end;
      end;
      CloseServiceHandle(schs);
    end;
    CloseServiceHandle(schm);
  end;
  Result :=
    SERVICE_STOPPED =
      ss.dwCurrentState;
end;

end.
