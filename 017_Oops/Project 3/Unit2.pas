unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type

  TTestThread = class(TThread)
    protected
      FProgress : integer;
      procedure Execute(); override;

    public
       procedure sync;
  end;

  TForm2 = class(TForm)
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure Log(msg : string);

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TTestThread }

procedure TTestThread.Execute();
var
  i : integer;
begin
  for I := 0 to 10 do
  begin
    Sleep(1000);
    if Terminated then
      break;

    FProgress := i * 10;
    //Application.ProcessMessages;
    Synchronize(
    procedure
    begin
      Form2.Log('Thread running at : ' + i.ToString);
      Form2.ProgressBar1.Position := FProgress + 10;
    end
    );
  end;

  Synchronize(
  procedure
  begin
    Form2.Log('Thread running completed!');
  end
  );


end;

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
var
  TestThread : TTestThread;
begin
  TestThread:= TTestThread.Create(true);
  TestThread.FreeOnTerminate := true;
  TestThread.Start;
  Log('Thread started');
end;

procedure TTestThread.sync;
begin
  Form2.ProgressBar1.Position := FProgress;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  //IsTerminated := true;
end;

procedure TForm2.Log(msg : string);
begin
  Memo1.Lines.Add(msg);
end;

end.
