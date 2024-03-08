object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 201
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  StyleElements = [seFont, seClient]
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDetails: TPanel
    Left = 8
    Top = 0
    Width = 321
    Height = 145
    TabOrder = 0
    object btnPreview: TButton
      Left = 96
      Top = 24
      Width = 99
      Height = 25
      Caption = 'Preview  Report'
      TabOrder = 0
      OnClick = btnPreviewClick
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = ClientModule1.DataSource1
    UserName = 'DBPipeline1'
    Left = 16
    Top = 152
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 201
      DisplayWidth = 201
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'City'
      FieldName = 'City'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Account_no'
      FieldName = 'Account_no'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Current_balance'
      FieldName = 'Current_balance'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Comment'
      FieldName = 'Comment'
      FieldLength = 250
      DisplayWidth = 250
      Position = 6
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    DeviceType = 'PDF'
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
    Left = 288
    Top = 152
    Version = '21.03'
    mmColumnWidth = 203200
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 46566
      mmPrintPosition = 0
      object lblHead: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Customer'
        Border.mmPadding = 0
        Caption = 'Customer Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 28
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 11642
        mmLeft = 62971
        mmTop = 4498
        mmWidth = 80963
        BandType = 0
        LayerName = Foreground
      end
      object ppTableGrid1: TppTableGrid
        DesignLayer = ppDesignLayer1
        UserName = 'TableGrid1'
        DefaultColWidth = 0.500000000000000000
        DefaultRowHeight = 0.500000000000000000
        KeepTogether = True
        mmHeight = 14817
        mmLeft = 5556
        mmTop = 29898
        mmWidth = 194734
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmDefaultRowHeight = 12700
        mmDefaultColWidth = 12700
        object ppTableRow1: TppTableRow
          DesignLayer = ppDesignLayer1
          UserName = 'TableRow1'
          mmHeight = 14817
          mmLeft = 0
          mmTop = 0
          mmWidth = 48948
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell1: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell1'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14817
            mmPadding = 1058
            NoBorder = True
            object lblName: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Name'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Name'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 6350
              mmLeft = 9789
              mmTop = 35190
              mmWidth = 28839
              BandType = 0
              LayerName = Foreground
            end
          end
          object ppTableCell2: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell2'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14817
            mmPadding = 1058
            NoBorder = True
            object lblCity: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'City'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'City'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 6350
              mmLeft = 47890
              mmTop = 35190
              mmWidth = 24077
              BandType = 0
              LayerName = Foreground
            end
          end
          object ppTableCell3: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell3'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14817
            mmPadding = 1058
            NoBorder = True
            object lblMobile: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Mobile'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Mobile'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 6350
              mmLeft = 75406
              mmTop = 35190
              mmWidth = 29369
              BandType = 0
              LayerName = Foreground
            end
          end
          object ppTableCell4: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell4'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14817
            mmPadding = 1058
            NoBorder = True
            object lblEmail: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Email'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Email'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 6350
              mmLeft = 109537
              mmTop = 35190
              mmWidth = 37307
              BandType = 0
              LayerName = Foreground
            end
          end
          object ppTableCell5: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell5'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14817
            mmPadding = 1058
            NoBorder = True
            object lblAccNo: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'AccNo'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'AccNo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 6350
              mmLeft = 151342
              mmTop = 35190
              mmWidth = 18785
              BandType = 0
              LayerName = Foreground
            end
          end
          object ppTableCell6: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell6'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14817
            mmPadding = 1058
            NoBorder = True
            object lblSalary: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Salary'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Salary'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 16
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 6350
              mmLeft = 176213
              mmTop = 35190
              mmWidth = 23018
              BandType = 0
              LayerName = Foreground
            end
          end
        end
        object ppTableColumn1: TppTableColumn
          UserName = 'TableColumn1'
          mmWidth = 39952
        end
        object ppTableColumn2: TppTableColumn
          UserName = 'TableColumn2'
          mmWidth = 27517
        end
        object ppTableColumn3: TppTableColumn
          UserName = 'TableColumn3'
          mmWidth = 32808
        end
        object ppTableColumn4: TppTableColumn
          UserName = 'TableColumn4'
          mmWidth = 42069
        end
        object ppTableColumn5: TppTableColumn
          UserName = 'TableColumn5'
          mmWidth = 24342
        end
        object ppTableColumn6: TppTableColumn
          UserName = 'TableColumn6'
          mmWidth = 28046
        end
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 3
        Weight = 2.000000000000000000
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 22754
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground
      end
      object imgHead: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'imgHead'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000C80000
          00C808030000009A865EAC000000F3504C5445FFFFFFEC0811003582003A85E9
          00000D3F880D3D87EC010BEF363BEE1E25EF151FED141B00287A00116C00146E
          FEF8F8F03D42FACBCCEE262CF26D71002276FDF1F1F1494DEEF4F8F58E91AEC1
          D913468D819BC1FF0000003E977D1B464E72A6002E7E7892BB001B7100328024
          51939CB1CFCAD4E3FBD6D6305A9900005DE7EBF37893BB000766FCDFDFF9B7B9
          000061FAC5C6D8E0EB5A7BAE325C9900005540669EF1585CF37A7D8AA0C5F698
          9AF48889EF8F93E8FFFFEDC8CDB4C5DBF26F74FF17167D1844BCCFE1374B8F6D
          85B3CBD9E69DABCBC5C9DD699CCA7C27520039936483B27E103BAAADCB536DA2
          8A9BC00D489B1480BE5B000008B44944415478DAED9DFD731AC719C7F73838E0
          C0609D7811928D4424241747B671EAB74C47996AEA4E3BF9217F6CA76FD34E3A
          D3369DDA9A4871542BD14BC48B5E2C100221C3F16201D9DD7B054508A2B7457D
          BE3FDCDD2EBBCFEDE7F6F51676E1D00D1177DD09001000615C00C29A00843501
          086B0210D60420AC0940581380B02600614D00C29AFE8F410247BD8715ADAD7D
          ED7AB825F71ED17178F920D67E02377C3AC8ED523F118F2F1FC4D9ACF71C96F7
          F03A4820DFE8E3267DE41E8000088000088000088000088000C81582080DFE94
          B00DC1651AC69F160A35F84E93D703C2F3A73EEB3690534DF2880510DE3653C9
          9E12763CD52C6AD733CED4692603DEC58E47712D209E7CDF363AF5EC6B26401A
          C5BE8D7468B80820000220000220000220000220000220D70B123CC344665040
          9EFFCFD3C5C0DE47EF3B49580589787EE862C052F20F0AC8D8FB7237039E0680
          00088000C8A083B4CFFE0AD66E062E0884EB9C8B6E78CE0DF274B1C383AF5D3E
          C88B44BBFBA3D6CAB9411EB837DB3D26BFBA7C901ED437C809FDEADF37042478
          6688010189AD0008800008800C12C855F423339D5FE10656CF0D32CBB77FE31B
          08FCEBF241C47AFB60AB61132E62D0D8EE516F5D3E88AB733C27D82E00A4C3A3
          710520F03E0220000220370FE4A81B88240C0C48C4B1DFC5402D501A149078A9
          EBEA9DE83F3B7D5805E95B0002200002200002200002200002200072C520E75F
          3FF2D95737048489853082D5766AD8AAC7B47945D9716AB85AE7BAAD6B592C26
          745996C77B741047B7FD283A4DC03A440001100001100001100001100001908B
          04711D5F0108BA829F704805B1E7B0F29001F274A1F778A859B97C10460520AC
          0940581380B02600614D00C29A00843501086B0210D60420AC09405853078854
          D52F2BFE2C7AF446D4E7659E3AED7FBAEED49AE4DBED0A6237F6576D58ABE8C1
          0AD2DDFEE8C6CE75A7DEAC66571097F165B802622CE2F25B5A2C81F01FCE0651
          67043D7992236AB41B0242F265E0401A8D87CA7CA5B08CFC92E27DFB6BFE3C20
          1194F89931CF07727202F9C5820984735AF0D19F6CA1891CC62DA0F19C124A70
          A7C9C743FA24B72F899D77F32D3FCAA1A6697E7D428DE0CBAA9E8AC96605DF99
          9B20B3C5D2564BF12B696E44CFE483DE417C2796B18CE44C20E208B1B17D9747
          521621E7B66F584957A0B0C70D6FB5C2AA93F8E451D22544769B6836F78D2B90
          D0F2475257C9FA961D34F148F4905F18EDDA31577837842FAD1959F1DB12EBC4
          FD41C8393E7D839085DF932F0CC4E521E7A966D657C920142A71236B6AB0E9F0
          EBA6ECFEE5975AB4A0131D3CB5FE955EC71CEB2A49B814D0DA90E0C3FF2092B0
          586D1D1FC786B0FF8465035F46ED2BAEB93FE20BDB4C95B8C76F21F77FF1F9E5
          7AEE02417C244153876E34B4846FB9E7BF63ACD08966A4BCEB9DE68A170E6E19
          FDD6E37599168B706E74CD14C19F40A24C77DC8AAFFBD24812688C4FD6B8A945
          4C5AB00709C893D6EDBFE3D37CF2A8D067D18A398BF45F8536C7123F0D32EAC8
          A22801C9F82AEF9029B57EC319DFAA4F2E91077E4C532E28BFB5534062C72EF2
          111AADE7914B52164F3F592D6920F11FC28209848F6C500E94D22AF01920641B
          1AFA63B15855A47968772FE0E3A7AF318CD6B32B2093EE46EAF9DF7490796EE7
          CE327EACB16CCD8D9DD3775356E42AEFD014460BB57B0B5AD1D140EE5B1BC7DF
          D3229A44AE91756AF9B7BB2B1A081A0B350D90A02863DB2F97EA65BD21EA3947
          5695AFF1DC43292D47DA4142B3097494D141A2D6ED99035AE45C59EC0C8D7D68
          A094BD1E5C276C75C91BC435D5438A91061271F0A4F4C7D2BEB454C4899AC619
          149373B206827CBEEF8D1C219ACE9B38CE0299258765D409E21FC187E0EB9209
          C428E41424E4E4F603B434970EB13338835B9EC441F305C9B3BD320AF3A46556
          7A5AB568DD4DE063FCED9D542B460AD1B8FB2D3EE4CB3A4894EF04D93337E167
          80E86A07A1FADDF64A5790E26DDABE88875A1D99CB57EC38CAF3B765DC510410
          522BAAB9B2C7DF674B91FD47B8B5989416283305090EE378F35FB68390A6AC1F
          106FF1274088E76F5E957BCE1115A444DA35021221A36A359A9623284B6AFB54
          F388243D5EAD953328E8CE382888A3AAACB96C03415319B9D73A225590C5CE9F
          A8232FBE6DA2674EEE2F2690279E14BA65B45A51BB2C99EA48EC0EBE9E7E5527
          CF7AFA5D4B8EB504DC4B17BCE63A521349EF11DD1B2F63DF391BDA5A238D9E9D
          16ADC9E3541B48E831E9545EBE320A570FAD161A2220690B1DF04F0A7AABF5E8
          8DB9B25B6229EE99D16ACD2DD63FDE21AD569A23AD5628B0C9E1D18B483BB5C7
          757E9FA48E541603647815D190A60E159BF9C6572541A76C8E2533C83DF710BE
          17BACF7DD763F36BB45AEBE1342D5361B28757B70E51ED47D4FD973E4FC9946B
          BBC9E3A22479E9CE9373DE3F90D327EB250324BE8746485A9F173F6C981220D8
          6917FAA4A4F8EA1DA2EAB639CBFD8EB5F4FD48336782987AF6F964D6427AF6F9
          6F9501A4483B1045A4AE18209A6C53473B64AC826D92D6FCF3CDE22E650ED351
          8B0EB2AAB8E71786D37D82B4A90D2456D0C65A49F2B4976809534AF4C3454FD2
          4D4A4ABCD8546EE8FAF586DAD47CF10FB580874BBCBE7A3A6EA9958895B1D01A
          1AF3E30712F4E7698EAC0A8886B2CDD06E73BCE06B927068ECBD3F715120D278
          5516D19A3D88EE2565B154AE0EBB490A4579F6CF4E3C9815B153B4AF05D536CA
          55FEFDE22D5759CA655A15A554441AF79334020A15BFB348754E1051A1EE4D28
          76AB895FE0CF0A4715D728AEAF727AA8388DDDB5BDCAF8B02CA3BAD0E27B0739
          B1395EC7FBC810D9192580DF47DC386576FC3EA2827302194B71C4E9D7C7449C
          93F3677DA59A3F699873EB1F4A69FCBE815D0492DAE5CA13648C8F5F071467C9
          3A7AA0BAE96D74C3BD807CAC1643CCE355AE9CB9F3BC2146708F9EFE79514F57
          2FEFECCACC0999D77AB04CE7B55A556100DFD9F5C9075B65D06751140DF6BC96
          DDB8641CE48C9946A731F78BBC87B88E18CECF36E9788715F9BBCFFD0EAE0084
          3501086B0210D60420AC0940581380B02600614D00C29A00843501086B0210D6
          F42324464723B7ED77030000000049454E44AE426082}
        mmHeight = 23548
        mmLeft = 1058
        mmTop = -794
        mmWidth = 60590
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = clMoneyGreen
        Shape = stEllipse
        mmHeight = 9525
        mmLeft = 190236
        mmTop = 4498
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object bcCustomer: TppBarCode
        DesignLayer = ppDesignLayer1
        UserName = 'bcCustomer'
        Anchors = [atLeft, atTop, atRight]
        AlignBarCode = ahCenter
        BarCodeType = bcCode39
        BarColor = clBlack
        Border.mmPadding = 0
        CalcCheckDigit = False
        Data = '111111111'
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 14520
        mmLeft = 149225
        mmTop = 4498
        mmWidth = 39116
        BandType = 0
        LayerName = Foreground
        mmBarWidth = 254
        mmWideBarRatio = 50800
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppTableGrid2: TppTableGrid
        DesignLayer = ppDesignLayer1
        UserName = 'TableGrid2'
        MasterGrid = ppTableGrid1
        DefaultColWidth = 0.500000000000000000
        DefaultRowHeight = 0.500000000000000000
        KeepTogether = True
        Stretch = True
        mmHeight = 11113
        mmLeft = 5556
        mmTop = -3969
        mmWidth = 194734
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmDefaultRowHeight = 12700
        mmDefaultColWidth = 12700
        object ppTableRow2: TppTableRow
          DesignLayer = ppDesignLayer1
          UserName = 'TableRow2'
          Stretch = True
          mmHeight = 11113
          mmLeft = 0
          mmTop = 0
          mmWidth = 48948
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell7: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell7'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            NoBorder = True
            object rtName: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'rtName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'Name'
              DataPipeline = ppDBPipeline1
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 9789
              mmTop = -794
              mmWidth = 34612
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
          end
          object ppTableCell8: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell8'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            NoBorder = True
            object rtCity: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'rtCity'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'City'
              DataPipeline = ppDBPipeline1
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 7673
              mmLeft = 47890
              mmTop = -530
              mmWidth = 24077
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
          end
          object ppTableCell9: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell9'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            NoBorder = True
            object rtMobile: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'rtMobile'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'Mobile'
              DataPipeline = ppDBPipeline1
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 75358
              mmTop = -529
              mmWidth = 29320
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
          end
          object ppTableCell10: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell10'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            NoBorder = True
            object rtEmail: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'rtEmail'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'Email'
              DataPipeline = ppDBPipeline1
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6879
              mmLeft = 106891
              mmTop = -529
              mmWidth = 39953
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
          end
          object ppTableCell11: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell11'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            NoBorder = True
            object rtAccNo: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'rtAccNo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'Account_no'
              DataPipeline = ppDBPipeline1
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 151245
              mmTop = -794
              mmWidth = 19913
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
          end
          object ppTableCell12: TppTableCell
            DesignLayer = ppDesignLayer1
            UserName = 'TableCell12'
            Border.Visible = False
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            NoBorder = True
            object rtSalary: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'rtSalary'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 14
              Font.Style = []
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'current_balance'
              DataPipeline = ppDBPipeline1
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5292
              mmLeft = 176213
              mmTop = -529
              mmWidth = 23019
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
          end
        end
        object ppTableColumn7: TppTableColumn
          UserName = 'TableColumn7'
          mmWidth = 39952
        end
        object ppTableColumn8: TppTableColumn
          UserName = 'TableColumn201'
          mmWidth = 27517
        end
        object ppTableColumn9: TppTableColumn
          UserName = 'TableColumn9'
          mmWidth = 32808
        end
        object ppTableColumn10: TppTableColumn
          UserName = 'TableColumn10'
          mmWidth = 42069
        end
        object ppTableColumn11: TppTableColumn
          UserName = 'TableColumn11'
          mmWidth = 24342
        end
        object ppTableColumn12: TppTableColumn
          UserName = 'TableColumn12'
          mmWidth = 28046
        end
      end
      object rtComment: TppDBRichText
        DesignLayer = ppDesignLayer1
        UserName = 'Comment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        KeepTogether = True
        Anchors = [atLeft, atTop, atRight]
        Border.mmPadding = 0
        ExportRTFAsBitmap = False
        DataField = 'Comment'
        DataPipeline = ppDBPipeline1
        RemoveEmptyLines = True
        ShiftRelativeTo = ppTableGrid2
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 34660
        mmTop = 11113
        mmWidth = 165629
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object lblComment: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Comment1'
        Anchors = [atLeft]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Comment :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 14023
        mmTop = 11113
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object rgComment: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'rgComment'
        Brush.Style = bsClear
        Pen.Style = psDot
        ShiftRelativeTo = ppTableGrid2
        Transparent = True
        mmHeight = 7938
        mmLeft = 9790
        mmTop = 11113
        mmWidth = 189442
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBRichText1: TppDBRichText
          DesignLayer = ppDesignLayer1
          UserName = 'Mob1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          KeepTogether = True
          Border.mmPadding = 0
          ExportRTFAsBitmap = False
          DataField = 'Mobile'
          DataPipeline = ppDBPipeline1
          RemoveEmptyLines = True
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5821
          mmLeft = 9790
          mmTop = 18786
          mmWidth = 53181
          BandType = 4
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
        end
      end
      object chkVerify: TmyCheckBox
        DesignLayer = ppDesignLayer1
        UserName = 'chkVerify'
        FormField = False
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        CheckBoxColor = clBlack
        mmHeight = 6350
        mmLeft = 8731
        mmTop = 23813
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object lblVerify: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblVerify'
        Border.mmPadding = 0
        Caption = 'Verified'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 16669
        mmTop = 24871
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 69850
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 62442
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 168011
        mmTop = 62442
        mmWidth = 31221
        BandType = 8
        LayerName = Foreground
      end
      object lblPage: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPage'
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
        mmLeft = 1058
        mmTop = 62442
        mmWidth = 8731
        BandType = 8
        LayerName = Foreground
      end
      object lblOf: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblOf'
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
        mmLeft = 20902
        mmTop = 62442
        mmWidth = 5556
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 62442
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object rgStamp: TppRegion
        DesignLayer = ppDesignLayer1
        UserName = 'rgStamp'
        Caption = 'Stamp'
        Pen.Color = clInfoText
        Pen.Mode = pmMergePenNot
        Pen.Style = psDot
        mmHeight = 33602
        mmLeft = 154517
        mmTop = 2646
        mmWidth = 43392
        BandType = 8
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object lblStamp: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblStamp'
        Border.mmPadding = 0
        Caption = '(Stamp Here)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 166423
        mmTop = 42598
        mmWidth = 21960
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
