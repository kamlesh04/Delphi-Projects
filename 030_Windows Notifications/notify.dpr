library notify;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  System.Notification,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.SvcMgr,
  ShellApi,
  Winapi.Windows,
  Winapi.Messages,
  System.Variants,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs;

{$R *.res}


function MyNotification_AtStart: boolean;export;
var
  MyNotification: TNotification;
  NotificationCenter1:TNotificationCenter;
begin
  NotificationCenter1:=TNotificationCenter.Create(nil);
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name := 'My_Notification_Start';
    MyNotification.Title := 'Logout Service has been started';
    MyNotification.AlertBody := 'Windows will send notification at 1.30PM and 6.30PM';
    NotificationCenter1.PresentNotification(MyNotification);

  finally
    MyNotification.Free;
  end;
end;

function MyNotification(value: String): boolean;export;
var
  MyNotification: TNotification;
  NotificationCenter1:TNotificationCenter;
begin
  NotificationCenter1:=TNotificationCenter.Create(nil);
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name := 'My_Notification';
    if value='13' then
    begin
    MyNotification.Title := 'LunchBreak_Notification';
    MyNotification.AlertBody := 'Its Time To Take Break..';
    end
    else
    begin
    MyNotification.Title := 'SignOut Notification';
    MyNotification.AlertBody := 'Its Time To Logout..';
    end;
    NotificationCenter1.PresentNotification(MyNotification);

  finally
    MyNotification.Free;
  end;
end;
exports
MyNotification_AtStart,
MyNotification;
begin
end.
