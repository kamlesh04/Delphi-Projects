program Calculator;

uses
  Vcl.Forms,
  CalFM in 'CalFM.pas' {CalculatorFM},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Lavender Classico');
  Application.CreateForm(TCalculatorFM, CalculatorFM);
  Application.Run;
end.
