object CustomerFM: TCustomerFM
  Left = 146
  Top = 154
  Caption = 'Customer'
  ClientHeight = 464
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 464
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      729
      464)
    object cxGrid1: TcxGrid
      Left = 156
      Top = 55
      Width = 557
      Height = 393
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvRaised
      BorderWidth = 1
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.ShowNextButton = False
        FindPanel.ShowPreviousButton = False
        FindPanel.Location = fplGroupByBox
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ClientModule1.DataSource1
        DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.Column = cxGrid1DBTableView1Comment
        Preview.MaxLineCount = 2
        Preview.Visible = True
        object cxGrid1DBTableView1First_name: TcxGridDBColumn
          Caption = 'First Name'
          DataBinding.FieldName = 'First_name'
          Width = 71
        end
        object cxGrid1DBTableView1Last_Name: TcxGridDBColumn
          Caption = 'Last Name'
          DataBinding.FieldName = 'Last_Name'
          Width = 71
        end
        object cxGrid1DBTableView1City: TcxGridDBColumn
          DataBinding.FieldName = 'City'
          Width = 42
        end
        object cxGrid1DBTableView1date_of_birth: TcxGridDBColumn
          Caption = 'Date Of Birth'
          DataBinding.FieldName = 'date_of_birth'
          Width = 72
        end
        object cxGrid1DBTableView1Nationality: TcxGridDBColumn
          DataBinding.FieldName = 'Nationality'
          Visible = False
          Width = 69
        end
        object cxGrid1DBTableView1Customer_Password: TcxGridDBColumn
          DataBinding.FieldName = 'Customer_Password'
          Visible = False
          Width = 194
        end
        object cxGrid1DBTableView1UserID: TcxGridDBColumn
          DataBinding.FieldName = 'UserID'
          Width = 62
        end
        object cxGrid1DBTableView1Mobile: TcxGridDBColumn
          DataBinding.FieldName = 'Mobile'
        end
        object cxGrid1DBTableView1pincode: TcxGridDBColumn
          Caption = 'Pincode'
          DataBinding.FieldName = 'pincode'
        end
        object cxGrid1DBTableView1Email: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          Width = 90
        end
        object cxGrid1DBTableView1Taluka: TcxGridDBColumn
          DataBinding.FieldName = 'Taluka'
          Width = 39
        end
        object cxGrid1DBTableView1Account_no: TcxGridDBColumn
          Caption = 'Account No'
          DataBinding.FieldName = 'Account_no'
        end
        object cxGrid1DBTableView1Customer_id: TcxGridDBColumn
          Caption = 'Customer Id'
          DataBinding.FieldName = 'Customer_id'
          Width = 69
        end
        object cxGrid1DBTableView1Comment: TcxGridDBColumn
          DataBinding.FieldName = 'Comment'
          Options.IgnoreTimeForFiltering = False
          Width = 63
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.ShowNextButton = False
        FindPanel.ShowPreviousButton = False
        FindPanel.Location = fplGroupByBox
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ClientModule1.DataSource2
        DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        Preview.MaxLineCount = 2
        Preview.Visible = True
        object cxGrid1DBTableView2Account_type: TcxGridDBColumn
          DataBinding.FieldName = 'Account_type'
          Width = 73
        end
        object cxGrid1DBTableView2Creation_date: TcxGridDBColumn
          DataBinding.FieldName = 'Creation_date'
          Width = 87
        end
        object cxGrid1DBTableView2Min_balance: TcxGridDBColumn
          DataBinding.FieldName = 'Min_balance'
        end
        object cxGrid1DBTableView2current_balance: TcxGridDBColumn
          DataBinding.FieldName = 'current_balance'
          Width = 84
        end
        object cxGrid1DBTableView2Account_no: TcxGridDBColumn
          DataBinding.FieldName = 'Account_no'
          Width = 75
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
      end
    end
    object btnData: TButton
      Left = 156
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Get Data'
      TabOrder = 1
      OnClick = btnDataClick
    end
    object btnGroup: TButton
      Left = 631
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Group'
      TabOrder = 2
      OnClick = btnGroupClick
    end
    object btnClear: TButton
      Left = 246
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 3
      OnClick = btnClearClick
    end
    object dxNavBar1: TdxNavBar
      Left = 0
      Top = 0
      Width = 150
      Height = 448
      Anchors = [akLeft, akTop, akBottom]
      ActiveGroupIndex = 0
      TabOrder = 4
      View = 17
      ViewStyle.ColorSchemeName = 'Blue'
      OptionsImage.SmallImages = cxImageList2
      object dxNavBar1Group1: TdxNavBarGroup
        Caption = 'Customer Info'
        SelectedLinkIndex = -1
        SmallImageIndex = 3
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxNavBar1Item2
          end>
      end
      object dxNavBar1Group2: TdxNavBarGroup
        Caption = 'Account Info'
        SelectedLinkIndex = -1
        SmallImageIndex = 2
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxNavBar1Item3
          end>
      end
      object dxNavBar1Item1: TdxNavBarItem
        Caption = 'Account Info'
      end
      object dxNavBar1Item2: TdxNavBarItem
        Caption = 'Personal Details'
        SmallImageIndex = 0
        OnClick = dxNavBar1Item2Click
      end
      object dxNavBar1Item3: TdxNavBarItem
        Caption = 'Account Details'
        SmallImageIndex = 1
        OnClick = dxNavBar1Item3Click
      end
      object dxNavBar1Item4: TdxNavBarItem
        Caption = 'dxNavBar1Item4'
      end
    end
  end
  object cxImageList2: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 1048944
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA7930000020D49444154388DCD52DF
          4B5361187EDE73E6B6E33458E334BB5850A9213A9188143B966C04E6C86835D1
          488AA0DA4510845011ADAE2A5C5144ADFE012F1C284521455779BA8911316237
          39C18BA4ADB90DB6F26C79CEF775D3863F90BAABE7E6BD789FE7FB9EF7795FE0
          5F83FE86E4F1784645815F620C76874D1F8EBE509F557AC29FC46786BACF0208
          1B8CB63AEDCBD692214C5D38DD15ACF44D2BC957070F8D82F38B003613C17F2B
          FAEAB5C184E163DD5974EDFA816D721973292B3D99760E0278BAEA812B81BEA3
          E03C0C00F575ACA895693234D43762767EADF1B664410464B380DDACA1B1A160
          5AE7C061D7CF75B47C475BF3121AE49FF55F5216445F3A8281DE544492CCCA4A
          A7A7BCE9C8F5876B32D8E9D2EADA9B731051C2B70C8345D4B0C355925CF1F404
          D38D77151E330CD535909E5817A2CF9B8D6C9105C8B2804AED3F988FD04DB0B1
          F8402C93C92193C921FCE9708C08BCA2ABAE917308FC7DD35B124405003833D4
          8E8FEAF122B74D966233CA0DF718046208C52F43DA7B40AD11B9FFF3F94D8B55
          0744608F66954421BF80427E018F93FB12056EBB0F4031BB3B114ADEC6B5D93B
          B0B4770240CFB24E0FAA2106668A72994C53F7A6DF28DB4D497010EE26FCC1A6
          5E933E3FAF03560B6C6DEED50742F0554738A26AE3004E949634CC7D48004468
          DCDD0A4BAD15E0187FBE5F3A890DF07B8DBC1F20586B25B4F6EC59F313F76D24
          FE3FF00BE4C2B632DF2502EA0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000001EF49444154388DB5934D
          48546114869F73C749D39219A2453A888C0DF6B34868518B90594886B6703150
          AE2C288954282CDABA11DA0C844D454148AB32352C6AFA5949D022422CC888C2
          986DB8B05A4DD7B9F76DE19D711AA65A755687F3BDE7397F7CF03FAD7944B1E6
          11C5FEA6B16AC1FD830A7F0B714EB01688C2118F2B0BB76CED9F807DA7B5D781
          339E47A6FB140947E8E9241F0CCE2326DFDDB6C5AA8064523585168624AC29CF
          D5E969F3A69EEB07E01FEBB608C80E0D70422296AFE372B11B0338725CAD06A3
          9E71EDC55DFB58842ECFAA17A1B694658BB1C3FDDA15124382F4B37B96338054
          4A4725FACCF80C440124A2667C09FCB819AB0163552261C6DCCC8C3D2E8D30D0
          A75113DB056DCE26CE5A8176DF673000DC746AF9E4BB5C375896B17267CED200
          3545C0D63C0B003824330F6D055819EE511740266BAF00867BB484CF7CF9124B
          802D0582FC0D6B747FBF50A30B7EC5D54A80862A808602201AC73B75090097DD
          8E430460BC530708F17E6304976D40AB417CE2E07AEB72891325EC5EE051207B
          5D5E3D9CE6A4014CEC546D4394ACC19B8A0EA96FA77B473FDF2BE3005F1F5067
          00F73B74513E4D183F2B450E6C96B12868F561BEFFAD959638D5A1B11A807A8F
          590AC4AB55711CBAB4EEE67A97D6939FECD118460EF70F9FA9DC5E2674C344AE
          DA9BEFD0F20B10D8B18BB6AFF19B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA7930000011E49444154388DA5D2CF
          2B845114C6F1CFFC50B3B19448D40CA5A65056563666251B1BF91BECF803C86A
          763636B676B3B1B39BA59F0BCA524A9152285314212CDE33F52633C4A9DB73EE
          39F7FDBE4FF71EFE199936BD0E4C47BE8DD7DF0286308702F6A3368167D470F6
          1DA080598CC6811A1EB08A0F2CA333C04338C1169E7398C426AEB08706FA50C4
          236ED113B55DDCE01DEBB8C8E318A7E8C2549B3B11A022CE7189A36C585D422F
          EAA1ADF24AB8A860118FD920DF07B51EFA9BBC014DC09FE3DF80FC0FFD12DE50
          4DD5AA29EDCEC56606E328A35FF2E6658CE00ED79241FABAC6F2F171056B011B
          4EFDED10F3ED2C66B0821DC9344A290C841E486EBE2C9999053C2193C5461C6A
          DA6AA4D677F116FAD274D02E4A9221BB68D11FFC040B864B30570051AF000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA7930000012F49444154388DADD2B1
          4A5C5110C6F1DFAE463610D742F4114C99C6460B1B214DC03E955859FB0E1221
          455204314D1054D2C842BAB421A4097900D9D56D92286290A01B1025628A3B47
          0FD7BD10D00F06E6CCFFF0DD997B861B0D611B3D6C62206375AC07FB80863E7A
          8EAB2CE632F6B4C41672E7A45EC9B0F73F2C6F73370C1B788B8D8CFDC4199AD8
          C26A7472AD51BC47075DB41533373112793B5827EE8EE506EF4A33A67881950A
          B60683D1EEACFE7A8C1FF1812FA8E12F2EF14B145A31FF3C1EE0103BF81CF904
          9E613278D26FBCAC611153F886738CE30966B01FB5E93EDD7DC2713A7CAC98B3
          15D18F1DE1F560189C56FC83938A3A7CC5523A3CC22BB75FE061C47289BDC130
          C52BC01FC5B2E4FAAE589E94E73A10DB587747DDABC19E6249E042B1B649DDA8
          893B9D04FE014386652ECB93260C0000000049454E44AE426082}
      end>
  end
end
