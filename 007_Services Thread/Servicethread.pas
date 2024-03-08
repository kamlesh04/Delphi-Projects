unit Servicethread;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,System.Win.Registry,
  Vcl.ExtCtrls,System.DateUtils, System.IOUtils;

type
  TService_thread = class(TService)
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceExecute(Sender: TService);
  private
    { Private declarations }
    FLog : TStreamWriter;
    FLogFileName : TFileStream;
    FThread : TThread;
    Fstop : Boolean;
  public
    function GetServiceController: TServiceController; override;
    function message_display :boolean;
    { Public declarations }
  end;

var
  Service_thread: TService_thread;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service_thread.Controller(CtrlCode);
end;

function TService_thread.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TService_thread.ServiceAfterInstall(Sender: TService);
var
   lReg: TRegistry;
begin
  lReg := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    lReg.RootKey := HKEY_LOCAL_MACHINE;
    if lReg.OpenKey(
         '\SYSTEM\CurrentControlSet\Services\' + name,False) then
    begin
      lReg.WriteString('Description','Time_Service_Thread');
      lReg.CloseKey;
    end;
  finally
    lReg.Free;
  end;
end;

procedure TService_thread.ServiceExecute(Sender: TService);
var
  count,inverval : integer;
  s: TArray<String>;
begin
  count:=0;
  inverval:=59;
  while true do
  begin
    try
      s:=TimeToStr(now).Split([':']);
      s:=s[2].Split([' ']);
      count:=StrToInt(s[0]);
      if inverval=count then
      begin
      message_display;
      end;
    except
     // ShowMessage('');
    end;
  end;
end;

procedure TService_thread.ServiceStart(Sender: TService; var Started: Boolean);
begin
  if not Assigned(FThread) then
  begin
    FThread:=TThread.Create(Started);
    FThread.Resume;
    Started:=true;
    Fstop:=false;
  end;
end;

procedure TService_thread.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  FThread.Terminate;
  Fstop:=true;
  FreeAndNil(FThread);
  Stopped:=true;
end;

function TService_thread.message_display :boolean;
begin
  FLogFileName:=TFileStream.Create(TPath.Combine(ExpandFileName(ExtractFileDir(ParamStr(0)) + '\..\..\'),'test.txt'), fmOpenWrite);
  FLog := TStreamWriter.Create(FLogFileName);
  FLog.WriteLine('Logged after every minute: ' + TimeToStr(now));
end;

end.
