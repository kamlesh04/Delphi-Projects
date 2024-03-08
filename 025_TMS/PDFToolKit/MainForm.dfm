object MainFM: TMainFM
  Left = 0
  Top = 0
  Caption = 'PDFToolKit Test'
  ClientHeight = 311
  ClientWidth = 559
  Color = clBtnFace
  Constraints.MaxHeight = 350
  Constraints.MaxWidth = 575
  Constraints.MinHeight = 350
  Constraints.MinWidth = 575
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pcPDF: TPageControl
    Left = 0
    Top = 0
    Width = 559
    Height = 311
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Merge PDF'
      object pnlMerge: TCurvyPanel
        Left = 11
        Top = 16
        Width = 537
        Height = 256
        Color = clMoneyGreen
        TabOrder = 0
        object lblFile1: TLabel
          Left = 11
          Top = 64
          Width = 40
          Height = 16
          Caption = 'File 1 :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblFile2: TLabel
          Left = 11
          Top = 112
          Width = 40
          Height = 16
          Caption = 'File 2 :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnFile1: TSpeedButton
          Left = 351
          Top = 56
          Width = 89
          Height = 29
          Caption = 'Choose File...'
          OnClick = btnFile1Click
        end
        object btnFile2: TSpeedButton
          Left = 351
          Top = 107
          Width = 89
          Height = 29
          Caption = 'Choose File...'
          OnClick = btnFile2Click
        end
        object btnOutput: TSpeedButton
          Left = 351
          Top = 153
          Width = 89
          Height = 29
          Caption = 'Output Path'
          OnClick = btnOutputClick
        end
        object lblOutput: TLabel
          Left = 7
          Top = 153
          Width = 43
          Height = 16
          Caption = 'Output:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtFile1: TCurvyEdit
          Left = 56
          Top = 56
          Width = 289
          Height = 32
          TabOrder = 0
          TabStop = False
          Version = '1.2.2.2'
          Controls = <>
          ImeName = ''
          ReadOnly = True
          Text = ''
        end
        object txtFile2: TCurvyEdit
          Left = 56
          Top = 104
          Width = 289
          Height = 32
          TabOrder = 1
          TabStop = False
          Version = '1.2.2.2'
          Controls = <>
          ImeName = ''
          ReadOnly = True
          Text = ''
        end
        object btnMerge: TAdvGlowButton
          Left = 160
          Top = 208
          Width = 89
          Height = 33
          Caption = 'Merge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = True
          TabOrder = 2
          OnClick = btnMergeClick
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 13744549
          Appearance.Color = clWhite
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsOffice2003Classic
        end
        object lblHeading: TcxLabel
          Left = 200
          Top = 16
          Caption = 'Merge PDF'
          ParentColor = False
          ParentFont = False
          Style.Color = clMoneyGreen
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clPurple
          Style.Font.Height = -20
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold, fsUnderline]
          Style.Shadow = True
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
        end
        object txtOutput: TCurvyEdit
          Left = 56
          Top = 153
          Width = 289
          Height = 32
          TabOrder = 4
          TabStop = False
          Version = '1.2.2.2'
          Controls = <>
          ImeName = ''
          Text = ''
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Convert PDF'
      ImageIndex = 1
      object pnlConvert: TCurvyPanel
        Left = 14
        Top = 15
        Width = 537
        Height = 265
        Color = clSkyBlue
        TabOrder = 0
        object lblFile: TLabel
          Left = 11
          Top = 64
          Width = 29
          Height = 16
          Caption = 'File :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnFile: TSpeedButton
          Left = 351
          Top = 56
          Width = 89
          Height = 29
          Caption = 'Choose File...'
          OnClick = btnFileClick
        end
        object btnOut: TSpeedButton
          Left = 351
          Top = 121
          Width = 42
          Height = 26
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnOutClick
        end
        object lblOutFile: TLabel
          Left = 7
          Top = 121
          Width = 43
          Height = 16
          Caption = 'Output:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblConvertTo: TLabel
          Left = 56
          Top = 169
          Width = 72
          Height = 16
          Caption = 'Convert To :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPageCount: TLabel
          Left = 231
          Top = 169
          Width = 43
          Height = 16
          Caption = 'Pages :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCount: TLabel
          Left = 280
          Top = 169
          Width = 4
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblFrom: TLabel
          Left = 322
          Top = 169
          Width = 39
          Height = 16
          Caption = 'From :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object txtFile: TCurvyEdit
          Left = 56
          Top = 56
          Width = 289
          Height = 32
          TabOrder = 0
          TabStop = False
          Version = '1.2.2.2'
          Controls = <>
          ImeName = ''
          ReadOnly = True
          Text = ''
        end
        object btnConvert: TAdvGlowButton
          Left = 216
          Top = 208
          Width = 89
          Height = 33
          Caption = 'Convert'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = True
          TabOrder = 1
          OnClick = btnConvertClick
          Appearance.BorderColor = 13087391
          Appearance.BorderColorHot = 5819121
          Appearance.BorderColorDown = 3181250
          Appearance.BorderColorChecked = 3181250
          Appearance.Color = 16643823
          Appearance.ColorTo = 15784647
          Appearance.ColorChecked = 14285309
          Appearance.ColorCheckedTo = 7131391
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7131391
          Appearance.ColorDownTo = 8122111
          Appearance.ColorHot = 9102333
          Appearance.ColorHotTo = 14285309
          Appearance.ColorMirror = 15784647
          Appearance.ColorMirrorTo = 15784647
          Appearance.ColorMirrorHot = 14285309
          Appearance.ColorMirrorHotTo = 9102333
          Appearance.ColorMirrorDown = 8122111
          Appearance.ColorMirrorDownTo = 7131391
          Appearance.ColorMirrorChecked = 7131391
          Appearance.ColorMirrorCheckedTo = 7131391
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsOffice2010Blue
        end
        object lblConvertHead: TcxLabel
          Left = 200
          Top = 16
          Caption = 'Convert PDF'
          ParentColor = False
          ParentFont = False
          Style.Color = clSkyBlue
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clPurple
          Style.Font.Height = -20
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold, fsUnderline]
          Style.Shadow = True
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
        end
        object txtOut: TCurvyEdit
          Left = 56
          Top = 115
          Width = 289
          Height = 32
          TabOrder = 3
          TabStop = False
          Version = '1.2.2.2'
          Controls = <>
          ImeName = ''
          ReadOnly = True
          Text = ''
        end
        object cbConvert: TAdvComboBox
          Left = 134
          Top = 168
          Width = 91
          Height = 21
          Color = clWindow
          Version = '2.0.0.5'
          Visible = True
          ButtonWidth = 17
          EmptyTextStyle = []
          DropWidth = 0
          Enabled = True
          ItemIndex = -1
          Items.Strings = (
            'JPG'
            'BMP'
            'EMF'
            'TIFF')
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          TabOrder = 4
        end
        object txtFrom: TEdit
          Left = 367
          Top = 168
          Width = 41
          Height = 21
          TabOrder = 5
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object CurvyPanel1: TCurvyPanel
        Left = 3
        Top = 16
        Width = 545
        Height = 241
        TabOrder = 0
        object lblIpFile: TLabel
          Left = 19
          Top = 31
          Width = 29
          Height = 16
          Caption = 'File :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnipFile: TSpeedButton
          Left = 375
          Top = 28
          Width = 89
          Height = 29
          Caption = 'Choose File...'
          OnClick = btnipFileClick
        end
        object txtipFile: TCurvyEdit
          Left = 54
          Top = 23
          Width = 315
          Height = 34
          TabOrder = 0
          TabStop = False
          Version = '1.2.2.2'
          Controls = <>
          ImeName = ''
          ReadOnly = True
          Text = ''
        end
        object btnAddFields: TAdvGlowButton
          Left = 160
          Top = 128
          Width = 89
          Height = 33
          Caption = 'Add Fields'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Rounded = True
          TabOrder = 1
          OnClick = btnAddFieldsClick
          Appearance.BorderColor = 13087391
          Appearance.BorderColorHot = 5819121
          Appearance.BorderColorDown = 3181250
          Appearance.BorderColorChecked = 3181250
          Appearance.Color = 16643823
          Appearance.ColorTo = 15784647
          Appearance.ColorChecked = 14285309
          Appearance.ColorCheckedTo = 7131391
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7131391
          Appearance.ColorDownTo = 8122111
          Appearance.ColorHot = 9102333
          Appearance.ColorHotTo = 14285309
          Appearance.ColorMirror = 15784647
          Appearance.ColorMirrorTo = 15784647
          Appearance.ColorMirrorHot = 14285309
          Appearance.ColorMirrorHotTo = 9102333
          Appearance.ColorMirrorDown = 8122111
          Appearance.ColorMirrorDownTo = 7131391
          Appearance.ColorMirrorChecked = 7131391
          Appearance.ColorMirrorCheckedTo = 7131391
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
          Appearance.TextColorDisabled = 13948116
          UIStyle = tsOffice2010Blue
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Form Processing'
      ImageIndex = 3
      object Splitter1: TSplitter
        Left = 301
        Top = 73
        Width = 6
        Height = 210
        ExplicitLeft = 295
      end
      object CurvyPanel2: TCurvyPanel
        Left = 0
        Top = 73
        Width = 301
        Height = 210
        Align = alLeft
        TabOrder = 0
        object TreeView1: TTreeView
          Left = 0
          Top = 0
          Width = 301
          Height = 210
          Align = alClient
          Indent = 19
          TabOrder = 0
          OnChange = TreeView1Change
        end
      end
      object CurvyPanel3: TCurvyPanel
        Left = 307
        Top = 73
        Width = 244
        Height = 210
        Align = alClient
        TabOrder = 1
        object ValueListEditor1: TValueListEditor
          Left = 0
          Top = 0
          Width = 244
          Height = 210
          Align = alClient
          TabOrder = 0
          TitleCaptions.Strings = (
            'Key'
            'Value'
            'kk')
          ColWidths = (
            150
            88)
        end
      end
      object CurvyPanel4: TCurvyPanel
        Left = 0
        Top = 0
        Width = 551
        Height = 73
        Align = alTop
        TabOrder = 2
        object lblSelectFP: TLabel
          Left = 27
          Top = 16
          Width = 29
          Height = 16
          Caption = 'File :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnSelectFP: TSpeedButton
          Left = 383
          Top = 16
          Width = 89
          Height = 29
          Caption = 'Choose File...'
          OnClick = btnSelectFPClick
        end
        object txtSelectFP: TCurvyEdit
          Left = 62
          Top = 16
          Width = 315
          Height = 34
          TabOrder = 0
          TabStop = False
          Version = '1.2.2.2'
          Controls = <>
          ImeName = ''
          ReadOnly = True
          Text = ''
        end
      end
    end
  end
  object gtPDFDocument1: TgtPDFDocument
    About = 'Gnostice PDFtoolkit (www.gnostice.com)'
    Version = '5.0.0.867'
    OpenAfterSave = False
    MergeOptions = []
    EMailAfterSave = False
    ShowSetupDialog = False
    Left = 496
    Top = 32
  end
  object OpenDialog1: TOpenDialog
    Left = 456
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 472
    Top = 88
  end
  object FolderDialog1: TFolderDialog
    Options = [fdoNewDialogStyle]
    DialogX = 0
    DialogY = 0
    Version = '1.1.4.0'
    Left = 484
    Top = 144
  end
end
