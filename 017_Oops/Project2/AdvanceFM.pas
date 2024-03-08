unit AdvanceFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Graphics,Vcl.StdCtrls, Vcl.ExtCtrls,calories;


type
  TCaloriesFM = class(TForm)
    pnlDtls: TPanel;
    btnCal: TButton;
    pnlHeader: TPanel;
    pnlResults: TPanel;
    lblHead: TLabel;
    lblAge: TLabel;
    lblHeight: TLabel;
    lblWeight: TLabel;
    txtAge: TEdit;
    txtHeight: TEdit;
    txtWeight: TEdit;
    lblResultHead: TLabel;
    lblResult: TLabel;
    rdlMale: TRadioButton;
    rdlFemale: TRadioButton;
    procedure btnCalClick(Sender: TObject);
    procedure rdlMaleClick(Sender: TObject);
    procedure rdlFemaleClick(Sender: TObject);
  private
    { Private declarations }
    FGender : String;
  public
    { Public declarations }
  end;

 var
 CaloriesFM : TCaloriesFM;
 calories : TCalories;
 gGender : String;

implementation

{$R *.dfm}

procedure TCaloriesFM.btnCalClick(Sender: TObject);
begin
 if ((txtAge.Text<>'') and  (txtAge.Text<>'0')) and ((txtHeight.Text<>'') and  (txtHeight.Text<>'0')) and ((txtWeight.Text<>'')and  (txtWeight.Text<>'0'))  then
 begin
  calories:=TCalories.create(StrToInt(txtHeight.Text),StrToInt(txtWeight.Text),StrToInt(txtAge.Text),gGender);
   calories.pcalories;//Property to fetch calories..
 end
 else
  ShowMessage('Above field cannot be blank or zero!');
end;

procedure TCaloriesFM.rdlFemaleClick(Sender: TObject);
begin
  gGender:='Female';
end;

procedure TCaloriesFM.rdlMaleClick(Sender: TObject);
begin
  gGender:='Male';
end;

initialization
 //calories:=TCalories.create(StrToInt(CaloriesFM.txtHeight.Text),StrToInt(CaloriesFM.txtWeight.Text),StrToInt(CaloriesFM.txtAge.Text),gGender);
 Application.CreateForm(TCaloriesFM, CaloriesFM);
 gGender:='Female';
 calories:=TCalories.create(10,10,10,gGender);
 CaloriesFM.rdlFemale.Checked :=True;

finalization
begin
  calories.destroyed;
  gGender:='';
end;

end.



