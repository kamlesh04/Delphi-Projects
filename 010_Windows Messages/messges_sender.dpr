program messges_sender;

uses
  Vcl.Forms,
  messages_sender in 'messages_sender.pas' {SenderFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSenderFM, SenderFM);
  Application.Run;
end.
