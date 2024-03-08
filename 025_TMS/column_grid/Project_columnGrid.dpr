program Project_columnGrid;

uses
  Vcl.Forms,
  Column_grid in 'Column_grid.pas' {ColnGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TColnGrid, ColnGrid);
  Application.Run;
end.
