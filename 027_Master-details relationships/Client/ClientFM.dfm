object ClntFM: TClntFM
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 525
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrid1: TPanel
    Left = 24
    Top = 17
    Width = 489
    Height = 217
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object lblHeader: TLabel
      Left = 16
      Top = 16
      Width = 143
      Height = 19
      Caption = 'Search Customer '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object dbgCustomer: TDBGrid
      Left = 16
      Top = 64
      Width = 449
      Height = 129
      DataSource = ClientModule1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = dbgCustomerCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Customer_Id'
          Title.Caption = 'Customer ID'
          Width = 90
          Visible = True
        end>
    end
  end
  object pnlGrid2: TPanel
    Left = 24
    Top = 282
    Width = 489
    Height = 239
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object lblDetails: TLabel
      Left = 16
      Top = 24
      Width = 140
      Height = 19
      Caption = 'Customer Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object dbgDetails: TDBGrid
      Left = 16
      Top = 64
      Width = 449
      Height = 137
      DataSource = ClientModule1.DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'First_name'
          Title.Caption = 'First Name'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Last_Name'
          Title.Caption = 'Last Name'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'date_of_birth'
          Title.Caption = 'Date Of Birth'
          Width = 97
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
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'City'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Taluka'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pincode'
          Title.Caption = 'Pincode'
          Visible = True
        end>
    end
    object btnBalance: TButton
      Left = 352
      Top = 25
      Width = 113
      Height = 25
      Caption = 'Account Details'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnBalanceClick
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = ClientModule1.DataSource2
    UserName = 'DBPipeline1'
    Left = 56
    Top = 482
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'First_name'
      FieldName = 'First_name'
      FieldLength = 100
      DisplayWidth = 100
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Last_Name'
      FieldName = 'Last_Name'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'date_of_birth'
      FieldName = 'date_of_birth'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'City'
      FieldName = 'City'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'pincode'
      FieldName = 'pincode'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Taluka'
      FieldName = 'Taluka'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Account_no'
      FieldName = 'Account_no'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Account_type'
      FieldName = 'Account_type'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'current_balance'
      FieldName = 'current_balance'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Customer_Id'
      FieldName = 'Customer_Id'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 11
    end
  end
  object ppReport1: TppReport
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\kamlesg  delphi tranning\Report Builder\Client\balance.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 432
    Top = 482
    Version = '21.03'
    mmColumnWidth = 203200
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object lblAcc: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Account'
        Border.mmPadding = 0
        Caption = 'Account Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 28
        Font.Style = [fsBold, fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 11642
        mmLeft = 62971
        mmTop = 4498
        mmWidth = 74613
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 38365
      mmPrintPosition = 0
      object dbtBal: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'Balance'
        Border.mmPadding = 0
        DataField = 'current_balance'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 132821
        mmTop = 22490
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object lblBalance: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Currentgfh'
        Border.mmPadding = 0
        Caption = 'Current Balance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 53446
        mmTop = 20902
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object lblAccType: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'AccountType'
        Border.mmPadding = 0
        Caption = 'Account Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5028
        mmLeft = 53446
        mmTop = 12435
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object dbtAccType: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'AccType'
        Border.mmPadding = 0
        DataField = 'Account_type'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 132821
        mmTop = 12435
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object lblAccountNo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'AccountNo'
        Border.mmPadding = 0
        Caption = 'Account No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5028
        mmLeft = 53446
        mmTop = 2910
        mmWidth = 23812
        BandType = 4
        LayerName = Foreground
      end
      object dbtAccNo: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'AccNo'
        Border.mmPadding = 0
        DataField = 'Account_no'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 132821
        mmTop = 2910
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object pbPage2: TppPageBreak
        DesignLayer = ppDesignLayer1
        UserName = 'Page2'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 29898
        mmWidth = 203200
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object pbPage3: TppPageBreak
        DesignLayer = ppDesignLayer1
        UserName = 'Page3'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 31750
        mmWidth = 203200
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object svDateTime: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'DateTime'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 168805
        mmTop = 3175
        mmWidth = 31221
        BandType = 8
        LayerName = Foreground
      end
      object svPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'PageNo'
        Border.mmPadding = 0
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 3175
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object pbPage1: TppPageBreak
        DesignLayer = ppDesignLayer1
        UserName = 'Page1'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 10054
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object svTotalPages: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'TotalPages'
        Border.mmPadding = 0
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 29369
        mmTop = 3175
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object lblPage: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Page'
        Border.mmPadding = 0
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 4763
        mmTop = 3175
        mmWidth = 8731
        BandType = 8
        LayerName = Foreground
      end
      object lblOf: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Of'
        Border.mmPadding = 0
        Caption = 'Of'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 3175
        mmWidth = 6615
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Visible = False
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      EndPage = 0
      PageSetting = psIncremental
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 266700
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
