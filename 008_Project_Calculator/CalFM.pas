unit CalFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCalculatorFM = class(TForm)
    btnCE: TButton;
    btnClr: TButton;
    btnBck: TButton;
    btnDiv: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btnMinus: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btnPlus: TButton;
    btnplusminus: TButton;
    btn0: TButton;
    btnDec: TButton;
    btnEql: TButton;
    btnMulti: TButton;
    txtInput: TEdit;
    txtResult: TEdit;
    //procedure btn1Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnClrClick(Sender: TObject);
    procedure btnCEClick(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnEqlClick(Sender: TObject);
    procedure btnBckClick(Sender: TObject);
    procedure btnDecClick(Sender: TObject);
    procedure txtInputKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnplusminusClick(Sender: TObject);
    procedure ButtonNumClick(Sender: TObject);

  private
    { Private declarations }
    FResult: String;
    FTempRltString: String;
    FTempFirstResult: String;
    FTempSecResult: String;
    FFinalResult: Currency;
    FPlus: Boolean;
    FMinus: Boolean;
    FMulti: Boolean;
    FDiv:Boolean;
    FDec:Boolean;
    FOptr:String;
    FPlusMinus: Boolean;

  public
    { Public declarations }
  end;

var
  CalculatorFM: TCalculatorFM;

implementation

{$R *.dfm}
//Button 0
Procedure TCalculatorFM.btn0Click(Sender: TObject);
begin
   FPlus :=False;
   FMinus :=False;
   FMulti :=False;
   FDiv :=False;
   if FResult='' then
   begin
    txtInput.Text:= btn0.Caption;
   end
   else
   begin
    txtInput.Text := txtInput.Text + btn0.Caption;
   end;
   txtInput.SetFocus;
   txtInput.AutoSelect:=False;
end;

//Numbers Buttons clicked
procedure TCalculatorFM.ButtonNumClick(Sender: TObject);
begin
  FPlus :=False;
  FMinus :=False;
  FMulti :=False;
  FDiv :=False;
  if FResult='' then
  begin
    txtInput.Text := Tbutton(Sender).Caption;
    FResult:=Tbutton(Sender).Caption;
  end
  else
  begin
    if txtInput.Text ='0' then
    begin
      FResult:=Tbutton(Sender).Caption;
      txtInput.Text :=Tbutton(Sender).Caption;
    end
    else
    begin
      FResult:=FResult + txtInput.Text ;
      txtInput.Text := txtInput.Text + Tbutton(Sender).Caption;
    end;
  end;
  txtInput.SetFocus;
  txtInput.AutoSelect:=False;
end;

//Button Back
procedure TCalculatorFM.btnBckClick(Sender: TObject);
begin
  FDec :=true;
  if (txtInput.Text<>'') or (txtInput.Text<>'0') or (txtInput.Text<>'-') then
  begin
    txtInput.Text:=Copy (txtInput.Text,0,(length(txtInput.text)-1));
    if txtInput.Text = '' then
     txtInput.Text:='0';
     FResult:='';
  end
  else
  begin
     txtInput.Text:='0';
     FResult:='';
  end;
  txtInput.SetFocus;
  txtInput.AutoSelect:=true;
  FPlusMinus:=true;
end;

//Button CE
procedure TCalculatorFM.btnCEClick(Sender: TObject);
begin
    FResult:='' ;
    txtInput.Text:='0';
    FDec :=true;
    txtInput.SetFocus;
    txtInput.AutoSelect:=true;
    FPlusMinus := true;
end;

//Button Clear
procedure TCalculatorFM.btnClrClick(Sender: TObject);
begin
    FResult:='' ;
    txtInput.Text:='0';
    txtResult.Text:='' ;
    FTempRltString:='';
    FFinalResult:=0;
    FTempFirstResult:='';
    FTempSecResult:='';
    FDec :=true;
    txtInput.SetFocus;
    txtInput.AutoSelect:=true;
    FPlusMinus := true;
end;

//Button Decimal
procedure TCalculatorFM.btnDecClick(Sender: TObject);
begin
  if FDec=true then
  begin
    if FResult='' then
    begin
      txtInput.Text:='0' + btnDec.Caption;
      FResult:=btnDec.Caption;
      FDec := false;
    end
    else
    begin
      FResult:=FResult + txtInput.Text ;
      txtInput.Text := txtInput.Text + btnDec.Caption;
      FDec := false;
    end;
  end;
  txtInput.SetFocus;
  FPlusMinus:=true;
end;

//Button Div
procedure TCalculatorFM.btnDivClick(Sender: TObject);
begin
  FDec :=true;
  if FDiv=False then
  begin
    if txtInput.Text<>'0' then
    begin
    if FTempFirstResult='' then
    begin
      FTempRltString := txtInput.Text+'/';
      txtResult.Text := FTempRltString;
      FResult:='';
      FTempFirstResult := txtInput.Text;
      FDiv:=True;
      FOptr := '/';
    end
   else
   begin
    if FOptr = '+' then
    begin
      FTempRltString := FTempRltString + txtInput.Text+'/';
      txtResult.Text := FTempRltString;
      FResult :='';
      FTempSecResult := txtInput.Text;
      FFinalResult := StrToFloat(FTempFirstResult) + StrToFloat(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
      FTempFirstResult := txtInput.Text;
      txtResult.Text :=  FloatToStr(FFinalResult) + '/';
      FDiv:=True;
    end

    else if FOptr = '-' then
    begin
      FTempRltString := FTempRltString + txtInput.Text+'/';
      txtResult.Text := FTempRltString;
      FResult :='';
      FTempSecResult := txtInput.Text;
      FFinalResult := StrToFloat(FTempFirstResult) - StrToFloat(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
      FTempFirstResult := txtInput.Text;
      txtResult.Text :=  FloatToStr(FFinalResult) + '/';
      FDiv:=True;
    end

    else if FOptr = '*' then
    begin
      FTempRltString := FTempRltString + txtInput.Text+'/';
      txtResult.Text := FTempRltString;
      FResult :='';
      FTempSecResult := txtInput.Text;
      FFinalResult := StrToFloat(FTempFirstResult) * StrToFloat(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
      FTempFirstResult := txtInput.Text;
      txtResult.Text :=  FloatToStr(FFinalResult) + '/';
      FDiv:=True;
    end
    else
    begin
      FTempRltString := FTempRltString + txtInput.Text+'/';
      txtResult.Text := FTempRltString;
      FResult :='';
      FTempSecResult := txtInput.Text;
      FFinalResult := StrToInt(FTempFirstResult) div StrToInt(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
      FTempFirstResult := txtInput.Text;
      FMulti:=True;
    end;
    FOptr := '/';
   end;
    end
    else
      ShowMessage('Cannot Divide By Zero');
 end;
  txtInput.SetFocus;
  txtInput.AutoSelect:=True;
end;

//Button Equal
procedure TCalculatorFM.btnEqlClick(Sender: TObject);
begin
  if txtInput.Text<>'0' then
  begin
    if FOptr='+' then
    begin
      FResult :='';
      FTempSecResult :=  txtInput.Text;
      FFinalResult :=  StrToFloat(FTempFirstResult)+ StrToFloat(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
    end
    else if FOptr='-' then
    begin
      FResult :='';
      FTempSecResult := txtInput.Text;
      FFinalResult := StrToFloat(FTempFirstResult) - StrToFloat(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
    end
    else if FOptr='*' then
    begin
      FResult :='';
      FTempSecResult := txtInput.Text;
      FFinalResult := StrToFloat(FTempFirstResult) * StrToFloat(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
    end
    else if FOptr='/' then
    begin
      FResult :='';
      FTempSecResult := txtInput.Text;
      FFinalResult := StrToFloat(FTempFirstResult) / StrToFloat(FTempSecResult);
      txtInput.Text := FloatToStr(FFinalResult);
    end
    else
      //Do Nothing;
    FResult:='' ;
    txtResult.Text:='' ;
    FTempRltString:='';
    FFinalResult:=0;
    FTempFirstResult:='0';
    FTempSecResult:='0';
    FDec:=true;
    FOptr:='';
    txtInput.SetFocus;
    txtInput.AutoSelect:=False;
    FPlusMinus := true;
  end
  else
  begin
    if (FOptr='-') or (FOptr ='+') then
    begin
      FFinalResult := StrToFloat(FTempFirstResult);
      txtInput.Text := FloatToStr(FFinalResult);
      FResult := '' ;
      txtResult.Text := '' ;
      FTempRltString := '';
      FFinalResult := 0;
      FTempFirstResult := '';
      FTempSecResult := '';
      FOptr := '';
    end
    else if FOptr='/' then
      ShowMessage('Cannot Divide By Zero')
    else
    begin
      FResult:='' ;
      txtInput.Text:='0';
      txtResult.Text:='' ;
      FTempRltString:='';
      FFinalResult:=0;
      FTempFirstResult:='';
      FTempSecResult:='';
      FOptr :='';
    end;
  end;
end;

//Button Minus
procedure TCalculatorFM.btnMinusClick(Sender: TObject);
begin
  FDec :=true;
  if FMinus=False then
  begin
    if txtInput.Text<>'0' then
    begin
      if FTempFirstResult='' then
      begin
        FTempRltString := txtInput.Text+'-';
        txtResult.Text := FTempRltString;
        FResult:='';
        FTempFirstResult := txtInput.Text;
        FMinus:=True;
        FOptr := '-';
      end
      else
      begin
        if FOptr = '+' then
        begin
          FTempRltString := FTempRltString + txtInput.Text + '-' ;
          txtResult.Text := FTempRltString;
          FResult :='';
          FTempSecResult := txtInput.Text;
          FFinalResult := StrToFloat(FTempFirstResult) + StrToFloat(FTempSecResult);
          txtInput.Text := FloatToStr(FFinalResult);
          FTempFirstResult := txtInput.Text;
          txtResult.Text :=  FloatToStr(FFinalResult) + '-';
          FMinus:=True;
        end
        else if FOptr = '/' then
        begin
          FTempRltString := FTempRltString + txtInput.Text+'-';
          txtResult.Text := FTempRltString;
          FResult :='';
          FTempSecResult := txtInput.Text;
          FFinalResult := StrToFloat(FTempFirstResult) / StrToFloat(FTempSecResult);
          txtInput.Text := FloatToStr(FFinalResult);
          FTempFirstResult := txtInput.Text;
          txtResult.Text :=  FloatToStr(FFinalResult) + '-';
          FMinus:=True;
        end
        else if FOptr = '*' then
        begin
          FTempRltString := FTempRltString + txtInput.Text+'-';
          txtResult.Text := FTempRltString;
          FResult :='';
          FTempSecResult := txtInput.Text;
          FFinalResult := StrToFloat(FTempFirstResult) * StrToFloat(FTempSecResult);
          txtInput.Text := FloatToStr(FFinalResult);
          FTempFirstResult := txtInput.Text;
          txtResult.Text :=  FloatToStr(FFinalResult) + '-';
          FMinus:=True;
        end
        else
        begin
          FTempRltString := FTempRltString + txtInput.Text+'-';
          txtResult.Text := FTempRltString;
          FResult :='';
          FTempSecResult := txtInput.Text;
          FFinalResult := StrToFloat(FTempFirstResult) - StrToFloat(FTempSecResult);
          txtInput.Text := FloatToStr(FFinalResult);
          FTempFirstResult := txtInput.Text;
          FMinus:=True;
        end;
       FOptr := '-';
      end;
    end;
    if FOptr='/' then
       ShowMessage('Cannot Divide By Zero');
  end;
  txtInput.SetFocus;
  txtInput.AutoSelect:=True;
end;

//Button Multi
procedure TCalculatorFM.btnMultiClick(Sender: TObject);
begin
   FDec :=true;
   if FMulti=False then
   begin
    if txtInput.Text<>'0' then
    begin
      if FTempFirstResult='' then
        begin
          FTempRltString := txtInput.Text+'*';
          txtResult.Text := FTempRltString;
          FResult:='';
          FTempFirstResult := txtInput.Text;
          FMulti:=True;
          FOptr := '*';
        end
      else
      begin
       if FOptr = '+' then
       begin
        FTempRltString := FTempRltString + txtInput.Text+'*';
        txtResult.Text := FTempRltString;
        FResult :='';
        FTempSecResult := txtInput.Text;
        FFinalResult := StrToFloat(FTempFirstResult) + StrToFloat(FTempSecResult);
        txtInput.Text := FloatToStr(FFinalResult);
        FTempFirstResult := txtInput.Text;
        txtResult.Text :=  FloatToStr(FFinalResult) + '*';
        FMulti:=True;
       end
       else if FOptr = '/' then
       begin
        FTempRltString := FTempRltString + txtInput.Text+'*';
        txtResult.Text := FTempRltString;
        FResult :='';
        FTempSecResult := txtInput.Text;
        FFinalResult := StrToFloat(FTempFirstResult) / StrToFloat(FTempSecResult);
        txtInput.Text := FloatToStr(FFinalResult);
        FTempFirstResult := txtInput.Text;
        txtResult.Text :=  FloatToStr(FFinalResult) + '*';
        FMulti:=True;
       end
       else if FOptr = '-' then
       begin
        FTempRltString := FTempRltString + txtInput.Text+'*';
        txtResult.Text := FTempRltString;
        FResult :='';
        FTempSecResult := txtInput.Text;
        FFinalResult := StrToFloat(FTempFirstResult) - StrToFloat(FTempSecResult);
        txtInput.Text := FloatToStr(FFinalResult);
        FTempFirstResult := txtInput.Text;
        txtResult.Text :=  FloatToStr(FFinalResult) + '*';
        FMulti:=True;
       end
       else
       begin
        FTempRltString := FTempRltString + txtInput.Text+'*';
        txtResult.Text := FTempRltString;
        FResult :='';
        FTempSecResult := txtInput.Text;
        FFinalResult := StrToFloat(FTempFirstResult) * StrToFloat(FTempSecResult);
        txtInput.Text := FloatToStr(FFinalResult);
        FTempFirstResult := txtInput.Text;
        FMulti:=True;
       end;
       FOptr := '*';
      end;
    end;
    if FOptr='/' then
       ShowMessage('Cannot Divide By Zero');
  end;
  txtInput.SetFocus;
  txtInput.AutoSelect:=True;
end;

//Button Plus
procedure TCalculatorFM.btnPlusClick(Sender: TObject);
begin
  FDec :=true;
    if FPlus=False then
    begin
      if txtInput.Text<>'0' then
      begin
        if FTempFirstResult='' then
          begin
            FTempRltString := txtInput.Text+'+';
            txtResult.Text := FTempRltString;
            FResult:='';
            FTempFirstResult := txtInput.Text;
            FPlus:=True;
            FOptr := '+';
          end
        else
         begin
          if FOptr = '-' then
          begin
            FTempRltString := FTempRltString + txtInput.Text+'+';
            txtResult.Text := FTempRltString;
            FResult :='';
            FTempSecResult := txtInput.Text;
            FFinalResult := StrToFloat(FTempFirstResult) - StrToFloat(FTempSecResult);
            txtInput.Text := FloatToStr(FFinalResult);
            FTempFirstResult := txtInput.Text;
            txtResult.Text :=  FloatToStr(FFinalResult) + '+';
            FPlus:=True;
          end
          else if FOptr = '/' then
          begin
            FTempRltString := FTempRltString + txtInput.Text+'+';
            txtResult.Text := FTempRltString;
            FResult :='';
            FTempSecResult := txtInput.Text;
            FFinalResult := StrToFloat(FTempFirstResult) / StrToFloat(FTempSecResult);
            txtInput.Text := FloatToStr(FFinalResult);
            FTempFirstResult := txtInput.Text;
            txtResult.Text :=  FloatToStr(FFinalResult) + '+';
            FPlus:=True;
          end
          else if FOptr = '*' then
          begin
            FTempRltString := FTempRltString + txtInput.Text+'+';
            txtResult.Text := FTempRltString;
            FResult :='';
            FTempSecResult := txtInput.Text;
            FFinalResult := StrToFloat(FTempFirstResult) * StrToFloat(FTempSecResult);
            txtInput.Text := FloatToStr(FFinalResult);
            FTempFirstResult := txtInput.Text;
            txtResult.Text :=  FloatToStr(FFinalResult) + '+';
            FPlus:=True;
          end
          else
          begin
            FTempRltString := FTempRltString + txtInput.Text+'+';
            txtResult.Text := FTempRltString;
            FResult :='';
            FTempSecResult := txtInput.Text;
            FFinalResult := StrToFloat(FTempFirstResult) + StrToFloat(FTempSecResult);
            txtInput.Text := FloatToStr(FFinalResult);
            FTempFirstResult := txtInput.Text;
            FPlus:=True;
          end;
       FOptr := '+';
       end;
      end;
      if FOptr='/' then
       ShowMessage('Cannot Divide By Zero');
    end;
   txtInput.SetFocus;
   txtInput.AutoSelect:=True;
end;

//Button +-
procedure TCalculatorFM.btnplusminusClick(Sender: TObject);
begin
  FPlus :=False;
  FMinus :=False;
  FMulti :=False;
  FDiv :=False;
  if FResult<>'' then
  begin
    if txtInput.Text ='0' then
    begin
      if FPlusMinus= true then
      begin
        //txtInput.Text:='';
        txtInput.Text :='-' + txtInput.Text;
        FResult:=txtInput.Text;
        FPlusMinus := false;
      end
      else
      begin
        //txtInput.Text:='';
        txtInput.Text :='' +txtInput.Text;
        FResult:=txtInput.Text;
        FPlusMinus := true;
      end;
    end
    else
    begin
      if FPlusMinus= true then
      begin
        txtInput.Text := '-' + txtInput.Text;
        FPlusMinus := false;
      end
      else
      begin
        txtInput.Text :='' + Copy (txtInput.Text,2,(length(txtInput.text)));
        FPlusMinus := true;
      end;
    end;
  end;
  txtInput.SetFocus;
  txtInput.AutoSelect:=False;
end;

//On Activate Form
procedure TCalculatorFM.FormActivate(Sender: TObject);
begin
  txtInput.SetFocus;
end;

//Form Create
procedure TCalculatorFM.FormCreate(Sender: TObject);
begin
  FPlus := true;
  FMinus := true;
  FMulti := true;
  FDiv := true;
  FDec := true;
  FOptr := '';
  FPlusMinus:=true;
  BorderIcons:=BorderIcons - [biMaximize];
end;

//On Key Pressed
procedure TCalculatorFM.txtInputKeyPress(Sender: TObject; var Key: Char);
begin
  if Key='0' then
  begin
    Key:=#0;
    btn0.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False;
  end
  else if Key='1' then
  begin
    Key:=#0;
    btn1.Click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='2' then
  begin
    Key:=#0;
    btn2.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False;

  end
  else if Key='3' then
  begin
    Key:=#0;
    btn3.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='4' then
  begin
    Key:=#0;
    btn4.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='5' then
  begin
    Key:=#0;
    btn5.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='6' then
  begin
    Key:=#0;
    btn6.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='7' then
  begin
    Key:=#0;
    btn7.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='8' then
  begin
    Key:=#0;
    btn8.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='9' then
  begin
    Key:=#0;
    btn9.click;
    FResult := Key;
    txtInput.SetFocus;
    txtInput.AutoSelect:=False
  end
  else if Key='+' then
  begin
    CalculatorFM.SetFocus;
    btnPlus.Click
  end
  else if Key='*' then
  begin
    CalculatorFM.SetFocus;
    btnMulti.Click
  end
  else if Key='-' then
  begin
    CalculatorFM.SetFocus;
    btnMinus.Click
  end
  else if Key='/' then
  begin
    CalculatorFM.SetFocus;
    btnDiv.Click;
  end
  else if Key='.' then
  begin
    CalculatorFM.SetFocus;
    //FDec:=true;
    btnDec.Click;
  end
  else if Key=#$D then
  begin
    CalculatorFM.SetFocus;
    btnEql.Click;
  end
  else if Key=#8 then
  begin
    CalculatorFM.SetFocus;
    btnBck.Click;
  end;
  end;
end.
