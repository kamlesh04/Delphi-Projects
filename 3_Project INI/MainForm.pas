unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, system.IniFiles;

type
  TMainFM = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FAppIni : TIniFile;
    FLastUser : string;
    FLastDate : TDateTime;
    FLastID,FId : Integer;
  public
    { Public declarations }
  end;

var
  MainFM: TMainFM;

implementation

{$R *.dfm}

procedure TMainFM.FormCreate(Sender: TObject);
begin
  //Create Ini file.
  FAppIni := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
  try
    FLastUser := FAppIni.ReadString('User','Last','') ;
    FLastDate := FAppIni.ReadDate('User', 'Date', Date) ;
    ShowMessage('Used by ' + FLastUser + ' on ' + DateToStr(FLastDate));
    FAppIni.WriteString('User','Last','Kamlesh');
    FAppIni.WriteString('User','Date','01-01-2025') ;
    FAppIni.WriteString('User','FId','100');
    FLastUser:= FAppIni.ReadString('User','Last','');
    FLastDate:= FAppIni.ReadDate('User', 'Date', Date) ;
    FLastID:=FAppIni.ReadInteger('User','FId',FId);
    ShowMessage('Reading New data: '+IntToStr(FLastID)+':'+ FLastUser + ' on ' + DateToStr(FLastDate));
    FAppIni.EraseSection('User');
    DeleteFile(ChangeFileExt(Application.ExeName,'.ini'));
  finally
   FAppIni.Free;
  end;
end;

end.
