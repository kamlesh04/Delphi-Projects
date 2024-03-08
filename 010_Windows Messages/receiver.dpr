program receiver;

uses
  Vcl.Forms,
  message_receive in 'message_receive.pas' {ReceiveFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TReceiveFM, ReceiveFM);
  Application.Run;
end.
