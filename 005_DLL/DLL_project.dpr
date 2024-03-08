program DLL_project;

uses
  Vcl.Forms,
  DllMain in 'DllMain.pas' {DLLFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDLLFM, DLLFM);
  Application.Run;
end.
