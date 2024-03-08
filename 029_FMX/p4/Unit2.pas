unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Sensors,
  System.Sensors.Components, FMX.Memo.Types, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Memo, FMX.WebBrowser;

type
  TForm2 = class(TForm)
    LocationSensor1: TLocationSensor;
    Memo1: TMemo;
    WebBrowser1: TWebBrowser;
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation,
      NewLocation: TLocationCoord2D);
  private
    { Private declarations }
    FGeocoder: TGeocoder;
    procedure OnGeocodeReverseEvent(const Address: TCivicAddress);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}


procedure TForm2.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
var
  URLString: string;
begin
Memo1.Lines.Clear;
Memo1.Lines.Add(Format('Latitude: %f', [NewLocation.Latitude]));
Memo1.Lines.Add(Format('Longitude: %f', [NewLocation.Longitude]));

URLString := Format('https://maps.google.com/maps?q=%s,%s',
    [Format('%2.6f', [NewLocation.Latitude]), Format('%2.6f', [NewLocation.Longitude])]);
WebBrowser1.Navigate(URLString);
try
    // Setup an instance of TGeocoder
    if not Assigned(FGeocoder) then
    begin
      if Assigned(TGeocoder.Current) then
        FGeocoder := TGeocoder.Current.Create;
      if Assigned(FGeocoder) then
        FGeocoder.OnGeocodeReverse := OnGeocodeReverseEvent;
    end;

    // Translate location to address
    if Assigned(FGeocoder) and not FGeocoder.Geocoding then
      FGeocoder.GeocodeReverse(NewLocation);
  except
    ShowMessage('Geocoder service error');
  end;

end;

procedure TForm2.OnGeocodeReverseEvent(const Address: TCivicAddress);
begin
  Memo1.Lines.Add( Address.AdminArea);
   Memo1.Lines.Add( Address.CountryCode);
   Memo1.Lines.Add(Address.CountryName);
   Memo1.Lines.Add(Address.FeatureName);
   Memo1.Lines.Add( Address.Locality);
   Memo1.Lines.Add( Address.PostalCode);
   Memo1.Lines.Add( Address.SubAdminArea);
   Memo1.Lines.Add( Address.SubLocality);
   Memo1.Lines.Add(Address.SubThoroughfare);
   Memo1.Lines.Add(Address.Thoroughfare);
end;

end.
