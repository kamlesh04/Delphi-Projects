unit xml;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  TxmlFM = class(TForm)
    pnlHeader: TPanel;
    pnlAdddtls: TPanel;
    pnlSearch: TPanel;
    pnlDisplay: TPanel;
    pnlResults: TPanel;
    lblAuthor: TLabel;
    lblDescription: TLabel;
    lblTitle: TLabel;
    lblGenre: TLabel;
    lblPrice: TLabel;
    lblPublish_date: TLabel;
    txtAuthor: TEdit;
    txtPrice: TEdit;
    txtTitle: TEdit;
    txtGenre: TEdit;
    txtPubDate: TEdit;
    memDesc: TMemo;
    pnlUpdate: TPanel;
    btnUpdate: TSpeedButton;
    pnlDelete: TPanel;
    btnDelete: TSpeedButton;
    lblNAuthor: TLabel;
    lblNtitle: TLabel;
    lblNDesc: TLabel;
    lblNGenre: TLabel;
    lblNprice: TLabel;
    lblNpubdate: TLabel;
    txtNauthor: TEdit;
    txtNgenre: TEdit;
    txtNprice: TEdit;
    txtNtitle: TEdit;
    memNDesc: TMemo;
    pnlAdd: TPanel;
    btnAdd: TSpeedButton;
    lblid: TLabel;
    txtSearch: TEdit;
    btnSearch: TButton;
    lblSearch: TLabel;
    lblAdd: TLabel;
    lblHeader: TLabel;
    pnlImport: TPanel;
    btnImport: TSpeedButton;
    OpenDialogImport: TOpenDialog;
    XMLDoc: TXMLDocument;
    txtNpubdate: TEdit;
    pnlimp: TPanel;
    procedure btnImportClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    Fid , Fimport,Fsearch : Boolean;
    FselectedFile : String;
    Fupdate : integer;
    FMainNode : IXMLNode;
    FNode : IXMLNode;
    FNodeList: IXMLNodeList;

  public
    { Public declarations }
  end;

var
  xmlFM: TxmlFM;
implementation

{$R *.dfm}

procedure TxmlFM.btnAddClick(Sender: TObject);
var
  lidtemp : string;
  lid :integer;
  lnewnode : IXMLNode;
begin
  if Fimport = true then
  begin
    if (txtNauthor.Text<>'') and (txtNtitle.Text<>'') and (txtNgenre.Text<>'')
        and (txtNprice.Text<>'')and (txtNpubdate.Text<>'')and
        (memNDesc.Text<>'')then
    begin
    lidtemp :=FMainNode.ChildNodes[FNodeList.Count-1].Attributes['id'];
    FNode := FMainNode.AddChild('book',FNodeList.Count);
    lidtemp := copy(lidtemp,3,length(lidtemp));
    lid := StrToInt(lidtemp)+1;
    FNode.SetAttributeNS('id','','bk'+lid.ToString);
    lnewnode:= FNode.AddChild('author',0);
    lnewnode.Text:=txtNauthor.Text;
    lnewnode:= FNode.AddChild('title',1);
    lnewnode.Text:=txtNtitle.Text;
    lnewnode:= FNode.AddChild('genre',2);
    lnewnode.Text:=txtNgenre.Text;
    lnewnode:= FNode.AddChild('price',3);
    lnewnode.Text:=txtNprice.Text;
    lnewnode:= FNode.AddChild('publish_date',4);
    lnewnode.Text:=txtNpubdate.Text;
    lnewnode:= FNode.AddChild('description',5);
    lnewnode.Text:=memNDesc.Text;
    FNode:=lnewnode;
    XMLDoc.SaveToFile(FselectedFile);
    ShowMessage('Data Added Successfully with ID: bk'+ lid.ToString);
    txtNAuthor.Clear;
    txtNTitle.Clear;
    txtNGenre.Clear;
    txtNPrice.Clear;
    txtNPubDate.Clear;
    memNDesc.Clear;
    end
    else
      ShowMessage('Above fields cannot be blank!');
  end
  else
  begin
    ShowMessage('Import XML data to add new!');
  end;
end;

