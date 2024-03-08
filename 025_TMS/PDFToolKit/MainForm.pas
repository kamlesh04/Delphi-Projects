unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RTFLabel, Vcl.Buttons,
  gtPDFClasses, gtCstPDFDoc, gtExPDFDoc, gtExProPDFDoc, gtPDFDoc, CurvyControls,
  AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, Vcl.ComCtrls, AdvCombo, FolderDialog
  , gtPDFUtils, Vcl.ExtCtrls, Vcl.Grids, Vcl.ValEdit,


  Spin;

type
  TMainFM = class(TForm)
    gtPDFDocument1: TgtPDFDocument;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    pcPDF: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlMerge: TCurvyPanel;
    lblFile1: TLabel;
    lblFile2: TLabel;
    btnFile1: TSpeedButton;
    btnFile2: TSpeedButton;
    btnOutput: TSpeedButton;
    lblOutput: TLabel;
    txtFile1: TCurvyEdit;
    txtFile2: TCurvyEdit;
    btnMerge: TAdvGlowButton;
    lblHeading: TcxLabel;
    txtOutput: TCurvyEdit;
    pnlConvert: TCurvyPanel;
    lblFile: TLabel;
    btnFile: TSpeedButton;
    btnOut: TSpeedButton;
    lblOutFile: TLabel;
    txtFile: TCurvyEdit;
    btnConvert: TAdvGlowButton;
    lblConvertHead: TcxLabel;
    txtOut: TCurvyEdit;
    lblConvertTo: TLabel;
    cbConvert: TAdvComboBox;
    lblPageCount: TLabel;
    lblCount: TLabel;
    FolderDialog1: TFolderDialog;
    txtFrom: TEdit;
    lblFrom: TLabel;
    TabSheet3: TTabSheet;
    CurvyPanel1: TCurvyPanel;
    txtipFile: TCurvyEdit;
    lblIpFile: TLabel;
    btnipFile: TSpeedButton;
    btnAddFields: TAdvGlowButton;
    TabSheet4: TTabSheet;
    CurvyPanel2: TCurvyPanel;
    CurvyPanel3: TCurvyPanel;
    CurvyPanel4: TCurvyPanel;
    lblSelectFP: TLabel;
    txtSelectFP: TCurvyEdit;
    btnSelectFP: TSpeedButton;
    Splitter1: TSplitter;
    TreeView1: TTreeView;
    ValueListEditor1: TValueListEditor;
    procedure btnFile1Click(Sender: TObject);
    procedure btnFile2Click(Sender: TObject);
    procedure btnOutputClick(Sender: TObject);
    procedure btnMergeClick(Sender: TObject);
    procedure btnFileClick(Sender: TObject);
    procedure btnOutClick(Sender: TObject);
    procedure btnConvertClick(Sender: TObject);
    procedure btnipFileClick(Sender: TObject);
    procedure btnAddFieldsClick(Sender: TObject);
    procedure btnSelectFPClick(Sender: TObject);
     procedure getFormFields;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
    FFiles : TStringList;
    FieldList: Array of TgtPDFFormField;
  public
    { Public declarations }
  end;

var
  MainFM: TMainFM;
  const
 CFieldType: Array [TgtPDFFormFieldType] of string = ('Text Field',
    'Check Box', 'Radio Button', 'Button', 'Signature', 'Choice', 'List Box',
    'Combo Box');

implementation

{$R *.dfm}

procedure TMainFM.btnMergeClick(Sender: TObject);
begin
   if (txtFile1.Text <> '') and (txtFile2.Text <> '') and (txtOutput.Text<> '') then
  begin
    if gtPDFDocument1.IsLoaded then
    begin
      try
        btnMerge.Caption:='Please Wait....';
        gtPDFDocument1.MergeOptions:=[moIncludeOutlines];
        gtPDFDocument1.MergeDocs(FFiles);
        gtPDFDocument1.SaveToFile(txtOutput.Text+'.pdf');
        ShowMessage('Merged Successfully.');
        txtFile1.Text :='';
        txtFile2.Text :='';
        txtOutput.Text :='';
      finally
        btnMerge.Caption:='Merge';
      end;
    end;
  end
  else
    ShowMessage('Select File1,File2 & Output path to merge');
end;

