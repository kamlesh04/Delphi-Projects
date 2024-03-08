unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, frxClass, frxDBSet, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    XMLDocument1: TXMLDocument;
    Button3: TButton;
    SaveDialog2: TSaveDialog;
    Button4: TButton;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    frxReport1: TfrxReport;
    Button5: TButton;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    frxDBDataset1: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    frxDBDataset2: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  filename: string;
  filelist,rowlist : TStringlist;
  I : integer;
  tt : TFileStream;
  tte : TStreamWriter;
begin
//tt:= TFileStream.Create();
//tte := TStreamWriter.Create(tt,TEncoding.UTF8);
//tte.Write('');
filelist:= TStringList.Create;
rowlist:= TStringList.Create;
try
  OpenDialog1.Filter := 'CSV FILES (*.csv)|*.csv';
  if OpenDialog1.Execute(Handle) then
  begin
    filename:= OpenDialog1.FileName;
    filelist.LoadFromFile(filename);
  end;
  StringGrid1.RowCount := filelist.Count;
  for I := 0 to filelist.Count -1 do
  begin
    rowlist.Clear;
    rowlist.Delimiter := '|';
    rowlist.DelimitedText :=  filelist[i];
    StringGrid1.ColCount := rowlist.Count;
    StringGrid1.Rows[i].Assign(rowlist);
    StringGrid1.FixedCols := 0;
  end;
finally
   FreeAndNil(filelist);
   FreeAndNil(rowlist);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  FileName: string;
  row : TStringList;
  I: Integer;
begin
  row := TStringList.Create;
  try
    SaveDialog1.Filter := 'CSV Files(*.csv)|*.csv';
    if SaveDialog1.Execute(Handle) then
    begin
      FileName := SaveDialog1.FileName;
      //row.LoadFromFile(FileName);
    end;
    for I := 0 to StringGrid1.RowCount -1 do
    begin
      StringGrid1.Rows[i].Delimiter:= '|';
      row.Add(StringGrid1.Rows[i].DelimitedText);
    end;
    row.SaveToFile(FileName+'.csv');

  finally
    FreeAndNil(row);
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  node: IXMLNode;
  lnode: IXMLNode;
  filen: string;
  xmldoc : IXMLDocument;
begin
  //ldoc := NewXMLDocument();
  XMLDocument1:= TXMLDocument.Create(nil);
  XMLDocument1.Active := true;
  XMLDocument1.Encoding :='utf-8';
  XMLDocument1.Version:= '1.0';
  XMLDocument1.Options := [doNodeAutoIndent];
  node := XMLDocument1.AddChild('Book');
  node.Attributes['ID'] :='1';
  lnode := node.AddChild('Author');
  lnode.Text:= 'ABS';
  lnode := node.AddChild('Title');
  lnode.Text:='HealthCare';
  lnode := node.AddChild('Price');
  lnode.Text := '$20';
  SaveDialog2.Filter := 'XML Files(*.xml)|.*xml';
  if SaveDialog2.Execute(Handle) then
    filen := SaveDialog2.FileName;
  XMLDocument1.SaveToFile(filen);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  IdMessage1.From.Address :='kamlesh@umangsoftware.com';
  IdMessage1.Recipients.EMailAddresses:='kamleshgaonkar04@gmail.com';
  IdMessage1.Subject:='Test mail';
  IdMessage1.Body.Text:='This is text mail, please ignore!';
  IdSMTP1.Host:='mail.androidprogrammerindia.com';
  IdSMTP1.Port :=587;
  IdSMTP1.Username:='testingemailid@androidprogrammerindia.com';
  IdSMTP1.Password:=')&EFy@2t37$e';
  IdSMTP1.UseTLS:= utNoTLSSupport;
  IdSMTP1.AuthType := satDefault;
  IdSMTP1.Connect;
  IdSMTP1.Send(IdMessage1);

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  frxReport1.showReport;
end;

end.
