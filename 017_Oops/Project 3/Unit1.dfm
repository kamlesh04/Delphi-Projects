object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 439
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object TMSFNCMaps1: TTMSFNCMaps
    Left = -5
    Top = 39
    Width = 865
    Height = 441
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 2
    OnMarkerMouseUp = TMSFNCMaps1MarkerMouseUp
    Polylines = <>
    Polygons = <>
    Circles = <>
    Rectangles = <>
    Markers = <>
    ElementContainers = <
      item
        HTML.Strings = (
          '<div>'
          'Zoom Level'
          '<span id="customZoom1">12</span>'
          '</div>'
          '<div>'
          
            '<input type="range" min="0" value="12" max="18" id="customRange1' +
            '">'
          '</div>')
        Actions = <>
        Coordinate.Longitude = 20.689700000000000000
        Coordinate.Latitude = 20.689700000000000000
        HTMLElementID = 'ElementContainer0'
        Margins.Top = 300.000000000000000000
      end>
    Labels = <>
    HeadLinks = <>
    Options.DefaultLatitude = 40.689247000000000000
    Options.DefaultLongitude = -74.044502000000000000
    Options.DefaultZoomLevel = 12.000000000000000000
    Service = msOpenLayers
  end
  object Button3: TButton
    Left = 8
    Top = 127
    Width = 33
    Height = 42
    Caption = 'Button3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG'
      'Database=TestDB'
      'CharacterSet=UTF8'
      'Password=admin'
      'Server=localhost'
      'User_Name=postgres')
    FetchOptions.AssignedValues = [evLiveWindowFastFirst]
    LoginPrompt = False
    Left = 464
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'D:\KamleshGaonkar\kamlesh\Practice\Oops\Win32\Debug\libpq.dll'
    Left = 360
    Top = 8
  end
end