procedure TMainFM.btnAddFieldsClick(Sender: TObject);
var
  lpdftextfield : TgtPDFFormTextField;
  lpdflistbox : TgtPDFFormListBox;
  lpdfpushbutton : TgtPDFFormPushButton;
  //LAnnot: TgtPDFLineAnnotation;
  LAnnot: TgtPDFTextAnnotation;
begin
  lpdftextfield := TgtPDFFormTextField.Create;
  lpdflistbox := TgtPDFFormListBox.Create;
  lpdfpushbutton := TgtPDFFormPushButton.Create;

  OpenDialog1 := TOpenDialog.Create(nil);
  try
    with lpdftextfield do
    begin
    Rect := gtRect(500,900,50,850);
    BackgroundColor:=clWhite;
    FieldName := 'Name';
    Value := 'John Doe';
    Font.Size:=25;
    end;

    with lpdflistbox do
    begin
    Rect := gtRect(100,500,50,450);
    BackgroundColor:=clWhite;
    FieldName := 'Country';
    AddItem('India');
    AddItem('USA');
    Caption:= 'Country';
    end;

    with lpdfpushbutton do begin
      Rect := gtRect(50,550,150,575);
      FieldName := 'Submit1';
      Value := 'Submit1';
    end;
    gtPDFDocument1.LoadFromFile(txtipFile.Text);
    gtPDFDocument1.OpenAfterSave:=true;
    if gtPDFDocument1.IsLoaded then
    begin
      gtPDFDocument1.AddFormField(lpdftextfield,1);
      gtPDFDocument1.AddFormField(lpdflistbox,1);
      gtPDFDocument1.AddFormField(lpdfpushbutton,1);
      //Annotation
      //LAnnot:=TgtPDFLineAnnotation.Create;
      LAnnot:=TgtPDFTextAnnotation.Create;
      with LAnnot do
      begin
      //LineBeginingStyle:=laNone;
      //LineEndingStyle:=laNone;
      RectLeft:=50;
      RectTop:=540;
      RectRight:=100;
      RectBottom:=580;
      Name:='sjkjkdl';
      Caption:='kkkk';
      BackgroundColor:=clRed;
      Contents:='Annotation Text';
      Open:=true;
      end;
      gtPDFDocument1.InsertAnnotation(LAnnot,1);
       if SaveDialog1.Execute then
        gtPDFDocument1.SaveToFile(SaveDialog1.FileName+'.pdf');
    end;
  finally
    OpenDialog1.Free;
    lpdftextfield.Free;
  end;


end;

procedure TMainFM.btnConvertClick(Sender: TObject);
begin
 if (txtFile.Text <> '') and (txtOut.Text<> '') then
 begin
  try
    if gtPDFDocument1.IsLoaded then
    begin
      btnConvert.Caption:='Please Wait.....';
      case cbConvert.ItemIndex of
        0 : gtPDFDocument1.SaveAsImage(txtFrom.Text,itJPEG,txtOut.Text,'',nil);
        1 : gtPDFDocument1.SaveAsImage(txtFrom.Text,itBitmap,txtOut.Text,'',nil);
        2 : gtPDFDocument1.SaveAsImage(txtFrom.Text,itEMF,txtOut.Text,'',nil);
        3 : gtPDFDocument1.SaveAsImage(txtFrom.Text,itMultiPageTIFF,txtOut.Text,'',nil);
      end;
      ShowMessage('PDF converted Successfully.');
      txtFile.Text:='';
      txtOut.Text:='';
      txtFrom.Text:='';
      lblCount.Caption:='';
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
  btnConvert.Caption:='Convert';
 end
 else
  ShowMessage('Select File & Output path to convert');
end;

procedure TMainFM.btnFile1Click(Sender: TObject);
begin
  OpenDialog1 := TOpenDialog.Create(nil);
  try
    OpenDialog1.Filter:='All PDF Files |*.pdf*';
    if OpenDialog1.Execute then
    begin
      gtPDFDocument1.LoadFromFile(OpenDialog1.FileName);
      txtFile1.Text:=OpenDialog1.FileName;
    end;
  finally
    OpenDialog1.Free;
  end;
end;

procedure TMainFM.btnFile2Click(Sender: TObject);
var
  lfile : TOpenDialog;
