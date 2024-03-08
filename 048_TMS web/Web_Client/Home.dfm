object frmHome: TfrmHome
  Width = 872
  Height = 690
  OnShow = WebFormShow
  object lblUsers: TWebLabel
    Left = 80
    Top = 96
    Width = 16
    Height = 20
    Caption = '10'
    ElementID = 'userscnt'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblRides: TWebLabel
    Left = 80
    Top = 128
    Width = 16
    Height = 20
    Caption = '10'
    ElementID = 'ridescnt'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object lblVehicles: TWebLabel
    Left = 80
    Top = 176
    Width = 16
    Height = 20
    Caption = '10'
    ElementID = 'vehiclescnt'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnLogout: TWebButton
    Left = 696
    Top = 24
    Width = 96
    Height = 25
    Caption = 'Logout'
    ChildOrder = 3
    ElementID = 'logout'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnLogoutClick
  end
  object WebHTMLContainer: TWebHTMLContainer
    Left = 200
    Top = 256
    Width = 281
    Height = 201
    ElementID = 'Report'
    ChildOrder = 4
  end
  object GererateReport: TWebButton
    Left = 200
    Top = 152
    Width = 96
    Height = 25
    Caption = 'Gererate Report'
    ChildOrder = 5
    ElementID = 'genrep'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = GererateReportClick
  end
  object btnAboutUs: TWebButton
    Left = 472
    Top = 24
    Width = 96
    Height = 25
    Caption = 'About Us'
    ChildOrder = 6
    ElementID = 'About'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnAboutUsClick
  end
  object btnContactUs: TWebButton
    Left = 586
    Top = 24
    Width = 96
    Height = 25
    Caption = 'Contact Us'
    ChildOrder = 6
    ElementID = 'Contact'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnContactUsClick
  end
  object btnServices: TWebButton
    Left = 370
    Top = 24
    Width = 96
    Height = 25
    Caption = 'Our Services'
    ChildOrder = 8
    ElementID = 'Services'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnServicesClick
  end
  object WebHttpRequest: TWebHttpRequest
    URL = 'http://localhost:2001/tms/xdata/fetchusersservice/GenerateReport'
    OnResponse = WebHttpRequestResponse
    Left = 792
    Top = 296
  end
end
