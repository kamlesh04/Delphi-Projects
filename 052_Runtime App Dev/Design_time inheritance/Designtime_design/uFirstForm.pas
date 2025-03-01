unit uFirstForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseForm, Vcl.StdCtrls, Vcl.ExtCtrls, Threading;

type
  TfrmFirstForm = class(TfrmBaseForm)
    pnlMain: TPanel;
    btnClickMe: TButton;
    procedure btnClickMeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
          procedure TestVirtualAbs; override;
      procedure TestVirtual; override;
  end;

var
  frmFirstForm: TfrmFirstForm;

implementation

{$R *.dfm}

procedure TfrmFirstForm.btnClickMeClick(Sender: TObject);
begin
  inherited;
  TTask.Run(
  procedure
  begin
    sleep(5000); //Execute some task
    TThread.Synchronize(nil,
    procedure
    begin
      SetMessage('Hello from runtime first form');
      ShowMessage(GetMessage);
      TestVirtual;
      TestVirtualAbs;
   end );
   end );
end;

procedure TfrmFirstForm.TestVirtual;
begin
  inherited;
  ShowMessage('Modified base class method!');
end;

procedure TfrmFirstForm.TestVirtualAbs;
begin
  inherited;
  ShowMessage('Added implementation to abstract method...');
end;

end.
