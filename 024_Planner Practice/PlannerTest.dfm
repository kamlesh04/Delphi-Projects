object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 337
  ClientWidth = 544
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 544
    Height = 337
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Normal_Planner'
      object Panel1: TPanel
        Left = 351
        Top = 0
        Width = 185
        Height = 309
        Align = alRight
        TabOrder = 0
        object PlannerCalendar1: TPlannerCalendar
          Left = -3
          Top = 32
          Width = 180
          Height = 177
          EventDayColor = clBlack
          EventFont.Charset = DEFAULT_CHARSET
          EventFont.Color = clWindowText
          EventFont.Height = -11
          EventFont.Name = 'Tahoma'
          EventFont.Style = [fsBold]
          EventMarkerColor = clYellow
          EventMarkerShape = evsCircle
          BackgroundPosition = bpTiled
          BorderWidth = 1
          CaptionColor = clNone
          CaptionTextColor = clWindowText
          DateDownColor = 14925219
          DateHoverColor = 15917525
          DateSelectColor = 15917525
          DateSelectBorderColor = 15917525
          DayFont.Charset = DEFAULT_CHARSET
          DayFont.Color = clWindowText
          DayFont.Height = -11
          DayFont.Name = 'Tahoma'
          DayFont.Style = []
          FocusColor = clHighlight
          HeaderColor = clNone
          InActiveColor = 13948116
          InversColor = clTeal
          LineColor = clGray
          Line3D = False
          Look = lookFlat
          NameOfDays.Monday = 'Mon'
          NameOfDays.Tuesday = 'Tue'
          NameOfDays.Wednesday = 'Wed'
          NameOfDays.Thursday = 'Thu'
          NameOfDays.Friday = 'Fri'
          NameOfDays.Saturday = 'Sat'
          NameOfDays.Sunday = 'Sun'
          NameOfMonths.January = 'Jan'
          NameOfMonths.February = 'Feb'
          NameOfMonths.March = 'Mar'
          NameOfMonths.April = 'Apr'
          NameOfMonths.May = 'May'
          NameOfMonths.June = 'Jun'
          NameOfMonths.July = 'Jul'
          NameOfMonths.August = 'Aug'
          NameOfMonths.September = 'Sep'
          NameOfMonths.October = 'Oct'
          NameOfMonths.November = 'Nov'
          NameOfMonths.December = 'Dec'
          NameOfMonths.UseIntlNames = True
          WeekFont.Charset = DEFAULT_CHARSET
          WeekFont.Color = clWindowText
          WeekFont.Height = -11
          WeekFont.Name = 'Tahoma'
          WeekFont.Style = []
          WeekName = 'Wk'
          SelectColor = clTeal
          SelectFontColor = 3881787
          ShowToday = True
          StartDay = 7
          TextColor = clBlack
          TodayFormat = '"Today" DDD/mm, YYYY'
          WeekendColor = clRed
          Day = 15
          Month = 6
          Year = 2022
          TabOrder = 0
          OnDaySelect = PlannerCalendar1DaySelect
          GradientStartColor = clWhite
          GradientEndColor = clWhite
          GradientDirection = gdVertical
          MonthGradientStartColor = 16444643
          MonthGradientEndColor = 16444643
          MonthGradientDirection = gdVertical
          HintPrevYear = 'Previous Year'
          HintPrevMonth = 'Previous Month'
          HintNextMonth = 'Next Month'
          HintNextYear = 'Next Year'
          Version = '2.4.3.0'
          TMSStyle = 8
        end
      end
      object DBPlanner1: TDBPlanner
        Left = 0
        Top = 0
        Width = 351
        Height = 309
        ActiveDisplay = True
        Align = alClient
        AttachementGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888700078888888888708880788888888808808808888888880808080
          8888888880808080888888888080808088888888808080808888888880808080
          8888888880808080888888888080808088888888808080808888888888808080
          8888888888808880888888888888000888888888888888888888}
        Caption.Title = 'TMS software <b>TDBPlanner</b>'
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = 4474440
        Caption.Font.Height = -13
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
        DefaultItem.CaptionFont.Height = -11
        DefaultItem.CaptionFont.Name = 'Tahoma'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.ColorTo = clWhite
        DefaultItem.Cursor = -1
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = 4474440
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'Tahoma'
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
        Display.DisplayScale = 25
        Display.ColorNonActive = 15790320
        Display.HourLineColor = 14925219
        DragItem = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Captions.Strings = (
          ''
          ''
          ''
          ''
          '')
        Footer.CompletionFormat = '%d%%'
        Footer.Color = clWhite
        Footer.Completion.Font.Charset = DEFAULT_CHARSET
        Footer.Completion.Font.Color = clWindowText
        Footer.Completion.Font.Height = -11
        Footer.Completion.Font.Name = 'Arial'
        Footer.Completion.Font.Style = []
        Footer.Flat = True
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'Tahoma'
        Footer.Font.Style = []
        Footer.LineColor = 16444643
        GridLeftCol = 1
        GridLineColor = 13948116
        GridTopRow = 16
        Header.Captions.Strings = (
          ''
          'Show 1'
          'Show 2'
          'Show 3')
        Header.Color = clWhite
        Header.CustomGroups = <>
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = 4474440
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Header.GroupHeight = 0
        Header.GroupFont.Charset = DEFAULT_CHARSET
        Header.GroupFont.Color = clWindowText
        Header.GroupFont.Height = -11
        Header.GroupFont.Name = 'Tahoma'
        Header.GroupFont.Style = []
        Header.LineColor = 16444643
        HintPause = 2500
        HTMLOptions.CellFontStyle = []
        HTMLOptions.HeaderFontStyle = []
        HTMLOptions.SidebarFontStyle = []
        Items = <
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctTime
            ColorTo = clWhite
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 16
            ItemEnd = 18
            ItemPos = 0
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'Test')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctTime
            ColorTo = clWhite
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 18
            ItemEnd = 20
            ItemPos = 2
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end>
        Mode.Month = 6
        Mode.PeriodStartDay = 15
        Mode.PeriodStartMonth = 6
        Mode.PeriodStartYear = 2022
        Mode.PeriodEndDay = 2
        Mode.PeriodEndMonth = 8
        Mode.PeriodEndYear = 2022
        Mode.TimeLineStart = 44727.000000000000000000
        Mode.TimeLineNVUBegin = 0
        Mode.TimeLineNVUEnd = 0
        Mode.Year = 2022
        Mode.Day = 15
        Sidebar.Background = clWhite
        Sidebar.Border = False
        Sidebar.Font.Charset = DEFAULT_CHARSET
        Sidebar.Font.Color = 4474440
        Sidebar.Font.Height = -11
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
        PrintOptions.FooterFont.Height = -11
        PrintOptions.FooterFont.Name = 'Tahoma'
        PrintOptions.FooterFont.Style = []
        PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
        PrintOptions.HeaderFont.Color = clWindowText
        PrintOptions.HeaderFont.Height = -11
        PrintOptions.HeaderFont.Name = 'Tahoma'
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
        Version = '3.4.6.0'
        OnItemMove = DBPlanner1ItemMove
        OnItemSizing = DBPlanner1ItemSizing
        OnItemInsert = DBPlanner1ItemInsert
        OnItemEnter = DBPlanner1ItemEnter
        OnDragDropItem = DBPlanner1DragDropItem
        TMSStyle = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'DBPlanner'
      ImageIndex = 1
      object DBPlanner2: TDBPlanner
        Left = 0
        Top = 0
        Width = 351
        Height = 309
        ActiveDisplay = True
        Align = alClient
        AttachementGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888700078888888888708880788888888808808808888888880808080
          8888888880808080888888888080808088888888808080808888888880808080
          8888888880808080888888888080808088888888808080808888888888808080
          8888888888808880888888888888000888888888888888888888}
        Caption.Title = 'TMS software <b>TDBPlanner</b>'
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = 4474440
        Caption.Font.Height = -13
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
        DefaultItem.CaptionFont.Height = -11
        DefaultItem.CaptionFont.Name = 'Tahoma'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.CaptionType = ctText
        DefaultItem.Color = clYellow
        DefaultItem.ColorTo = clMoneyGreen
        DefaultItem.Cursor = -1
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = 4474440
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'Tahoma'
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
        Display.CurrentPosFrom = 44729
        Display.CurrentPosTo = 44729
        Display.DisplayScale = 25
        Display.ColorNonActive = 15790320
        Display.HourLineColor = 14925219
        DragItem = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Captions.Strings = (
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          '')
        Footer.CompletionFormat = '%d%%'
        Footer.Color = clWhite
        Footer.Completion.Font.Charset = DEFAULT_CHARSET
        Footer.Completion.Font.Color = clWindowText
        Footer.Completion.Font.Height = -11
        Footer.Completion.Font.Name = 'Arial'
        Footer.Completion.Font.Style = []
        Footer.Flat = True
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'Tahoma'
        Footer.Font.Style = []
        Footer.LineColor = 16444643
        GridLeftCol = 1
        GridLineColor = 13948116
        GridTopRow = 0
        Header.Captions.Strings = (
          ''
          'Show 1'
          'Show 2'
          'Show 3'
          ''
          ''
          ''
          '')
        Header.Color = clWhite
        Header.CustomGroups = <>
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = 4474440
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Header.GroupHeight = 0
        Header.GroupFont.Charset = DEFAULT_CHARSET
        Header.GroupFont.Color = clWindowText
        Header.GroupFont.Height = -11
        Header.GroupFont.Name = 'Tahoma'
        Header.GroupFont.Style = []
        Header.LineColor = 16444643
        HintPause = 2500
        HTMLOptions.CellFontStyle = []
        HTMLOptions.HeaderFontStyle = []
        HTMLOptions.SidebarFontStyle = []
        Items = <
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'dfg'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 4
            ItemEnd = 10
            ItemPos = 2
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'fdggkdfl')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'Meeting'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 44
            ItemEnd = 48
            ItemPos = 0
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'Review at 4.00PM')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 8
            ItemEnd = 15
            ItemPos = 3
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'juyu')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'Item1'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 5
            ItemEnd = 13
            ItemPos = 4
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'ghj'
              'sdf'
              'sdf'
              'sdfjk'
              'skjdklf'
              'sdfj;'
              'djsf'
              'sfjls'
              'sjd')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 5
            ItemEnd = 11
            ItemPos = 5
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'gjghjgjhjghjghsdfdsfsdfds')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'hjk'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 17
            ItemEnd = 23
            ItemPos = 4
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'fgh')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 16
            ItemEnd = 19
            ItemPos = 3
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'hjkhjkhjkjk')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New It'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 17
            ItemEnd = 29
            ItemPos = 2
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'fgh'
              'fghfghgf')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 11
            ItemEnd = 15
            ItemPos = 2
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item1'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 16
            ItemEnd = 20
            ItemPos = 1
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'hh'
              'dfggh')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 1
            ItemEnd = 5
            ItemPos = 4
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            Text.Strings = (
              'gfgdf')
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 5
            ItemEnd = 10
            ItemPos = 0
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 34
            ItemEnd = 35
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 1
            ItemEnd = 2
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 3
            ItemEnd = 4
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 5
            ItemEnd = 6
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 6
            ItemEnd = 7
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 8
            ItemEnd = 9
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 11
            ItemEnd = 12
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 12
            ItemEnd = 13
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 14
            ItemEnd = 15
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 16
            ItemEnd = 17
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 18
            ItemEnd = 19
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end
          item
            BorderColor = 11250603
            CaptionBkg = 14925219
            CaptionBkgTo = 14925219
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = 4474440
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clYellow
            ColorTo = clMoneyGreen
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4474440
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 20
            ItemEnd = 21
            ItemPos = 6
            Name = 'PlannerItem0'
            SelectColor = 14925219
            SelectColorTo = 14925219
            SelectFontColor = 3881787
            Shadow = False
            TrackColor = 11565130
            TrackSelectColor = 11565130
          end>
        Mode.Month = 12
        Mode.PeriodStartDay = 15
        Mode.PeriodStartMonth = 6
        Mode.PeriodStartYear = 2022
        Mode.PeriodEndDay = 2
        Mode.PeriodEndMonth = 8
        Mode.PeriodEndYear = 2022
        Mode.TimeLineStart = 44727.000000000000000000
        Mode.TimeLineNVUBegin = 0
        Mode.TimeLineNVUEnd = 0
        Mode.Year = 1899
        Mode.Day = 30
        Sidebar.AMPMPos = apNone
        Sidebar.Background = clWhite
        Sidebar.Border = False
        Sidebar.Font.Charset = DEFAULT_CHARSET
        Sidebar.Font.Color = 4474440
        Sidebar.Font.Height = -11
        Sidebar.Font.Name = 'Arial'
        Sidebar.Font.Style = []
        Sidebar.HourFontRatio = 1.800000000000000000
        Sidebar.LineColor = 14925219
        Sidebar.Occupied = clWhite
        Sidebar.OccupiedTo = clWhite
        Sidebar.OccupiedFontColor = 3881787
        Sidebar.SeparatorLineColor = 16444643
        Sidebar.ShowDayName = False
        Positions = 7
        PositionProps = <>
        PrintOptions.LineWidth = 0
        PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
        PrintOptions.FooterFont.Color = clWindowText
        PrintOptions.FooterFont.Height = -11
        PrintOptions.FooterFont.Name = 'Tahoma'
        PrintOptions.FooterFont.Style = []
        PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
        PrintOptions.HeaderFont.Color = clWindowText
        PrintOptions.HeaderFont.Height = -11
        PrintOptions.HeaderFont.Name = 'Tahoma'
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
        Version = '3.4.6.0'
        OnEnter = DBPlanner2Enter
        OnItemRightClick = DBPlanner2ItemRightClick
        OnItemMove = DBPlanner2ItemMove
        OnItemSizing = DBPlanner1ItemSizing
        OnItemInsert = DBPlanner2ItemInsert
        OnDragDropItem = DBPlanner2DragDropItem
        ItemSource = DBDaySource1
        TMSStyle = 0
      end
      object Panel2: TPanel
        Left = 351
        Top = 0
        Width = 185
        Height = 309
        Align = alRight
        TabOrder = 1
        object DBPlannerCalendar1: TDBPlannerCalendar
          Left = -3
          Top = 24
          Width = 180
          Height = 180
          EventDayColor = clBlack
          EventFont.Charset = DEFAULT_CHARSET
          EventFont.Color = clWindowText
          EventFont.Height = -11
          EventFont.Name = 'Tahoma'
          EventFont.Style = [fsBold]
          EventMarkerColor = clYellow
          EventMarkerShape = evsCircle
          BackgroundPosition = bpTiled
          BorderWidth = 1
          CaptionColor = clNone
          CaptionTextColor = clWindowText
          DateDownColor = 14983778
          DateHoverColor = 16248808
          DateSelectColor = 16750899
          DateSelectBorderColor = 14983778
          DayFont.Charset = DEFAULT_CHARSET
          DayFont.Color = clWindowText
          DayFont.Height = -11
          DayFont.Name = 'Tahoma'
          DayFont.Style = []
          FocusColor = clHighlight
          HeaderColor = clNone
          InActiveColor = 16250871
          InversColor = clTeal
          LineColor = clGray
          Line3D = False
          Look = lookFlat
          NameOfDays.Monday = 'Mon'
          NameOfDays.Tuesday = 'Tue'
          NameOfDays.Wednesday = 'Wed'
          NameOfDays.Thursday = 'Thu'
          NameOfDays.Friday = 'Fri'
          NameOfDays.Saturday = 'Sat'
          NameOfDays.Sunday = 'Sun'
          NameOfMonths.January = 'Jan'
          NameOfMonths.February = 'Feb'
          NameOfMonths.March = 'Mar'
          NameOfMonths.April = 'Apr'
          NameOfMonths.May = 'May'
          NameOfMonths.June = 'Jun'
          NameOfMonths.July = 'Jul'
          NameOfMonths.August = 'Aug'
          NameOfMonths.September = 'Sep'
          NameOfMonths.October = 'Oct'
          NameOfMonths.November = 'Nov'
          NameOfMonths.December = 'Dec'
          NameOfMonths.UseIntlNames = True
          WeekFont.Charset = DEFAULT_CHARSET
          WeekFont.Color = clWindowText
          WeekFont.Height = -11
          WeekFont.Name = 'Tahoma'
          WeekFont.Style = []
          WeekName = 'Wk'
          SelectColor = clTeal
          SelectFontColor = clWhite
          ShowGotoToday = True
          ShowToday = True
          StartDay = 7
          TextColor = clBlack
          TodayFormat = '"Today" DDD/mm, YYYY'
          TodayStyle = tsRaised
          WeekendColor = clRed
          YearStartAt.StartDay = 3
          YearStartAt.PrevYearStartDay = 4
          YearStartAt.NextYearStartDay = 2
          Day = 16
          Month = 6
          Year = 2022
          TabOrder = 0
          OnDaySelect = DBPlannerCalendar1DaySelect
          GradientStartColor = clWhite
          GradientEndColor = clWhite
          GradientDirection = gdVertical
          MonthGradientStartColor = clWhite
          MonthGradientEndColor = clWhite
          MonthGradientDirection = gdVertical
          HintPrevYear = 'Previous Year'
          HintPrevMonth = 'Previous Month'
          HintNextMonth = 'Next Month'
          HintNextYear = 'Next Year'
          Version = '2.4.3.0'
          UIStyle = tsOffice2013White
          Active = False
          AutoUpdate = True
          DataSource = DataSource1
          StartTimeField = 'STARTTIME'
          EndTimeField = 'ENDTIME'
          SubjectField = 'SUBJECT'
          TMSStyle = 17
        end
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBA' +
      'NKINGDB'
    LoginPrompt = False
    Left = 371
    Top = 248
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dbplanner_tbl'
    Left = 427
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 475
    Top = 256
  end
  object DBDaySource1: TDBDaySource
    AutoIncKey = False
    DataSource = DataSource1
    ResourceMap = <>
    StartTimeField = 'STARTTIME'
    EndTimeField = 'ENDTIME'
    KeyField = 'PLANNERKEY'
    ReadOnly = False
    SubjectField = 'SUBJECT'
    NotesField = 'NOTES'
    UpdateByQuery = False
    DateFormat = 'mm/dd/yyyy'
    Mode = dmMultiDay
    Left = 379
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM dbplanner_tbl')
    Left = 443
    Top = 304
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dbplanner_tbl'
    Left = 483
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 483
    Top = 128
  end
end
