unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls,  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, System.Threading, System.SyncObjs
  ,Vcl.ExtCtrls,Vcl.Forms;

type
  TfrmMultThreading = class(TForm)
    pnlButtons: TPanel;
    btnWithoutSync: TButton;
    btnWithSync: TButton;
    bntTaskFuture: TButton;
    bntParallelFor: TButton;
    pnlMian: TPanel;
    btnShow: TButton;
    pbRight: TProgressBar;
    pbLeft: TProgressBar;
    MemLeft: TMemo;
    MemRight: TMemo;
    btnInterlocked: TButton;
    btnMonitor: TButton;
    procedure btnWithoutSyncClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure btnWithSyncClick(Sender: TObject);
    procedure bntTaskFutureClick(Sender: TObject);
    procedure bntParallelForClick(Sender: TObject);
    procedure btnInterlockedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmMultThreading: TfrmMultThreading;

implementation

{$R *.dfm}

procedure TfrmMultThreading.btnWithoutSyncClick(Sender: TObject);
begin
  {TTask.Run}
  pbLeft.Position := 0;
  MemLeft.Lines.Clear;
  pbRight.Position := 0;
  MemRight.Lines.Clear;
  {Memo on Left}
  TTask.Run(
  procedure
  var
    I : integer;
  begin
    for I := 0 to 1000 do
    begin
      MemLeft.Lines.Add(i.ToString);               //Left Memo
      pbLeft.Position := i * 100 div 1000;
    end;
  end);

  {Memo on Right}
  TTask.Run(
  procedure
  var
    I : integer;
  begin
    for I := 0 to 1000 do
    begin
      MemRight.Lines.Add(i.ToString);           //Right Memo
      pbRight.Position := i * 100 div 1000;
    end;
  end);
end;


procedure TfrmMultThreading.btnWithSyncClick(Sender: TObject);
begin
  {TTask.Run and TThread.Synchronize}
  pbLeft.Position := 0;
  MemLeft.Lines.Clear;
  pbRight.Position := 0;
  MemRight.Lines.Clear;
  {Memo on Left}
  TTask.Run(
  procedure
  begin
    TThread.Synchronize(nil,
    procedure
    var
      I : integer;
    begin
      for I := 0 to 1000 do
      begin
        MemLeft.Lines.Add(i.ToString);       //Left Memo
        pbLeft.Position := i * 100 div 1000;
      end;
    end);
  end);

  {Memo on Right}
  TTask.Run(
  procedure
  begin
    TThread.Synchronize(nil,
    procedure
    var
      I : integer;
    begin
      for I := 0 to 1000 do
      begin
        MemRight.Lines.Add(i.ToString);       //Right Memo
        pbRight.Position := i * 100 div 1000;
      end;
    end);
  end);
end;

procedure TfrmMultThreading.bntParallelForClick(Sender: TObject);
begin
  {TParallel.For}
  MemLeft.Lines.Clear;
  MemRight.Lines.Clear;
  pbLeft.Position := 0;
  pbRight.Position := 0;
  TTask.Run(
  procedure
  begin
    TParallel.For(0,9,
    procedure(i : integer)
    begin
      sleep(1000);
      TThread.Queue(nil,
      procedure
      begin
        MemLeft.Lines.Add(i.ToString); //Left Memo
        pbLeft.Position := i * 100 div 9;
      end);

      TThread.Queue(nil,
      procedure
      begin
        MemRight.Lines.Add(i.ToString); //Right Memo
        pbRight.Position := i * 100 div 9;
      end);

    end);
  end);
end;

procedure TfrmMultThreading.bntTaskFutureClick(Sender: TObject);
var
  lresult : IFuture<String>;
begin
  MemLeft.Lines.Clear;
  MemRight.Lines.Clear;
  pbLeft.Position := 0;
  pbRight.Position := 0;
  {TTask.Future}
  lresult:= TTask.Future<String>(
  function:String
  begin
    Result := 'Result from Ttask.Future';
  end);

  MemLeft.Lines.Add(lresult.Value);   //Left Memo
  MemRight.Lines.Add(lresult.Value);   //Right Memo
end;

procedure TfrmMultThreading.btnInterlockedClick(Sender: TObject);
begin
  {TInterlocked}
  MemRight.Lines.Clear;
  pbRight.Position := 0;
  TTask.Run(
  procedure
  var
    counter : integer;
  begin
    //counter := 0;
    TInterlocked.Exchange(counter, 0);      //same as counter := 0; but thread safe
    TParallel.For(1,20,
    procedure(i:integer)
    begin
      //counter := counter + i;
      TInterlocked.Add(counter, i);         //same as counter := counter + i; but thread safe
      MemRight.Lines.Add(counter.ToString); //Right Memo
      pbRight.Position := i * 100 div 20;
    end);
  end);


end;

procedure TfrmMultThreading.btnShowClick(Sender: TObject);
begin
  ShowMessage('Not blocked...');
end;


end.
