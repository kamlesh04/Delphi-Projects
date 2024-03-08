object frmAboutUs: TfrmAboutUs
  Width = 640
  Height = 480
  object btnHome: TWebButton
    Left = 176
    Top = 16
    Width = 96
    Height = 25
    Caption = 'Home'
    ChildOrder = 6
    ElementID = 'Home'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnHomeClick
  end
  object btnLogout: TWebButton
    Left = 512
    Top = 16
    Width = 96
    Height = 25
    Caption = 'Logout'
    ChildOrder = 3
    ElementID = 'logout'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnLogoutClick
  end
  object btnServices: TWebButton
    Left = 288
    Top = 16
    Width = 96
    Height = 25
    Caption = 'Our Services'
    ChildOrder = 6
    ElementID = 'Services'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnServicesClick
  end
  object btnContactUs: TWebButton
    Left = 402
    Top = 16
    Width = 96
    Height = 25
    Caption = 'Contact Us'
    ChildOrder = 6
    ElementID = 'Contact'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnContactUsClick
  end
end
