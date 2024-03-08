object xmlFM: TxmlFM
  Left = 183
  Top = 0
  Caption = 'XML'
  ClientHeight = 641
  ClientWidth = 564
  Color = clBtnFace
  Constraints.MaxHeight = 680
  Constraints.MaxWidth = 580
  Constraints.MinHeight = 680
  Constraints.MinWidth = 580
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 561
    Height = 65
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object lblHeader: TLabel
      Left = 216
      Top = 10
      Width = 109
      Height = 33
      Caption = '_Books_ '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlAdddtls: TPanel
    Left = 0
    Top = 48
    Width = 345
    Height = 297
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object lblNAuthor: TLabel
      Left = 16
      Top = 51
      Width = 79
      Height = 13
      Caption = 'Author              :'
    end
    object lblNtitle: TLabel
      Left = 17
      Top = 78
      Width = 78
      Height = 13
      Caption = 'Title                  :'
    end
    object lblNDesc: TLabel
      Left = 16
      Top = 186
      Width = 81
      Height = 13
      Caption = 'Description       : '
    end
    object lblNGenre: TLabel
      Left = 16
      Top = 105
      Width = 78
      Height = 13
      Caption = 'Genre               :'
    end
    object lblNprice: TLabel
      Left = 17
      Top = 132
      Width = 78
      Height = 13
      Caption = 'Price                 :'
    end
    object lblNpubdate: TLabel
      Left = 16
      Top = 156
      Width = 78
      Height = 13
      Caption = 'Publish Date     :'
    end
    object lblAdd: TLabel
      Left = 122
      Top = 16
      Width = 127
      Height = 21
      Caption = 'Add Book Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object txtNauthor: TEdit
      Left = 106
      Top = 48
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object txtNgenre: TEdit
      Left = 106
      Top = 102
      Width = 185
      Height = 21
      TabOrder = 2
    end
    object txtNprice: TEdit
      Left = 106
      Top = 129
      Width = 185
      Height = 21
      TabOrder = 3
    end
    object txtNtitle: TEdit
      Left = 106
      Top = 75
      Width = 185
      Height = 21
      TabOrder = 1
    end
    object txtNpubdate: TEdit
      Left = 106
      Top = 156
      Width = 185
      Height = 21
      TabOrder = 4
    end
    object memNDesc: TMemo
      Left = 106
      Top = 183
      Width = 185
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 5
    end
    object pnlAdd: TPanel
      Left = 200
      Top = 232
      Width = 81
      Height = 43
      BorderStyle = bsSingle
      Color = 16567773
      ParentBackground = False
      TabOrder = 6
      object btnAdd: TSpeedButton
        Left = 1
        Top = 1
        Width = 75
        Height = 37
        Align = alClient
        Caption = 'Add'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAddClick
        ExplicitLeft = 8
        ExplicitTop = -3
        ExplicitWidth = 68
        ExplicitHeight = 44
      end
    end
    object pnlImport: TPanel
      Left = 106
      Top = 232
      Width = 79
      Height = 41
      BorderStyle = bsSingle
      Color = clSilver
      ParentBackground = False
      TabOrder = 7
      object btnImport: TSpeedButton
        Left = 1
        Top = 1
        Width = 73
        Height = 35
        Align = alClient
        Caption = 'Import'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnImportClick
        ExplicitLeft = -2
      end
    end
    object pnlimp: TPanel
      Left = 91
      Top = 246
      Width = 9
      Height = 13
      Color = clLime
      ParentBackground = False
      TabOrder = 8
    end
  end
  object pnlSearch: TPanel
    Left = 344
    Top = 48
    Width = 217
    Height = 297
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    object lblid: TLabel
      Left = 32
      Top = 84
      Width = 59
      Height = 13
      Caption = 'Book ID      :'
    end
    object lblSearch: TLabel
      Left = 32
      Top = 16
      Width = 148
      Height = 21
      Caption = 'Search Book Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object txtSearch: TEdit
      Left = 97
      Top = 81
      Width = 97
      Height = 21
      TabOrder = 0
    end
    object btnSearch: TButton
      Left = 80
      Top = 154
      Width = 81
      Height = 40
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSearchClick
    end
  end
  object pnlDisplay: TPanel
    Left = -5
    Top = 343
    Width = 566
    Height = 313
    Color = clWindow
    ParentBackground = False
    TabOrder = 3
    object pnlResults: TPanel
      Left = 14
      Top = 8
      Width = 547
      Height = 281
      BevelInner = bvRaised
      BorderStyle = bsSingle
      Color = clScrollBar
      ParentBackground = False
      TabOrder = 0
      object lblAuthor: TLabel
        Left = 8
        Top = 24
        Width = 67
        Height = 13
        Caption = 'Author          :'
      end
      object lblDescription: TLabel
        Left = 8
        Top = 211
        Width = 66
        Height = 13
        Caption = 'Description   :'
      end
      object lblTitle: TLabel
        Left = 8
        Top = 61
        Width = 66
        Height = 13
        Caption = 'Title              :'
      end
      object lblGenre: TLabel
        Left = 8
        Top = 96
        Width = 66
        Height = 13
        Caption = 'Genre           :'
      end
      object lblPrice: TLabel
        Left = 8
        Top = 127
        Width = 66
        Height = 13
        Caption = 'Price             :'
      end
      object lblPublish_date: TLabel
        Left = 8
        Top = 168
        Width = 66
        Height = 13
        Caption = 'Publish Date :'
      end
      object pnlDelete: TPanel
        Left = 359
        Top = 160
        Width = 87
        Height = 41
        BorderStyle = bsSingle
        Color = 33023
        ParentBackground = False
        TabOrder = 0
        object btnDelete: TSpeedButton
          Left = 1
          Top = 1
          Width = 81
          Height = 35
          Align = alClient
          Caption = 'Delete'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnDeleteClick
          ExplicitLeft = 8
          ExplicitTop = -16
          ExplicitWidth = 70
          ExplicitHeight = 64
        end
      end
    end
    object txtAuthor: TEdit
      Left = 111
      Top = 28
      Width = 185
      Height = 21
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 1
    end
    object txtPrice: TEdit
      Left = 111
      Top = 137
      Width = 185
      Height = 21
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 2
    end
    object txtTitle: TEdit
      Left = 111
      Top = 63
      Width = 185
      Height = 21
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 3
    end
    object txtGenre: TEdit
      Left = 111
      Top = 102
      Width = 185
      Height = 21
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 4
    end
    object txtPubDate: TEdit
      Left = 111
      Top = 172
      Width = 185
      Height = 21
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 5
    end
    object memDesc: TMemo
      Left = 111
      Top = 207
      Width = 185
      Height = 41
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object pnlUpdate: TPanel
      Left = 377
      Top = 80
      Width = 87
      Height = 41
      BorderStyle = bsSingle
      Color = 16777088
      ParentBackground = False
      TabOrder = 7
      object btnUpdate: TSpeedButton
        Left = 1
        Top = 1
        Width = 81
        Height = 35
        Align = alClient
        Caption = 'Update'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnUpdateClick
        ExplicitTop = 0
        ExplicitHeight = 42
      end
    end
  end
  object OpenDialogImport: TOpenDialog
    Left = 16
    Top = 8
  end
  object XMLDoc: TXMLDocument
    Left = 88
    Top = 8
  end
end
