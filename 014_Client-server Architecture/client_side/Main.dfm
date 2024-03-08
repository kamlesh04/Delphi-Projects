object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 240
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 8
    Top = 111
    Width = 409
    Height = 121
    DataSource = ClientModule1.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Customer_id'
        Title.Caption = 'Customer Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'First_name'
        Title.Caption = 'First Name'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Last_Name'
        Title.Caption = 'Last Name'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'current_balance'
        Title.Caption = 'Current Balance'
        Width = 101
        Visible = True
      end>
  end
  object pnlSearch: TPanel
    Left = 8
    Top = 8
    Width = 409
    Height = 97
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object lblID: TLabel
      Left = 24
      Top = 21
      Width = 60
      Height = 13
      Caption = 'Customer ID'
    end
    object txtID: TEdit
      Left = 24
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnSearch: TButton
      Left = 168
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 1
      OnClick = btnSearchClick
    end
    object btnsalary: TButton
      Left = 249
      Top = 37
      Width = 64
      Height = 25
      Caption = 'Max Salary'
      TabOrder = 2
      OnClick = btnsalaryClick
    end
  end
end
