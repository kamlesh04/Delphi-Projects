program Demo3D;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'uMain.pas' {frm3DMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm3DMain, frm3DMain);
  Application.Run;
end.