begin
  lfile := TOpenDialog.Create(nil);
  try
    lfile.Filter:='All PDF Files |*.pdf*';
    lfile.Options:=[ofAllowMultiSelect];
    if lfile.Execute then
    begin
      FFiles:= TStringList.Create;
      FFiles.CommaText :=lfile.Files.CommaText;
      txtFile2.Text := lfile.Files.CommaText;
    end;
  finally
    lfile.Free;
  end;

end;

procedure TMainFM.btnFileClick(Sender: TObject);
begin
OpenDialog1 := TOpenDialog.Create(nil);
  try
    OpenDialog1.Filter:='All PDF Files |*.pdf*';
    if OpenDialog1.Execute then
    begin
      gtPDFDocument1.LoadFromFile(OpenDialog1.FileName);
      txtFile.Text:=OpenDialog1.FileName;
      lblCount.Caption:='1-'+gtPDFDocument1.PageCount.ToString;
      txtFrom.Text :='1-'+gtPDFDocument1.PageCount.ToString;
      cbConvert.SelectItem(cbConvert.Items[0]);
    end;
  finally
    OpenDialog1.Free;
  end;
end;

procedure TMainFM.btnipFileClick(Sender: TObject);
begin
  OpenDialog1 := TOpenDialog.Create(nil);
  try
    OpenDialog1.Filter:='All PDF Files |*.pdf*';
    if OpenDialog1.Execute then
    begin
      gtPDFDocument1.LoadFromFile(OpenDialog1.FileName);
      txtipFile.Text:=OpenDialog1.FileName;
    end;
  finally
    OpenDialog1.Free;
  end;
end;

procedure TMainFM.btnOutClick(Sender: TObject);
begin
  if FolderDialog1.Execute then
    txtOut.Text:=FolderDialog1.Directory;
end;

procedure TMainFM.btnOutputClick(Sender: TObject);
begin
  SaveDialog1.Filter :='All PDF Files |*.pdf*';
  if SaveDialog1.Execute then
    txtOutput.Text:=SaveDialog1.FileName;
end;
procedure TMainFM.btnSelectFPClick(Sender: TObject);
begin
 OpenDialog1 := TOpenDialog.Create(nil);
  try
    OpenDialog1.Filter:='All PDF Files |*.pdf*';
    if OpenDialog1.Execute then
    begin
      gtPDFDocument1.LoadFromFile(OpenDialog1.FileName);
      txtSelectFP.Text:=OpenDialog1.FileName;
      getFormFields;
    end;
  finally
    OpenDialog1.Free;
  end;
end;
 procedure TMainFM.getFormFields;
 var
  i,LFieldCount,LTempNode : integer;
  Lnode,Lroot :TTreeNode;
  LFields : TgtPDFFormField;
 begin
  if gtPDFDocument1.IsLoaded then
  begin
    LFieldCount:=gtPDFDocument1.GetFormFieldCount;
    Lnode:= TTreeNode.Create(TreeView1.Items);
    Lroot:= TTreeNode.Create(TreeView1.Items);
    TreeView1.Items.Clear;
    SetLength(FieldList, gtPDFDocument1.GetFormFieldCount + 1);
    for i := 1 to LFieldCount do
    begin
      LFields:= gtPDFDocument1.GetPDFFormField(i);
      if LFields.PageNum <> LTempNode then
      begin
        Lnode:=TreeView1.Items.AddChild(Lroot,'Page'+ IntToStr(LFields.PageNum));
        LTempNode:=LFields.PageNum;
      end;
      TreeView1.Items.AddChildObject(Lnode,LFields.QualifiedName,LFields);
      FieldList[i] := LFields;
    end;

  end;


 end;

procedure TMainFM.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
  LNodeFields : TgtPDFFormField;
  i : integer;
begin
  if Assigned(gtPDFDocument1) and Assigned(Node.Data) then
  begin
    LNodeFields :=FieldList[node.Index+1];
    with LNodeFields do
    begin
    ValueListEditor1.Values['Name'] := QualifiedName;
    ValueListEditor1.Values['Type'] := CFieldType[FieldType];
    ValueListEditor1.Values['Top'] := IntToStr(Round(Rect.Top));
    ValueListEditor1.Values['Left'] := IntToStr(Round(Rect.Left));
    ValueListEditor1.Values['Bottom'] := IntToStr(Round(Rect.Bottom));
    ValueListEditor1.Values['Right'] := IntToStr(Round(Rect.Right));

    end;
  end;
end;

end.
