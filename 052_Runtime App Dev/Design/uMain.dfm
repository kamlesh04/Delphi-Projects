object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Design-Time'
  ClientHeight = 442
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 280
    Width = 612
    Height = 145
    DataSource = dmMain.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 16
    Top = 16
    Width = 553
    Height = 201
    TabOrder = 1
    Visible = False
    object Button1: TButton
      Left = 8
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 224
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 324
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 436
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Button5'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button6: TButton
      Left = 8
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Button6'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button7: TButton
      Left = 112
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Button7'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button8: TButton
      Left = 224
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Button8'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button9: TButton
      Left = 324
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Button9'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button10: TButton
      Left = 436
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Button10'
      TabOrder = 9
      OnClick = Button1Click
    end
  end
  object Button11: TButton
    Left = 112
    Top = 232
    Width = 91
    Height = 25
    Caption = 'Show Buttons'
    TabOrder = 2
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 216
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Clear Buttons'
    TabOrder = 3
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 320
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Show form'
    TabOrder = 4
    OnClick = Button13Click
  end
  object Planner1: TPlanner
    Left = 640
    Top = 24
    Width = 350
    Height = 300
    AttachementGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888700078888888888708880788888888808808808888888880808080
      8888888880808080888888888080808088888888808080808888888880808080
      8888888880808080888888888080808088888888808080808888888888808080
      8888888888808880888888888888000888888888888888888888}
    Caption.Title = 'TMS software <b>TPlanner</b>'
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = 4474440
    Caption.Font.Height = -17
    Caption.Font.Name = 'Verdana'
    Caption.Font.Style = []
    Caption.Background = clWhite
    DayNames.Strings = (
      'Sun'
      'Mon'
      'Tue'
      'Wed'
      'Thu'
      'Fri'
      'Sat')
    DefaultItem.BorderColor = 11250603
    DefaultItem.CaptionBkg = 14925219
    DefaultItem.CaptionBkgTo = 14925219
    DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
    DefaultItem.CaptionFont.Color = 4474440
    DefaultItem.CaptionFont.Height = -15
    DefaultItem.CaptionFont.Name = 'Segoe UI'
    DefaultItem.CaptionFont.Style = []
    DefaultItem.ColorTo = clWhite
    DefaultItem.Cursor = -1
    DefaultItem.Font.Charset = DEFAULT_CHARSET
    DefaultItem.Font.Color = 4474440
    DefaultItem.Font.Height = -15
    DefaultItem.Font.Name = 'Segoe UI'
    DefaultItem.Font.Style = []
    DefaultItem.ItemBegin = 16
    DefaultItem.ItemEnd = 17
    DefaultItem.ItemPos = 0
    DefaultItem.Name = 'PlannerItem0'
    DefaultItem.SelectColor = 14925219
    DefaultItem.SelectColorTo = 14925219
    DefaultItem.SelectFontColor = 3881787
    DefaultItem.Shadow = False
    DefaultItem.TrackColor = 11565130
    DefaultItem.TrackSelectColor = 11565130
    DeleteGlyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
      0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
      161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
      56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
      075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
      EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
      EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
      5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
      0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
    Display.ActiveEnd = 40
    Display.ColorNonActive = 15790320
    Display.HourLineColor = 14925219
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Footer.CompletionFormat = '%d%%'
    Footer.Color = clWhite
    Footer.Completion.Font.Charset = DEFAULT_CHARSET
    Footer.Completion.Font.Color = clWindowText
    Footer.Completion.Font.Height = -15
    Footer.Completion.Font.Name = 'Arial'
    Footer.Completion.Font.Style = []
    Footer.Flat = True
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -15
    Footer.Font.Name = 'Segoe UI'
    Footer.Font.Style = []
    Footer.LineColor = 16444643
    GridLeftCol = 1
    GridLineColor = 13948116
    GridTopRow = 0
    Header.Color = clWhite
    Header.CustomGroups = <>
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = 4474440
    Header.Font.Height = -15
    Header.Font.Name = 'Segoe UI'
    Header.Font.Style = []
    Header.GroupHeight = 0
    Header.GroupFont.Charset = DEFAULT_CHARSET
    Header.GroupFont.Color = clWindowText
    Header.GroupFont.Height = -15
    Header.GroupFont.Name = 'Segoe UI'
    Header.GroupFont.Style = []
    Header.LineColor = 16444643
    HintPause = 2500
    HTMLOptions.CellFontStyle = []
    HTMLOptions.HeaderFontStyle = []
    HTMLOptions.SidebarFontStyle = []
    Items = <>
    Mode.Month = 3
    Mode.PeriodStartDay = 13
    Mode.PeriodStartMonth = 3
    Mode.PeriodStartYear = 2024
    Mode.PeriodEndDay = 30
    Mode.PeriodEndMonth = 4
    Mode.PeriodEndYear = 2024
    Mode.TimeLineStart = 45364.000000000000000000
    Mode.TimeLineNVUBegin = 0
    Mode.TimeLineNVUEnd = 0
    Mode.Year = 2024
    Mode.Day = 13
    Sidebar.Background = clWhite
    Sidebar.Border = False
    Sidebar.Font.Charset = DEFAULT_CHARSET
    Sidebar.Font.Color = 4474440
    Sidebar.Font.Height = -15
    Sidebar.Font.Name = 'Arial'
    Sidebar.Font.Style = []
    Sidebar.HourFontRatio = 1.800000000000000000
    Sidebar.LineColor = 14925219
    Sidebar.Occupied = clWhite
    Sidebar.OccupiedTo = clWhite
    Sidebar.OccupiedFontColor = 3881787
    Sidebar.SeparatorLineColor = 16444643
    PositionProps = <>
    PrintOptions.LineWidth = 0
    PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
    PrintOptions.FooterFont.Color = clWindowText
    PrintOptions.FooterFont.Height = -15
    PrintOptions.FooterFont.Name = 'Segoe UI'
    PrintOptions.FooterFont.Style = []
    PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
    PrintOptions.HeaderFont.Color = clWindowText
    PrintOptions.HeaderFont.Height = -15
    PrintOptions.HeaderFont.Name = 'Segoe UI'
    PrintOptions.HeaderFont.Style = []
    SelectColor = 15917525
    TrackColor = 11565130
    URLGlyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
      0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
      0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
      88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
      888887F8F8222208888888776888208888888887777778888888}
    Version = '3.6.0.12'
    TMSStyle = 0
  end
end
