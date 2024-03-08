unit inifiles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, system.IniFiles;

type
  TForm3 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  IniFile : TIniFile;

implementation

{$R *.dfm}
    begin
      IniFile := TIniFile.Create('myapp.ini') ;

end.
