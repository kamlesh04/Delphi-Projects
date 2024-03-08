program Project_Notity;

uses
  Vcl.Forms,
  Notify_FM in 'Notify_FM.pas' {AlertFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAlertFM, AlertFM);
  Application.Run;
end.
