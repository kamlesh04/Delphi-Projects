unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.MultiView,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.ScrollBox, System.Bluetooth,
  System.Bluetooth.Components, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.Objects, FMX.Ani;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    SpeedButton1: TSpeedButton;
    //FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    Grid1: TGrid;
    ToolBar1: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    txtSearch: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    MultiView1: TMultiView;
    FDTable1userid: TIntegerField;
    FDTable1name: TWideStringField;
    FDTable1username: TWideStringField;
    FDTable1password: TWideStringField;
    FDTable1email: TWideStringField;
    FDQuery1: TFDQuery;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Name: TLabel;
    txtEmail: TEdit;
    txtName: TEdit;
    txtPassword: TEdit;
    txtUsername: TEdit;
    Rectangle2: TRectangle;
    btnAdd: TSpeedButton;
    Label4: TLabel;
    txtID: TEdit;
    Label5: TLabel;
    Rectangle3: TRectangle;
    procedure btnAddClick(Sender: TObject);
    procedure MultiView1Shown(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  if  (txtName.Text <> '') and (txtEmail.Text <> '') and (txtPassword.Text <> '')
  and (txtUsername.Text <> '')  then
  begin
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('Insert into Users(Name,Username,Password,Email)');
    FDQuery1.SQL.Add('Values(:Name,:Username,:Password,:Email);');
    FDQuery1.Params.ParamByName('Name').Value := txtName.Text;
    FDQuery1.Params.ParamByName('Username').Value := txtUsername.Text;
    FDQuery1.Params.ParamByName('Password').Value := txtPassword.Text;
    FDQuery1.Params.ParamByName('Email').Value := txtEmail.Text;
    try
      FDQuery1.ExecSQL;
      FDTable1.Refresh;
      MultiView1.HideMaster;
    except
      raise Exception.Create('Error while inserting data');
    end;
    txtEmail.Text := '';
    txtName.Text := '';
    txtPassword.Text := '';
    txtUsername.Text := '';
  end
  else
    ShowMessage('Fill details');
end;

procedure TForm1.MultiView1Shown(Sender: TObject);
var
  temp: Integer;
begin
  FDTable1.Last;
  temp := FDTable1.FieldByName('UserID').Value;
  Inc(temp);
  txtID.Text := temp.ToString;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  value: string;
begin
  if txtSearch.Text <> '' then
    FDTable1.Locate('UserID',StrToInt(txtSearch.Text),[]);
end;

end.
