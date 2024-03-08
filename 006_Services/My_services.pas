unit My_services;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,System.Win.Registry,
  Vcl.ExtCtrls,System.IOUtils;

type
  TsvTime = class(TService)
    TmTimeLog: TTimer;
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure TmTimeLogTimer(Sender: TObject);

  private
    { Private declarations }
    FLog : TStreamWriter;
    FLogFileName : TFileStream;
    FThread : TThread;
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  svTime: TsvTime;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  svTime.Controller(CtrlCode);
end;

function TsvTime.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TsvTime.ServiceAfterInstall(Sender: TService);
var
   lReg: TRegistry;
begin
  lReg := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    lReg.RootKey := HKEY_LOCAL_MACHINE;
    if lReg.OpenKey(
         '\SYSTEM\CurrentControlSet\Services\' + name,False) then
    begin
      lReg.WriteString('Description','Time_Service');
      lReg.CloseKey;
    end;
  finally
    lReg.Free;
  end;

end;

procedure TsvTime.ServiceStart(Sender: TService; var Started: Boolean);
begin
  FLogFileName:=TFileStream.Create(TPath.Combine(ExpandFileName(ExtractFileDir(ParamStr(0)) + '\..\..\'),'test.txt'), fmOpenWrite);
  FLog := TStreamWriter.Create(FLogFileName);
  TmTimeLog.Enabled:=true;
end;

procedure TsvTime.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  TmTimeLog.Enabled:=false;
  svTime.Terminated;

end;

procedure TsvTime.TmTimeLogTimer(Sender: TObject);
begin
  FLog.WriteLine('Logged after every minute: ' + TimeToStr(now))
end;

end.
