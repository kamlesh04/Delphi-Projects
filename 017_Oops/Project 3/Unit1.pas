unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCMapsCommonTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCWebBrowser, VCL.TMSFNCMaps, VCL.TMSFNCGoogleMaps;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    TMSFNCMaps1: TTMSFNCMaps;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TMSFNCMaps1MarkerMouseUp(Sender: TObject;
      AEventData: TTMSFNCMapsEventData);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  //
  TParent = class
    public
      procedure WithVirtual; virtual;//abstract;
      procedure WithoutVirtual;
  end;

  TChild = class(TParent)
    procedure WithVirtual; override;
    procedure WithoutVirtual;
  end;
  //Anonymous method
  TTestProc = reference to procedure(Name: string);
  TMain = class
    procedure DisplayName(Name : string ; atestproc: TTestProc);

  end;

  TGenericClass<T> = class
    private
      value : T;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TChild }

procedure TChild.WithoutVirtual;
begin
  ShowMessage('WithoutVirtual of child class');
end;

procedure TChild.WithVirtual;
begin
  inherited;
  ShowMessage('WithVirtual of child class');
end;

{ TParent }

procedure TParent.WithoutVirtual;
begin
  ShowMessage('WithoutVirtual of parent parent');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  child : TParent;
begin
  child:=  TChild.Create;
  child.WithVirtual;
end;

procedure TParent.WithVirtual;
begin
  ShowMessage('WithVirtual of parent class');
end;

{ TMain }

procedure TMain.DisplayName(Name: string; atestproc: TTestProc);
begin
  atestproc(Name);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  main : TMain;
  genericClass : TGenericClass<string>;
begin
  main := TMain.Create;
  genericClass := TGenericClass<string>.Create;
  try
    main.DisplayName('Test',
    procedure(Name:string) begin
      ShowMessage('Name is :' + Name);
    end
    );
    genericClass.value := 'test genric';
    ShowMessage('Value is :' + genericClass.value);
    //genericClass.value := 123;
  finally
    FreeAndNil(main);
    FreeAndNil(genericClass);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  p1 : TTMSFNCMapsPolyline;
  m: TTMSFNCMapsMarker;
  hor,verr: TTMSFNCMapsCoordinateRec;
  ov: TTMSFNCGoogleMapsOverlayView;
  locations: array of TTMSFNCMapsCoordinateRec;
  I: Integer;
begin
 locations := [
 CreateCoordinate(-31.563910, 147.154312),
 CreateCoordinate(-33.718234, 150.363181),
 CreateCoordinate(-33.727111, 150.371124),
 CreateCoordinate(-33.848588, 151.209834),
 CreateCoordinate(-33.851702, 151.216968),
 CreateCoordinate(-34.671264, 150.863657),
 CreateCoordinate(-35.304724, 148.662905),
 CreateCoordinate(-36.817685, 175.699196),
 CreateCoordinate(-36.828611, 175.790222),
 CreateCoordinate(-37.750000, 145.116667),
 CreateCoordinate(-37.759859, 145.128708),
 CreateCoordinate(-37.765015, 145.133858),
 CreateCoordinate(-37.770104, 145.143299),
 CreateCoordinate(-37.773700, 145.145187),
 CreateCoordinate(-37.774785, 145.137978),
 CreateCoordinate(-37.819616, 144.968119),
 CreateCoordinate(-38.330766, 144.695692),
 CreateCoordinate(-39.927193, 175.053218),
 CreateCoordinate(-41.330162, 174.865694),
 CreateCoordinate(-42.734358, 147.439506),
 CreateCoordinate(-42.734358, 147.501315),
 CreateCoordinate(-42.735258, 147.438000),
 CreateCoordinate(-43.999792, 170.463352)];
 TMSFNCMaps1.BeginUpdate;
 for I := 0 to Length(locations) - 1 do
 begin
 TMSFNCMaps1.AddMarker(locations[I]);
 end;
 TMSFNCMaps1.EndUpdate;
//  TMSFNCMaps1.ClearPolylines;
//  hor.Latitude :=  15.2993;
//  hor.Longitude := 74.1240;
//
//  verr.Latitude := 15.2993;
//  verr.Longitude := 74.1245;
//
//  p1 := TMSFNCMaps1.AddPolyline([hor,verr]);
//  p1.DataInteger :=1;
//  p1.StrokeColor := gcRed;
//  p1.StrokeWidth := 3;
//
////  //ov:= TMSFNCMaps1.
//  m:= TMSFNCMaps1.AddMarker((hor.Latitude + verr.Latitude)/2, (hor.Longitude + verr.Longitude)/2,'My marker');
//  TMSFNCMaps1.ZoomToBounds([hor,verr]);
  //TMSFNCMaps1.ShowPopup(DefaultCoordinate, '<div>Zoom Level<span id="customZoom1">12</span></div><div><input type="range" min="0" value="12" max="18" id="customRange1"></div>')
end;

procedure TForm1.TMSFNCMaps1MarkerMouseUp(Sender: TObject;
  AEventData: TTMSFNCMapsEventData);
begin
  TMSFNCMaps1.ShowPopup(DefaultCoordinate, '<div>Hover on marker</div>')
end;

end.