procedure TxmlFM.btnDeleteClick(Sender: TObject);
begin
  if Fsearch = True  then
  begin
    FMainNode.ChildNodes.Delete(Fupdate);
    XMLDoc.SaveToFile(FselectedFile);
    ShowMessage('Data Deleted Succussfully.');
    txtAuthor.Clear;
    txtTitle.Clear;
    txtGenre.Clear;
    txtPrice.Clear;
    txtPubDate.Clear;
    memDesc.Clear;
    Fsearch :=false;
    txtSearch.Clear;
    txtAuthor.ReadOnly :=true;
    txtTitle.ReadOnly :=true;
    txtGenre.ReadOnly :=true;
    txtPrice.ReadOnly :=true;
    txtPubDate.ReadOnly :=true;
    memDesc.ReadOnly :=true;
  end
  else
  begin
    ShowMessage('Search data to delete!');
  end;
end;

procedure TxmlFM.btnImportClick(Sender: TObject);
begin
  OpenDialogImport.Filter := 'XML files|*.xml*';
  if OpenDialogImport.Execute(Handle) then
  begin
    FselectedFile :=  OpenDialogImport.FileName;
  end;
  try
    XMLDoc:=TXMLDocument.Create(Application);
    XMLDoc.LoadFromFile(FselectedFile);
    XMLDoc.Active := true;
    FMainNode := XMLDoc.DocumentElement;
    FNodeList := FMainNode.ChildNodes;
    Fimport := true;
    pnlimp.Color:=clRed;
    ShowMessage('Data Imported Succussfully.');
  Except
     ShowMessage('File not Selected!.');
  end;

end;

procedure TxmlFM.btnSearchClick(Sender: TObject);
var
  i : integer;
begin
  if Fimport = true then
  begin
    for i:=0 to FNodeList.Count-1 do
    begin
      FNode := FMainNode.ChildNodes[i];
      if FNode.Attributes['id']=txtSearch.Text then
      begin
        Fid := True;
        Fsearch := True;
        Fupdate := i;
        txtAuthor.Text:=FNode.ChildNodes['author'].Text;
        txtTitle.Text:=FNode.ChildNodes['title'].Text;
        txtGenre.Text:=FNode.ChildNodes['genre'].Text;
        txtPrice.Text:=FNode.ChildNodes['price'].Text;
        txtPubDate.Text:=FNode.ChildNodes['publish_date'].Text;
        memDesc.Text:=FNode.ChildNodes['description'].Text;
        break;
      end;
    end;
    if Fid = True then
    begin
      Fid:= false;
      txtAuthor.ReadOnly :=false;
      txtTitle.ReadOnly :=false;
      txtGenre.ReadOnly :=false;
      txtPrice.ReadOnly :=false;
      txtPubDate.ReadOnly :=false;
      memDesc.ReadOnly :=false;
    end
    else
    begin
      ShowMessage('No Record Found!');
      txtAuthor.Clear;
      txtTitle.Clear;
      txtGenre.Clear;
      txtPrice.Clear;
      txtPubDate.Clear;
      memDesc.Clear;
      Fsearch := false;
      txtAuthor.ReadOnly :=true;
      txtTitle.ReadOnly :=true;
      txtGenre.ReadOnly :=true;
      txtPrice.ReadOnly :=true;
      txtPubDate.ReadOnly :=true;
      memDesc.ReadOnly :=true;
    end;
  end
  else
  begin
    ShowMessage('Import data to search!');
  end;
end;

procedure TxmlFM.btnUpdateClick(Sender: TObject);
begin
  if Fsearch = True  then
  begin
    FNode := FMainNode.ChildNodes[Fupdate];
    FNode.ChildNodes['author'].Text :=txtAuthor.Text;
    FNode.ChildNodes['title'].Text :=txtTitle.Text;
    FNode.ChildNodes['genre'].Text :=txtGenre.Text;
    FNode.ChildNodes['price'].Text :=txtPrice.Text;
    FNode.ChildNodes['publish_date'].Text := txtPubDate.Text;
    FNode.ChildNodes['description'].Text :=memDesc.Text;
    XMLDoc.SaveToFile(FselectedFile);
    ShowMessage('Data updated Successfully!');
    txtAuthor.Clear;
    txtTitle.Clear;
    txtGenre.Clear;
    txtPrice.Clear;
    txtPubDate.Clear;
    memDesc.Clear;
    txtSearch.Clear;
    Fsearch :=false;
    txtAuthor.ReadOnly :=true;
    txtTitle.ReadOnly :=true;
    txtGenre.ReadOnly :=true;
    txtPrice.ReadOnly :=true;
    txtPubDate.ReadOnly :=true;
    memDesc.ReadOnly :=true;
  end
  else
  begin
    ShowMessage('Search data to update!');
  end;
end;

procedure TxmlFM.FormCreate(Sender: TObject);
begin
  Fid := False;
  Fimport := False;
  Fsearch := False;
end;

end.
