library ActiveXDemo;

uses
  ComServ,
  ActiveXdemo_TLB in 'ActiveXdemo_TLB.pas',
  umain in 'umain.pas' {test: TActiveForm} {test: CoClass};

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
