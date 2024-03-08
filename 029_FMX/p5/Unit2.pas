unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D, FMX.Layouts, FMX.Objects,
  System.Actions, FMX.ActnList, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.StdActns, FMX.MediaLibrary.Actions, System.Sensors, FMX.WebBrowser,
  System.Sensors.Components;

type
  TForm2 = class(TForm)
    Layer3D1: TLayer3D;
    Layout3D1: TLayout3D;
    Layout1: TLayout;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ActionList1: TActionList;
    Image1: TImage;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    ShowShareSheetAction1: TShowShareSheetAction;
    LocationSensor1: TLocationSensor;
    WebBrowser1: TWebBrowser;
    CheckBox1: TCheckBox;
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation,
      NewLocation: TLocationCoord2D);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  LocationSensor1.Active:= CheckBox1.IsChecked;
end;

procedure TForm2.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
const
  LGoogleMapsURL : string = 'https://maps.google.com/maps?q=%s,%s';
begin
  WebBrowser1.Navigate(Format(LGoogleMapsURL,[NewLocation.Latitude,NewLocation.Longitude]));
end;

procedure TForm2.ShowShareSheetAction1BeforeExecute(Sender: TObject);
begin
  ShowShareSheetAction1.Bitmap.Assign(Image1.Bitmap);
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  ShowShareSheetAction1.Bitmap.Assign(Image1.Bitmap);
end;

procedure TForm2.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  Image1.Bitmap.Assign(Image);
end;

end.
