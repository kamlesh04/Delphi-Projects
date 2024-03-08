object frmOurServices: TfrmOurServices
  Width = 798
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
  object btnAboutUs: TWebButton
    Left = 290
    Top = 16
    Width = 96
    Height = 25
    Caption = 'About Us'
    ChildOrder = 6
    ElementID = 'About'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnAboutUsClick
  end
  object pnlMain: TWebPanel
    Left = 32
    Top = 80
    Width = 625
    Height = 353
    ElementID = 'tabs'
    BorderStyle = bsNone
    ChildOrder = 5
    object wpcMain: TWebPageControl
      Left = 30
      Top = 24
      Width = 576
      Height = 313
      ChildOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TabIndex = 0
      ParentFont = False
      TabOrder = 0
      object wpcsRides: TWebTabSheet
        Left = 0
        Top = 20
        Width = 576
        Height = 293
        Align = alClient
        Caption = 'Rides'
        ChildOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        object lblCurrentLoc: TWebLabel
          Left = 88
          Top = 29
          Width = 109
          Height = 20
          Caption = 'Current Location'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object lblDestLoc: TWebLabel
          Left = 313
          Top = 30
          Width = 137
          Height = 20
          Caption = 'Destination Location'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object lblStartTime: TWebLabel
          Left = 88
          Top = 102
          Width = 68
          Height = 20
          Caption = 'Start Time'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object lblEndTime: TWebLabel
          Left = 313
          Top = 102
          Width = 62
          Height = 20
          Caption = 'End Time'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object lblDate: TWebLabel
          Left = 88
          Top = 184
          Width = 32
          Height = 20
          Caption = 'Date'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object edtEndTime: TWebEdit
          Left = 313
          Top = 134
          Width = 145
          Height = 28
          ChildOrder = 2
          HeightPercent = 100.000000000000000000
          TextHint = 'End Time'
          WidthPercent = 100.000000000000000000
          OnKeyDown = edtEndTimeKeyDown
        end
        object edtStartTime: TWebEdit
          Left = 88
          Top = 134
          Width = 145
          Height = 28
          ChildOrder = 2
          HeightPercent = 100.000000000000000000
          Pattern = #39'\d{4,4}'#39
          TextHint = 'Start TIme'
          WidthPercent = 100.000000000000000000
          OnKeyDown = edtStartTimeKeyDown
        end
        object dtpDate: TWebDateTimePicker
          Left = 88
          Top = 213
          Width = 145
          Height = 28
          ElementClassName = 'dtpDate'
          BorderStyle = bsSingle
          ChildOrder = 10
          Color = clWhite
          Date = 45320.740039976850000000
          Role = ''
          Text = ''
        end
        object btnAddRides: TWebButton
          Left = 313
          Top = 210
          Width = 96
          Height = 33
          Caption = 'Add'
          ChildOrder = 10
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnAddRidesClick
        end
        object cbCurrentLoc: TWebComboBox
          Left = 88
          Top = 60
          Width = 145
          Height = 28
          HeightPercent = 100.000000000000000000
          TextHint = 'Current Location'
          WidthPercent = 100.000000000000000000
          ItemIndex = -1
          Items.Strings = (
            'Margao'
            'Panaji'
            'Mapusa')
        end
        object cbDestLoc: TWebComboBox
          Left = 313
          Top = 60
          Width = 145
          Height = 28
          HeightPercent = 100.000000000000000000
          TextHint = 'Destination Location'
          WidthPercent = 100.000000000000000000
          ItemIndex = -1
          Items.Strings = (
            'Margao'
            'Panaji'
            'Mapusa')
        end
      end
      object wpcsUsers: TWebTabSheet
        Left = 0
        Top = 20
        Width = 576
        Height = 293
        Align = alClient
        Caption = 'Users'
        ChildOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        object lblName: TWebLabel
          Left = 80
          Top = 22
          Width = 40
          Height = 20
          Caption = 'Name'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object lblEmail: TWebLabel
          Left = 305
          Top = 22
          Width = 37
          Height = 20
          Caption = 'Email'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object lblPhone: TWebLabel
          Left = 305
          Top = 102
          Width = 99
          Height = 20
          Caption = 'Phone Number'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object lblUserType: TWebLabel
          Left = 80
          Top = 102
          Width = 64
          Height = 20
          Caption = 'User Type'
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object edtName: TWebEdit
          Left = 80
          Top = 48
          Width = 145
          Height = 28
          ChildOrder = 4
          HeightPercent = 100.000000000000000000
          TextHint = 'Name'
          WidthPercent = 100.000000000000000000
        end
        object edtEmail: TWebEdit
          Left = 305
          Top = 48
          Width = 145
          Height = 28
          ChildOrder = 1
          HeightPercent = 100.000000000000000000
          TextHint = 'Email'
          WidthPercent = 100.000000000000000000
        end
        object edtPhone: TWebEdit
          Left = 305
          Top = 134
          Width = 145
          Height = 28
          ChildOrder = 2
          HeightPercent = 100.000000000000000000
          TextHint = 'Phone Number'
          WidthPercent = 100.000000000000000000
        end
        object cbUserType: TWebComboBox
          Left = 80
          Top = 134
          Width = 145
          Height = 28
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          ItemIndex = -1
          Items.Strings = (
            ''
            'Owner'
            'Passenger')
        end
        object btnAdd: TWebButton
          Left = 213
          Top = 216
          Width = 108
          Height = 33
          Caption = 'Add'
          ChildOrder = 7
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnAddClick
        end
      end
      object wpcsVehicles: TWebTabSheet
        Left = 0
        Top = 20
        Width = 576
        Height = 293
        Caption = 'Vehicles'
        ChildOrder = 2
        object WebAuth1: TWebAuth
          Left = 27
          Top = 30
          Width = 332
          Height = 150
          Services.Google.ClientID = 
            '424654511707-f8ch1ki1e368cbloniliete5bsdhl011.apps.googleusercon' +
            'tent.com'
          Services.Google.AutoSelect = True
        end
      end
    end
  end
  object WebTimer1: TWebTimer
    Enabled = False
    OnTimer = WebTimer1Timer
    Left = 704
    Top = 104
  end
end
