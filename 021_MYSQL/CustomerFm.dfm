object BnkdetailsFM: TBnkdetailsFM
  Left = 219
  Top = 115
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Bank Details'
  ClientHeight = 589
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  DesignSize = (
    644
    589)
  PixelsPerInch = 96
  TextHeight = 33
  object lblBnkName: TLabel
    Left = 197
    Top = 8
    Width = 280
    Height = 24
    Anchors = [akTop]
    Caption = '_Welcome to The Indian Bank_'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ExplicitLeft = 143
  end
  object pgcBank: TPageControl
    Left = 8
    Top = 43
    Width = 644
    Height = 466
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      AlignWithMargins = True
      Caption = 'Customer Details'
      object pnlCustDtls: TPanel
        Left = 0
        Top = 0
        Width = 630
        Height = 426
        Align = alClient
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object lblAccNo: TLabel
          Left = 269
          Top = 206
          Width = 77
          Height = 16
          Caption = 'Account No. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblFname: TLabel
          Left = 21
          Top = 72
          Width = 75
          Height = 16
          Caption = 'First Name  :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblEmail: TLabel
          Left = 278
          Top = 117
          Width = 68
          Height = 16
          Caption = 'Email        :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblLname: TLabel
          Left = 277
          Top = 72
          Width = 69
          Height = 16
          Caption = 'Last Name :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPin: TLabel
          Left = 277
          Top = 157
          Width = 69
          Height = 16
          Caption = 'Pincode     :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblMob: TLabel
          Left = 22
          Top = 117
          Width = 74
          Height = 16
          Caption = 'Mobile        :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCity: TLabel
          Left = 22
          Top = 157
          Width = 74
          Height = 16
          Caption = 'City            :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTaluka: TLabel
          Left = 22
          Top = 206
          Width = 71
          Height = 16
          Caption = 'Taluka       :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCustDtls: TLabel
          Left = 177
          Top = 9
          Width = 153
          Height = 24
          Caption = 'Customer Details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object txtFname: TEdit
          Left = 115
          Top = 69
          Width = 126
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object txtMobile: TEdit
          Left = 115
          Top = 114
          Width = 126
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
        end
        object txtCity: TEdit
          Left = 115
          Top = 154
          Width = 126
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object txtLname: TEdit
          Left = 352
          Top = 69
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object txtPincode: TEdit
          Left = 352
          Top = 154
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 6
          NumbersOnly = True
          ParentFont = False
          TabOrder = 4
        end
        object btnSave: TButton
          Left = 95
          Top = 278
          Width = 75
          Height = 25
          Caption = 'Add'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnSaveClick
        end
        object btnUpdate: TButton
          Left = 206
          Top = 278
          Width = 75
          Height = 25
          Caption = 'Update'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnUpdateClick
        end
        object btnDelete: TButton
          Left = 309
          Top = 278
          Width = 75
          Height = 25
          Caption = 'Delete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnDeleteClick
        end
        object txtEmail: TEdit
          Left = 352
          Top = 114
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object txtAcNo: TEdit
          Left = 352
          Top = 202
          Width = 121
          Height = 24
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object txtTaluka: TEdit
          Left = 115
          Top = 203
          Width = 126
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object btnClear: TButton
          Left = 413
          Top = 278
          Width = 75
          Height = 25
          Caption = 'Clear'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = btnClearClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Account Details'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlAccInfo: TPanel
        Left = 0
        Top = 0
        Width = 636
        Height = 432
        Align = alClient
        Anchors = [akTop, akRight, akBottom]
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object lblAccInfo: TLabel
          Left = 131
          Top = 12
          Width = 180
          Height = 24
          Caption = 'Account Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
        end
        object lblCrBal: TLabel
          Left = 82
          Top = 91
          Width = 100
          Height = 16
          Caption = 'Current Balance :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCrDr: TLabel
          Left = 82
          Top = 138
          Width = 101
          Height = 16
          Caption = 'Debit /Credit      :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtCurBal: TEdit
          Left = 212
          Top = 88
          Width = 141
          Height = 24
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object txtCrDr: TEdit
          Left = 212
          Top = 135
          Width = 141
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
        end
        object btnDebit: TButton
          Left = 131
          Top = 203
          Width = 75
          Height = 25
          Caption = 'Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnDebitClick
        end
        object btnCredit: TButton
          Left = 236
          Top = 203
          Width = 75
          Height = 25
          Caption = 'Credit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnDebitClick
        end
        object btnShowBal: TButton
          Left = 337
          Top = 203
          Width = 112
          Height = 25
          Caption = 'Show Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnShowBalClick
        end
      end
    end
  end
  object pnlLogout: TPanel
    Left = 546
    Top = 8
    Width = 81
    Height = 33
    Anchors = [akTop]
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      81
      33)
    object btnLogout: TButton
      Left = 4
      Top = 4
      Width = 73
      Height = 25
      Anchors = [akTop]
      Caption = 'Logout'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnLogoutClick
    end
  end
  object pnlGrid: TPanel
    Left = 12
    Top = 400
    Width = 633
    Height = 181
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      633
      181)
    object DBGrid2: TDBGrid
      Left = 3
      Top = 8
      Width = 616
      Height = 161
      Anchors = [akLeft, akTop, akRight]
      DataSource = DataModule4.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Customer_id'
          Title.Caption = 'Customer Id'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'First_name'
          Title.Caption = 'First Name'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Last_Name'
          Title.Caption = 'Last Name'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'City'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mobile'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pincode'
          Title.Caption = 'Pincode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Taluka'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Account_no'
          Title.Caption = 'Account No.'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Account_type'
          Title.Caption = 'Account Type'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Creation_date'
          Title.Caption = 'Creation Date'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'current_balance'
          Title.Caption = 'Current Balance'
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserID'
          Width = 58
          Visible = True
        end>
    end
  end
end
