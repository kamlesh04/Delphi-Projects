object PlannerFm: TPlannerFm
  Left = 219
  Top = 77
  BorderStyle = bsSingle
  Caption = 'Planner Test'
  ClientHeight = 538
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = AdvMainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 550
    Height = 513
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fg'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'DBPlanner'
      object DBPlanner1: TDBPlanner
        Left = 0
        Top = 0
        Width = 374
        Height = 484
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
        Caption.Font.Color = clBlack
        Caption.Font.Height = -13
        Caption.Font.Name = 'Verdana'
        Caption.Font.Style = []
        Caption.Background = 14474202
        Caption.BackgroundTo = 14474202
        Caption.Visible = False
        Color = clInfoBk
        DayNames.Strings = (
          'Sun'
          'Mon'
          'Tue'
          'Wed'
          'Thu'
          'Fri'
          'Sat')
        DefaultItem.BorderColor = 14474202
        DefaultItem.CaptionBkg = clMenuHighlight
        DefaultItem.CaptionBkgTo = 15658734
        DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
        DefaultItem.CaptionFont.Color = clWindowText
        DefaultItem.CaptionFont.Height = -13
        DefaultItem.CaptionFont.Name = 'Tahoma'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.CaptionType = ctText
        DefaultItem.Color = clMoneyGreen
        DefaultItem.ColorTo = clYellow
        DefaultItem.Cursor = -1
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = clWindowText
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'Tahoma'
        DefaultItem.Font.Style = []
        DefaultItem.ItemBegin = 16
        DefaultItem.ItemEnd = 17
        DefaultItem.ItemPos = 0
        DefaultItem.Name = 'PlannerItem0'
        DefaultItem.Shape = psRounded
        DefaultItem.SelectColor = 16244937
        DefaultItem.SelectColorTo = 16244937
        DefaultItem.SelectFontColor = clBlack
        DefaultItem.Shadow = True
        DefaultItem.TrackColor = 16371364
        DefaultItem.TrackSelectColor = 14983778
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
        Display.CurrentPosFrom = 44727
        Display.CurrentPosTo = 44727
        Display.ColorNonActive = 15658734
        Display.HourLineColor = 14474202
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Captions.Strings = (
          ''
          '0'
          '19'
          '46'
          '21'
          '38'
          '12'
          '0')
        Footer.CompletionFormat = '%d%%'
        Footer.Color = clGradientActiveCaption
        Footer.ColorTo = clYellow
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
        Footer.LineColor = 14474202
        Footer.ShowCompletion = True
        Footer.Visible = True
        GridLeftCol = 1
        GridLineColor = 14474202
        GridTopRow = 0
        Header.ActiveColor = clSkyBlue
        Header.ActiveColorTo = clMenu
        Header.AllowResize = True
        Header.AutoSize = True
        Header.Captions.Strings = (
          ''
          'Monday'
          'Tuesday'
          'Wednesday'
          'Thursday'
          'Friday'
          'Saturday'
          'Sunday')
        Header.Color = clSkyBlue
        Header.ColorTo = 16250613
        Header.CustomGroups = <>
        Header.Height = 34
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clBlack
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Header.GroupHeight = 0
        Header.GroupFont.Charset = DEFAULT_CHARSET
        Header.GroupFont.Color = clWindowText
        Header.GroupFont.Height = -11
        Header.GroupFont.Name = 'Tahoma'
        Header.GroupFont.Style = []
        Header.LineColor = 14474202
        HintPause = 2500
        HTMLOptions.CellFontStyle = []
        HTMLOptions.HeaderFontStyle = []
        HTMLOptions.SidebarFontStyle = []
        InActiveDays.Mon = True
        InActiveDays.Tue = True
        InActiveDays.Wed = True
        InActiveDays.Thu = True
        InActiveDays.Fri = True
        Items = <
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'dfg'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 4
            ItemEnd = 10
            ItemPos = 2
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'fdggkdfl')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'Meeting'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 4
            ItemEnd = 9
            ItemPos = 1
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'Review at 4.00PM')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 8
            ItemEnd = 15
            ItemPos = 3
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'juyu')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'Item1'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 5
            ItemEnd = 13
            ItemPos = 4
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
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
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 5
            ItemEnd = 11
            ItemPos = 5
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'gjghjgjhjghjghsdfdsfsdfds')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'hjk'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 17
            ItemEnd = 23
            ItemPos = 4
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'fgh')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 16
            ItemEnd = 19
            ItemPos = 3
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'hjkhjkhjkjk')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New It'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 17
            ItemEnd = 29
            ItemPos = 2
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'fgh'
              'fghfghgf')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 11
            ItemEnd = 15
            ItemPos = 2
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item1'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 16
            ItemEnd = 20
            ItemPos = 1
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'hh'
              'dfggh')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end
          item
            BorderColor = 14474202
            CaptionBkg = clMenuHighlight
            CaptionBkgTo = 15658734
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -13
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            CaptionType = ctText
            CaptionText = 'New Item'
            Color = clMoneyGreen
            ColorTo = clYellow
            Cursor = -1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemBegin = 1
            ItemEnd = 5
            ItemPos = 4
            Name = 'PlannerItem0'
            Shape = psRounded
            SelectColor = 16244937
            SelectColorTo = 16244937
            SelectFontColor = clBlack
            Shadow = True
            Text.Strings = (
              'gfgdf')
            TrackColor = 16371364
            TrackSelectColor = 14983778
          end>
        Mode.Month = 12
        Mode.PeriodStartDay = 25
        Mode.PeriodStartMonth = 5
        Mode.PeriodStartYear = 2022
        Mode.PeriodEndDay = 12
        Mode.PeriodEndMonth = 7
        Mode.PeriodEndYear = 2022
        Mode.TimeLineStart = 44706.000000000000000000
        Mode.TimeLineNVUBegin = 0
        Mode.TimeLineNVUEnd = 0
        Mode.Year = 1899
        Mode.Day = 30
        ShadowColor = clRed
        Sidebar.ActiveColor = clCream
        Sidebar.ActiveColorTo = clCream
        Sidebar.AMPMPos = apNextToTime
        Sidebar.Background = 16250613
        Sidebar.BackgroundTo = 16250613
        Sidebar.BorderColor = clSilver
        Sidebar.Flat = False
        Sidebar.Font.Charset = DEFAULT_CHARSET
        Sidebar.Font.Color = clBlack
        Sidebar.Font.Height = -11
        Sidebar.Font.Name = 'Arial'
        Sidebar.Font.Style = []
        Sidebar.HourFontRatio = 1.800000000000000000
        Sidebar.LineColor = 14474202
        Sidebar.Occupied = 16244937
        Sidebar.OccupiedTo = 16244937
        Sidebar.OccupiedFontColor = clBlack
        Sidebar.SeparatorLineColor = 14474202
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
        SelectColor = 14327846
        TrackColor = 14474202
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
        OnItemRightClick = DBPlanner1ItemRightClick
        OnItemDelete = DBPlanner1ItemDelete
        OnItemInsert = DBPlanner1ItemInsert
        OnItemText = DBPlanner1ItemText
        ItemSource = DBDaySource1
        TMSStyle = 0
      end
      object Panel2: TPanel
        Left = 374
        Top = 0
        Width = 168
        Height = 484
        Align = alRight
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 1
        object lblSel: TLabel
          Left = 6
          Top = 250
          Width = 48
          Height = 14
          Caption = 'Selected :'
        end
        object lblEnt: TLabel
          Left = 23
          Top = 296
          Width = 33
          Height = 14
          Caption = 'Event :'
        end
        object lblEvnt: TLabel
          Left = 64
          Top = 296
          Width = 4
          Height = 14
          Caption = '-'
        end
        object txtSel: TEdit
          Left = 60
          Top = 247
          Width = 97
          Height = 22
          ReadOnly = True
          TabOrder = 0
        end
        object DBPlannerCalendar1: TDBPlannerCalendar
          Left = 6
          Top = 0
          Width = 169
          Height = 211
          EventDayColor = clBlack
          EventFont.Charset = DEFAULT_CHARSET
          EventFont.Color = clWindowText
          EventFont.Height = -11
          EventFont.Name = 'Tahoma'
          EventFont.Style = [fsBold]
          EventMarkerColor = clYellow
          EventMarkerShape = evsCircle
          Background.Data = {
            FFD8FFE000104A46494600010101012C012C0000FFE1007D4578696600004949
            2A000800000002000E0102004F00000026000000120103000100000001000000
            000000004C6967687420426C7565204465666F637573656420426C7572726564
            204D6F74696F6E204162737472616374204261636B67726F756E642C20576964
            6573637265656E2C20486F72697A6F6E74616CFFE10571687474703A2F2F6E73
            2E61646F62652E636F6D2F7861702F312E302F003C3F787061636B6574206265
            67696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54
            637A6B633964223F3E0A3C783A786D706D65746120786D6C6E733A783D226164
            6F62653A6E733A6D6574612F223E0A093C7264663A52444620786D6C6E733A72
            64663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F3232
            2D7264662D73796E7461782D6E7323223E0A09093C7264663A44657363726970
            74696F6E207264663A61626F75743D222220786D6C6E733A70686F746F73686F
            703D22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F70
            2F312E302F2220786D6C6E733A4970746334786D70436F72653D22687474703A
            2F2F697074632E6F72672F7374642F4970746334786D70436F72652F312E302F
            786D6C6E732F22202020786D6C6E733A4765747479496D61676573474946543D
            22687474703A2F2F786D702E6765747479696D616765732E636F6D2F67696674
            2F312E302F2220786D6C6E733A64633D22687474703A2F2F7075726C2E6F7267
            2F64632F656C656D656E74732F312E312F2220786D6C6E733A706C75733D2268
            7474703A2F2F6E732E757365706C75732E6F72672F6C64662F786D702F312E30
            2F222020786D6C6E733A697074634578743D22687474703A2F2F697074632E6F
            72672F7374642F4970746334786D704578742F323030382D30322D32392F2220
            786D6C6E733A786D705269676874733D22687474703A2F2F6E732E61646F6265
            2E636F6D2F7861702F312E302F7269676874732F222070686F746F73686F703A
            4372656469743D22476574747920496D616765732F6953746F636B70686F746F
            22204765747479496D61676573474946543A417373657449443D223133333535
            30343439312220786D705269676874733A57656253746174656D656E743D2268
            747470733A2F2F7777772E6973746F636B70686F746F2E636F6D2F6C6567616C
            2F6C6963656E73652D61677265656D656E743F75746D5F6D656469756D3D6F72
            67616E696326616D703B75746D5F736F757263653D676F6F676C6526616D703B
            75746D5F63616D706169676E3D6970746375726C22203E0A3C64633A63726561
            746F723E3C7264663A5365713E3C7264663A6C693E49726973496D616765733C
            2F7264663A6C693E3C2F7264663A5365713E3C2F64633A63726561746F723E3C
            64633A6465736372697074696F6E3E3C7264663A416C743E3C7264663A6C6920
            786D6C3A6C616E673D22782D64656661756C74223E4C6967687420426C756520
            4465666F637573656420426C7572726564204D6F74696F6E2041627374726163
            74204261636B67726F756E642C205769646573637265656E2C20486F72697A6F
            6E74616C3C2F7264663A6C693E3C2F7264663A416C743E3C2F64633A64657363
            72697074696F6E3E0A3C706C75733A4C6963656E736F723E3C7264663A536571
            3E3C7264663A6C69207264663A7061727365547970653D275265736F75726365
            273E3C706C75733A4C6963656E736F7255524C3E68747470733A2F2F7777772E
            6973746F636B70686F746F2E636F6D2F70686F746F2F6C6963656E73652D676D
            313333353530343439312D3F75746D5F6D656469756D3D6F7267616E69632661
            6D703B75746D5F736F757263653D676F6F676C6526616D703B75746D5F63616D
            706169676E3D6970746375726C3C2F706C75733A4C6963656E736F7255524C3E
            3C2F7264663A6C693E3C2F7264663A5365713E3C2F706C75733A4C6963656E73
            6F723E0A09093C2F7264663A4465736372697074696F6E3E0A093C2F7264663A
            5244463E0A3C2F783A786D706D6574613E0A3C3F787061636B657420656E643D
            2277223F3E0AFFE20C584943435F50524F46494C4500010100000C484C696E6F
            021000006D6E74725247422058595A2007CE0002000900060031000061637370
            4D5346540000000049454320735247420000000000000000000000000000F6D6
            000100000000D32D485020200000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000001163707274
            000001500000003364657363000001840000006C77747074000001F000000014
            626B707400000204000000147258595A00000218000000146758595A0000022C
            000000146258595A0000024000000014646D6E640000025400000070646D6464
            000002C400000088767565640000034C0000008676696577000003D400000024
            6C756D69000003F8000000146D6561730000040C000000247465636800000430
            0000000C725452430000043C0000080C675452430000043C0000080C62545243
            0000043C0000080C7465787400000000436F7079726967687420286329203139
            3938204865776C6574742D5061636B61726420436F6D70616E79000064657363
            0000000000000012735247422049454336313936362D322E3100000000000000
            0000000012735247422049454336313936362D322E3100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000058595A20000000000000F35100010000000116CC58595A20
            0000000000000000000000000000000058595A200000000000006FA2000038F5
            0000039058595A2000000000000062990000B785000018DA58595A2000000000
            000024A000000F840000B6CF6465736300000000000000164945432068747470
            3A2F2F7777772E6965632E636800000000000000000000001649454320687474
            703A2F2F7777772E6965632E6368000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000064657363
            000000000000002E4945432036313936362D322E312044656661756C74205247
            4220636F6C6F7572207370616365202D20735247420000000000000000000000
            2E4945432036313936362D322E312044656661756C742052474220636F6C6F75
            72207370616365202D2073524742000000000000000000000000000000000000
            0000000064657363000000000000002C5265666572656E63652056696577696E
            6720436F6E646974696F6E20696E2049454336313936362D322E310000000000
            0000000000002C5265666572656E63652056696577696E6720436F6E64697469
            6F6E20696E2049454336313936362D322E310000000000000000000000000000
            00000000000000000000000076696577000000000013A4FE00145F2E0010CF14
            0003EDCC0004130B00035C9E0000000158595A2000000000004C095600500000
            00571FE76D656173000000000000000100000000000000000000000000000000
            0000028F00000002736967200000000043525420637572760000000000000400
            00000005000A000F00140019001E00230028002D00320037003B00400045004A
            004F00540059005E00630068006D00720077007C00810086008B00900095009A
            009F00A400A900AE00B200B700BC00C100C600CB00D000D500DB00E000E500EB
            00F000F600FB01010107010D01130119011F0125012B01320138013E0145014C
            0152015901600167016E0175017C0183018B0192019A01A101A901B101B901C1
            01C901D101D901E101E901F201FA0203020C0214021D0226022F02380241024B
            0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002EB
            02F50300030B03160321032D03380343034F035A03660372037E038A039603A2
            03AE03BA03C703D303E003EC03F9040604130420042D043B0448045504630471
            047E048C049A04A804B604C404D304E104F004FE050D051C052B053A05490558
            056705770586059605A605B505C505D505E505F6060606160627063706480659
            066A067B068C069D06AF06C006D106E306F507070719072B073D074F07610774
            0786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608AA
            08BE08D208E708FB09100925093A094F09640979098F09A409BA09CF09E509FB
            0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B69
            0B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF3
            0D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B
            0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0FEC1009102610431061
            107E109B10B910D710F511131131114F116D118C11AA11C911E8120712261245
            1264128412A312C312E31303132313431363138313A413C513E5140614271449
            146A148B14AD14CE14F01512153415561578159B15BD15E0160316261649166C
            168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18AF
            18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B14
            1B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D99
            1DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041
            206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD230A
            23382366239423C223F0241F244D247C24AB24DA250925382568259725C725F7
            26272657268726B726E827182749277A27AB27DC280D283F287128A228D42906
            2938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C39
            2C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F91
            2FC72FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D4330D
            3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236AE
            36E937243760379C37D738143850388C38C839053942397F39BC39F93A363A74
            3AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E60
            3EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE42304272
            42B542F7433A437D43C044034447448A44CE45124555459A45DE4622466746AB
            46F04735477B47C04805484B489148D7491D496349A949F04A374A7D4AC44B0C
            4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F93
            4FDD5027507150BB51065150519B51E65231527C52C75313535F53AA53F65442
            548F54DB5528557555C2560F565C56A956F75744579257E0582F587D58CB591A
            596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A
            5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F56249629C62F06343
            639763EB6440649464E9653D659265E7663D669266E8673D679367E9683F6896
            68EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E12
            6E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A67301735D73B8
            7414747074CC7528758575E1763E769B76F8775677B37811786E78CC792A7989
            79E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F84
            7FE5804780A8810A816B81CD8230829282F4835783BA841D848084E3854785AB
            860E867286D7873B879F8804886988CE8933899989FE8A648ACA8B308B968BFC
            8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A
            92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B89924
            999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFA
            A069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FD
            A76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2D
            AEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58A
            B601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15
            BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CE
            C54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5
            CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CB
            D54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10
            DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584
            E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28
            EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FB
            F78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFF
            FFED009C50686F746F73686F7020332E30003842494D04040000000000801C02
            50000A49726973496D616765731C0278004F4C6967687420426C756520446566
            6F637573656420426C7572726564204D6F74696F6E2041627374726163742042
            61636B67726F756E642C205769646573637265656E2C20486F72697A6F6E7461
            6C1C026E0018476574747920496D616765732F6953746F636B70686F746FFFDB
            0043000201010101010201010102020202020403020202020504040304060506
            060605060606070908060709070606080B08090A0A0A0A0A06080B0C0B0A0C09
            0A0A0AFFDB004301020202020202050303050A0706070A0A0A0A0A0A0A0A0A0A
            0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
            0A0A0A0A0A0A0A0AFFC00011080137022903011100021101031101FFC4001F00
            00010501010101010100000000000000000102030405060708090A0BFFC400B5
            100002010303020403050504040000017D010203000411051221314106135161
            07227114328191A1082342B1C11552D1F02433627282090A161718191A252627
            28292A3435363738393A434445464748494A535455565758595A636465666768
            696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6
            A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1
            E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101
            0101010000000000000102030405060708090A0BFFC400B51100020102040403
            0407050404000102770001020311040521310612415107617113223281081442
            91A1B1C109233352F0156272D10A162434E125F11718191A262728292A353637
            38393A434445464748494A535455565758595A636465666768696A7374757677
            78797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3
            B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8
            E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EE205E7757E8D2
            3F031E396342D8095073F8D1D009A314C0B310E69816E01D2802E403A548176D
            C0E0838A405EB7539FA5005FB753C669022F5BAD05A2FDBAF6A06685BAFB54B0
            2F5B2FBD4968BD0AFB7F9FF2682917ED93A5059A368B50C68D1B64EF8A469134
            6CD31CFA5666A8D1B753E95323489A36B1F150F6354B42FDB2541A2D8BF6EB80
            2A1EE6A9176D92A59A245C857D2A59AAD4B90A70054B358A2D4099F988A83448
            B51A1C7D6A64CD228B1147935268916634A96CA2544CD4969589957B0A4D9A25
            62448FFF00D752324000E948AE50A07642F3EA7F2A07641DFAFE740AC8420118
            3405BB0C68FF001A09688DD31C11915498886442A78E9DBFC2A896AE44EBDC53
            4EC64D104C9DC5588AF22D35A1934569E3C82076AB336559573F8D346724539D
            31915666D6853B84E338F634D6E64CA33A618FBD599CB6295CA75AB464F733E7
            5EA2A96E66D6A67DD270455993285CAE41AD0CD99B749551337A99F749C138AA
            31919D7087A534499F3AF271544C8A372BD6992519D79FC282194275A108A172
            A734D0146E471548928DC2D324A33AD0052B81D7F4A00A7303CD00559C707E99
            A00AF22E588F514FA01048331E7D28EA03378A2CC0A6802AD201D1FAFE356F44
            04B18A009E21D298166114016E05A405C8169017EDD7A647E5FE7DA90176DD7A
            71480BF6EBD38A068BF6EBDE82917ED932452197EDD38029302FDAAF4A92D17A
            051D282917ED93A52659A56A9C0A81ADCD1B64E9C54CB6365B1A768985152691
            2FDAA1CD43DCD52346DD3803159CB73445FB68FA0A96EC8D52D4BF02648A8358
            97A04E071D2A59A45172DE3C9A9358A2E449938C54B668B62DC31E3B74A96EC6
            A9162243F8D666B14598A3C7149BB165844CF02A0B8C49A38FF840FAD4B66891
            32461472295CA4AE3C293D0522ED61EB0FAD03B31C23028B8F945D8BE9407289
            B168B87288611DA81598C6465A05618543504B444F191DB20F6A6992D103A6D3
            8FCAA8992B90C89EDC552763268AD2C78E08E2AC868AF2A7E62A933368AB3478
            38EC6A8CDA2A5C26466AD193D0A53C6391EB4CCA48A37319C74E6AEF73368A37
            09919AA4CCA48A17298356652467DD273F5AD0CA5B99F709D6AE3B19B33AE930
            4D35A19BDCCDB94EA08AD0CA48CEB943E9CD346667DCAE0E71544B28DC2718A6
            4942E17AFB504328DCAE33C50233EE57D0534051B85CF6A64B28DC2FB551251B
            85EB4014AE06013E94014E65C74A00A92AD0056906304FD0D3021230C57F1A00
            6792695D8149BA535B80E403A557502541C668EA0588D79C53116611CD005C80
            5032EC0B5205EB651C52605EB75C9E7BD202FDB2F4A068BF6EBD0D0522FDB2F1
            498CBF6E83A76E952C117ED53BD22D17EDD39E9D282D17ED10669328D3B54F6A
            82A2685AA738A896E6C8D3B64E2A5E88D11A3689D38A8355B9A16E9CD666B134
            2DD2A5B355B17AD63EF52CD522F429D38A8668917608F0054B3548B7047DF150
            6B145A893F4A86CD628B5047FC549BB1ADAC588D0F4EA6B32A28B11C7D87E26A
            5B35489D1028A92D22448C9E4D05A44AA80741F8D2B9561CAB9E833FCA91561C
            B19F51F80A2E3B0BE59EECDFA52D02C063F7FCC50161A623E9F953B8AC34AFE3
            4EE2688DE207914C9688997F84D0434432C7C1C8FAD34C968AF2260906A919CA
            2412C79E08AB8B322AC898FC2A8868AD326474FA55A664D15254F6EBD6A91949
            14A74EA2ACCE48A5731E4671F5AA8B31650993A8AA3392285D47C1E2B43268CF
            B94CA9AA89934675D2739F5AB5B99B33EED3DAACCA4665CA75156B633919D769
            82699899D749D4E2A90146E1783546650B85F9BEBC504B28DC2E466824CFB94F
            6A60519D78A64B285C2F5E2A84CA53AD0228DC2FB500529867340152614015A5
            1F780FAD302193A86F5E28E802520338F2C0554407A53EA04D18E94202784734
            C45A8066802EC03A5032E5BAF15205FB753D3D7FCFF5A405EB75E7A62901A16C
            B4017ADD682D1A16CBC8E690CBD6EBD3F9D4B1A342D947148B2F5B8C734168D1
            B44A96334ED9718A9348A346C939ACCD56E695BAF415323589A56A9ED50F6348
            97ED53BD41AA5A1A102600159B364B52FDB270293358976DD327A541A44BB12F
            6A966A916E15C76A86EC8D522D429920541B245B896A1B2D2B96225E01EE7A54
            9AA4588D028CD4B34489638F3C9A45A260BC7B5265A43D63CFDE1F854DCB4890
            28E98A431C109A07662F947DFF002A2E87CA218C8EF4072B10A91D4504B43590
            37D7D6826C44E841C63FFAF54989A2391030C8AA21A2165C8C5043457963FF00
            EB7B5526415DD7238AA3292D4AD3A77AD37336AE8AB2A704534CCA4549E3E4FB
            D599329DCA67E6AB466F728CE9D4533192285CA60E6B4337B146E92AE3B1948C
            FB84E48C552DCC999B769D6ACC999F74BF29AD0C9EC665DAD544CDEC675DAF7C
            5518BDCCEBA538E9F4AA4233E75038AA337B942E86475EF412CA372BD7F3A092
            85CAFB530285C0EB4C4CA370073834C9285C2D3114AE1680294E3AD005498734
            C0AB275147402071F211E9475023DE69F2819EA72C4D34AC04AA38A101320E68
            5B016211C669925A8070281A2EDB8ED40CBB02D4817ADC639CD2DC0BF6EB8348
            0D0B6028197ADD7A668291A16CA719F6A432FC0BD38A81A342D978A0B2F5B0CF
            20505A346D178A86334EDC73D293D8D6268D9A700D666A8D2B55E6A1EE6AB634
            AD57005448D12D0D0B54E00A966CB72FDBAE48E2B33589A102D4B355B176D901
            1F5A966A8B902F39ACD9AC516E25E9532358A2DC0BC66A5E88D8B31AE70BF9D6
            65C5166250C6A59AA44E8BB8D49A244EAA071F9D265A44B1A7F111FF00D6A966
            89122AE7A522922458C01CD229790F007614AE82C85DADE94733188411D45170
            1A529FA011B27714C96863286183410D113A907F9D5221A209531CD510C8A55D
            C33410D1565501B38EB568CE4AE8AF2AF0455C4C595255C7E154449156E1783E
            D5A2316529D783F9D5232914675C551949146EA3C6455AD8C9942E17E5CD5C4C
            A48CFB95C135465233AED393815A193DCCEB85E08AB464CCCBB5E38AA5B99BD8
            CEBA5E0D598C8CDB95E4F1548933E7519C5510CA3720F23DA821942E07F2A092
            85CAFBD00509C63FCFF9F4AA13285C8F6A64EA51B81DE988A3703AE680294E39
            A00A730A6055947B77A008587CE47AD1D0087CA7F4A7CC067A74AA02641C814B
            A01320EF4C458887CB40BA16E11C81D2802EDB8A0A2EDB8CD4B02FDB28C81FE7
            B52605EB61822901A16C3A0340D17ADC628291A16CBFCE93632FDB8C9045431A
            342DC003A50597AD9738CD0688D3B31C8A8608D1B65152F63689A766A368A834
            89A36A2A1EE6A8D2B65E07159BDCD91A36AA78A966B12FDAAE5AA0D56C5F8070
            08FAD433545E81703A74152CD56E5BB75E066A0D625B8C7B566F7368A2E42BC0
            1532342CC2382DFE7FCF4A866D14598970B52CD113C2BC6691A22645CF6F7352
            5A25519E2A4B489A35C0CD22B71E0773D2A5BB95B8E556233D0522AC90EF2C63
            EF1A07F21A548E8680B262100F18C1A096AC46CBFF00D7AA4EE22375C1CD510D
            11C832338E9FCA9A21A2075E08F4AA4432061D41A666CAD3AE338EDCD522195E
            5154B731654997922B433915675FD6A918C8A730AB4652D8A33AF515665228DD
            2E47E1551327B94265CF00F5AB5B9948CEB91DEACC9EC67DD2FAD5AD8CA466DC
            2F38AD16C64F7336EC7502A96E66CCDB95AB30919B743934D1267DC0E4D590CA
            3703E6A09667DC0E0504142E40A6050B81DBFCFF009E6989942E79CE69A24A37
            03BD31146714014AE07514014E61D698156619045005793EF06A3A0052032D3A
            0AB7B012A7DEA604C9F76825ECCB11F41F5A03A96E01F30FA50172E5B83E940D
            17EDC77A9632F5B835205FB71ED401A16D4017AD8608A0B4685B0E94865FB61D
            39A81A342DFA6314165EB61903341A1A7662B31A346D86294B6358EC69DA2E14
            0A8355B1A3683B5666AB534ADC67150F7355B9A36A2A246B12FDA71CFA543364
            5F8579C541AC4BD12F152CD63B972019C54B358EC5A87B5666F1DCB910FE5512
            DCB5B96611C0E7BD433645951C018A9345B13C6380282E24D1FAFA9A83444B10
            C9A45A260327152CB244193B8F4ED5256C3C0EE68285A000807AD0046EBCFF00
            23400D6E467F3A16843562275ED564BD884FBD3337B10B8C1AB443207186A666
            F52BCCBE94D10CAB20F97AD519496A56B81CD6A64F62A4C38AA89948A738C13E
            C6AD18B28DC0E4D5993D8A3723E5FA669C773196E509C7515666CCEBA5C13F88
            AD0C5EC67DD8E09AB5B1948CDB91826AE3B19C8CDBB1C902A8C9EE66DC8EF5A1
            8C8CDB904E714D1067DC724D5112285D0C722992CA172073F5A08285CAD00509
            FDEA84EE50B8C74A64946E06734C451B81FCE8028DC74A00A730C9A605597FA5
            302BCBF747B50BA8095206620E40AB7B012C7D7F0A604A9C802825EC598874A0
            0B70FDEA01176DC74340FA17ADE93197E0048E2A40BD072C07F9EF480D0B7140
            D17ADC74A0A468DB8E952C65EB6F6F4FEA2A58D1A16C380682CBD6D41A1A7680
            F1C76A8635B9A36D512D8D63B1A96BF70549AC76346D7B7D6A1EE6B1346DFB56
            6F7364695B5433545EB4EDF4A87B1AA2FC032C0FBD41AC4BB17DDA966B12EC23
            F954BD8DA25A87823E9599B44B918EE6A1EE5C772CC20ED5FA66A19B9657EF0A
            92E3B13C7DA93345B1347C281ED52CD113435252DC957B9F6A97B96B72541800
            522FA8EA06140050035FA5004647514132237AB4490B77A6B533229873548CCA
            F37DEAA2195E7393F8D3466CAAFC29AB46532B4FD39AB5B193D8A937423DEAE2
            652295C7F155ADCC5EE53BA1863F8D52D8C9946E071F8D52DCCA5B99F38EB566
            4F733EEBAFE35A193D8CEBBE9551D8C6466DC8E4D69133919D7632C6A96E64F7
            336EFA1FAD68632336E7AE6990675C019E2A899142EBA1A64328DCF5341067DC
            F7A680A171DFFCFAD313285CD344946E3A531146E280295C75A00A535302AC82
            8605793EEE053EA047E67B54819C9F7AAD812C78E698BA932638C5022CC63902
            802DC1D4D008B907DD1F4A03A17ADFAD2651A16D53D00BF6F8CFF9F7A405FB6E
            78A00BD6D4168D0B6EA2A7A0CBF6D9C0FD7F3A97B8D6E68DB720505972DBA0A0
            D0D4B4C6467D2A18D6E68DBF41532D8D63B1A76BF70541AC4D1B5EDF5A87B9AC
            4D1B6EDC566F7364695B54335897AD3B7D2A1EC6A8BF07040F7A835897A2E82A
            59AC4B90E7F4A97B1B44B509048FA5666D12E466A1EE5C772CC3D17E950CDCB2
            BD45496B6278CF4A4CD16C4D17DD1F4A96684D09A9296E4ABCE47B54BDCB44B1
            9CA8348BEA3A8185001400D73C6280233D09A09911BD5A24849F5A666F62294E
            4D52332BCC72D54432BCFD7F1A68CD955FEE9AB32995A7AB5B193D8A937DD273
            DEAE2652295C7F155ADCC5EE52BA3963F8D52D8C994AE0F1F8D52DCCA5B99F3F
            7FC6ACC9EE67DD0E71EF5A18BD8CEBBE956B632919D73DEAE2672336EBA9FAD5
            2DCC9EE66DDF43F5AD0C6466DC9EB4EC419D3F3F95593228DD77FAD066CA175D
            4D0499F73DEA90142E79E31FE79A109946E7A914D6C4F4285C75A62294FDCD00
            519FA9A00A535302ACBD69F40207FBB47DA022D828D7B019C9D6A80963EF40BA
            932F6A01742CC5F785025B7DE5B83A9A011720FBA3E940742F5B5052342DAA7A
            017ADF93FE7DE9740342D8F19A405EB6A0A4685B7AD4945FB7E001FE7AD4B034
            2D4F0050685DB7E80506869DA638FD6A58D1A36DD2A1EC6B1D8D3B43F2F06A0D
            2268DA9E7F1ACDEE6CBA1A56E78150F73589A16A79A896C6B12FDA93D2A59B22
            FC07A1ACCD625E88F18F7A966B1DCB901C62A59AC762D43C62B3368EE5C88FEA
            2A25B9A2DCB309F941F7A966C8B0A7E518A8344588CF1C50CB893467A8F7CD41
            A2258DB06916B52607B8A96527743D5B073D8D496B52407F11EB40EE2E47AD03
            10B81400C6627EB406C3188E83A0A695D999148D5427B11138E4D5233642E79E
            7F1AA443640E72D4CCD95E66E7FA534432AC87E5E98AB3193D4AB39E7AD6866F
            62ACC78AA8994B729CC739F73568C5946E0F26ACC994AEBEEFE26AA262F733E7
            3C5519BDCCFBB6F98FD6B4462F633EECF18156B632919B72793571D8CE5B99B7
            67E6354B7326675D743F5AD0C64665C9E73F4A6B620CF9BB8AB21946E7A1FAD0
            43285C9E4D0499F73DEA90146E7F97FF005E842650B9FBC6A89285C75A04529C
            F068028CFD4D3E80529A981565EB4740207FBB47501954066A75A40491F7A62E
            A4CBD45025D0B317DE5A016C5B83A9A01172DFF879A05BAFEBB17ADA82CBF6E7
            B035005FB723FCFE3480BD6D402342DE82917ED4F4148A2FDB9E3F954B0342D4
            E7148B45DB638E28345B1A56647150C6695B1C9C52DCDA269591E00ACCD2268D
            A93D3F3A87B9AAD8D2B66C8150CD62685AB74350F6358EE5FB66C30A836897E1
            3C63DAA0D22CBD03647D454B365B97206E066A0D625A88F1F8FF009FEB59BDCD
            A25B85B201A991A166139CAD41AC596626C8E6A59AA2785BB522D326438E7D3F
            954B3444CA7B8352592C6E08A452F2240D8A968A141C7DD6C7B1A455FB8E2CE7
            AAD01742127B90280E61A580FBBF9D349B25BB8C63C535D8089DB26A886EE472
            B638FCE9A21B2176C0AA4432063C134CCD95A73C11EBC5522195E5356B730654
            95BE626AC8915673DB3DAAD18C8A531E2A9193294EDC935665228DD3607E1548
            C9EE509CFAD5ADCC999F727BD598CB633EE98649AB5B194B7336E0F5AD23B19C
            B7336EDBAD52DCC9E8675D1C0AB319199747AD5224A139C66A887B942E4E463D
            E821946E4F26824A1738248CD3D40A171FA53E84B650B9AA24A339EF4014673C
            9E680295C1E69814A7EB8A61D0AB2F5A3A0103FDDA3A811EF5F5A3DE033A3A6C
            4491F7A61F689875140BA22C21E41A04CB709F9B140172D8F03EB4022F5BF5E9
            48A45FB6ED498CBF6FD8629302F5B1E99F4A405FB739C1A0A45FB63D3348A2FD
            B9ED52C0D0B56CD22D6C5EB73CF34168D1B36E952CA34AD8818E2A4D22CD1B36
            C1EB599AADCD2B66E71532DCD6268DABE40ACDEC6B1D8D0B56A93545F81B906B
            336897EDDBA1A866912F5B3703DA933645C81BB5666B165B85B3C1A996E6B12C
            C0DC63352CD8B51BE30D5997165989B078352CD513AB60E6A4D132646CF22932
            D32547C719E3B54969922B77148A4C9165EDFCE9169A1E194F7A56430DCBEB47
            2806E145900D67F5A626EC319C9A64B7718CDB7EB4C86C859BDFF1A6896C8657
            C9C5510C8656C7142336CAD2B0CE076AB4449E85695FA9AB8A312ACADC7D4D51
            9C9952E1B83568C65B152E1B009AB467265199BAD5193651BB6E7156B632651B
            86C03CD52DCCA5B19D70DC9AB32919F74DD6B4316F533AE5B839AB5B19B332ED
            BB0AB899B7A19F76D5460CCDB96AA4233E73815466F728CED9FCE821946E0D02
            33EE0F35417B146E0F18A64B285C1E4D324A370401CD0051B83D68028DC1E2A8
            0A9375A0572AC9DA87D4640E7E5A3ED010555D01413AD26264B1F7A3A875261F
            5A64F42C276A06F465A84FCF408B701E3E8680EA5F80F5E68197ADCE7149945F
            B73DFAD4817EDCE0D202FDB9ED40D17ADCF3432D17EDDAA5817ED9B9A92917E0
            238E682D17ED5B06932CD3B66F7A82A2CD0B47E4543DCD91A56ED822A5EC6AB7
            346D1F9C541AC4D0B57C11599AA342DDB8C543DCD532F5B3E454B354F52EC0FF
            00375EB506A997616271FAD4B34896E17A866C9966270083EB506C8B51BF6F5A
            968A5A16227CF1526C9962390118350D16992A3ED348D2E4CAC0F4FC452B1499
            22C98F715362D31EAE1864503B8A18F634877685DE681DD86F6F5A02EC4CE7DE
            825B1A641D8FF853B09B2267CF7FA9A6912D91492761544B644CC1464D043641
            2B9FBDF955244365791B02A8C64EECAD33E4ED15A10DD8AD33FA7D29A465229C
            CD93F4AB326F529DCBF1568C9B29CCC40CD523296C67DC3E58D59948A572FC63
            3548C9B33EE1B835A477326CCEBA6E2A919333EE9B8FAD68672332E9B9CD5C76
            32919D76DD79A664CCEBB6CF53EDFD2AD09E851B93814CCCA139FE5419B285C9
            EB9A680A170783FE7FCF5A62651B96C9A64946E0F7A6228DC9140146E0E68028
            DC1EB5480A731FEB40AC56938E7DA81A2097EE51D4066C5F4A903353EF55B132
            54EB4C3A930E82817464E9CA0340996A23CA9A045B80F514017ADDB241F51414
            5EB66F5340D17ED88E3352C65EB66E3AFF009FF39A902FDB374E6802F5BB74A0
            B4685B374A9632F5BB63148699A10371D69165EB76C6283434AD5FA73C540D1A
            16EFD0E6A246CB634AD9F2A2A4D13342DA4E9599AA66840FD0D43DCD56E685B3
            F4F7A966B12EDB4983506AB62F42FC71F8543358B2EC1203DFAD4B468996A193
            3506D165A85F3C13D6A1AD4D132CC3276348D53B96637EFDC566F42E2EC4F149
            C67BD268D5327470C3AD4149D8915CAD05DC916407BD162948786EFF00A8A562
            931C243FDECFD4521DC5F38FB5161DD01973CF1F9516B0AE34B93EA7EB4582E3
            59FD4D3B12E444F2E7814C9B8C66C726821B219651D49AA4892BC8F939354672
            6413498C9AA48CCAD237E66A8CDB2ACD27FF005AAD2B194995267E3F9D52464D
            94A77C9EB56672653B99300D52326F528CCFC66A8CE4CA175276AD0C9942E9F8
            AB5B18CB633AE5F24D5C4CE467DDBF27DAA8CA5B99D72FD79AD0CE4CCDB96C9C
            9FA9A68C8CFB96E71C7154899142E9A990CA370D8CE3E941050B96A680A370C3
            D6992EE50B83542652B83408A1393CE680295C1A60519CD3132A4BEBED40752B
            487AD03443276A5DC06D203313EF55BD84F6244FBD4C1EE4CBF7681772788E50
            5022CC47E4068117203F37D45005CB76E01A065EB76C1A0A2FDBB7AD4B197ED9
            BB67FCFF009352C0BD6CDED4017EDDA82917ADDF1839E94145F81AA1817ED5B8
            03348B45DB76038A0D11A36927BD4B1F534AD9F352CD62CD0B393B5666A99A16
            EFDC54C91A26685B499159C91AA65FB693B549AA65E824E84543354CBD6F2820
            1F4A868D13D4B903E38CF1DAA4D532DC5254B469165A8A4F7A968D532CC6FDFB
            8ACF6358B2C452E69357342747EE2A0A8CAC4E926693468992A4BD9AA5A293B1
            206EE0D22D31C246140C709BD4FE740EEC5F380EE28B20E6606503B83F850176
            34CA4D021A589EA6815D0C6902F43412DDC85E4F53FF00D7AA4896C85E4CF27B
            74AA21C886493B9AA48CF72BC9264E4D5132657964AA8A326CAB3483BF6AA326
            CA7712D5A466D95267E3AD5193651B99371C5590DD8A571262AA262D942E1F24
            F35466D942EA4CE4D6864D99F70FDF356B6326675D49C75EB54B7336CCFBA7F9
            48AB3193336E5F24D5224A13B679AA21EE51B86E79FA9A086519DA824A170D83
            54051B93DA9A24A370D4C928DC36074E94014676007140146E0D30294E7AD311
            5663408AD21EBEE684510BF5A5D004A40658E0D6827B12AFDE14BA5C1EC4C9F7
            698BA934272B8F7A05D0B101F971EF408B7037DD34017203D45005EB76C9EBD4
            5052FEBFAF997ED9BFFAF49945EB76CF06A7602FC0DEB480BD6ED40D17ADDBB5
            05A2FDBB74A9605EB67C1A92917E06EF9A0B4CBD6B260F2693459A56CFC54171
            65FB693041153256354CD1B793201CD49A265FB59706B3354F52FC1260F5ACDA
            B1AA65EB793A5268D132EDBCB83506A9DCBB0C99E3F2A868D22CB704B9FEB48D
            132D4527419A868D532CC52FBD4B57344C9D24EEBF9541A2916229A935734264
            9054B434EC4AB2F66A45A9122C9FDD6A562EE87898F7153618E1329A2C3BB17C
            D5A2C3E661E6A51615D8D33FA0A2C2BB1AD2B1EA69D857446D28EDD6AAC4B644
            F27726821C8864971D4D52449049267926A896C825979FE54D2336CAD2C99E01
            AB326CAD34CA075AA48CDB29CD264F26A8CDB2A5CCB8154919B7728CCFD4FAD5
            2D4CE4CA5752F6CD6864D942E24C0C66AA28CA4CA171264E2AD2B99B650BA938
            C559936675CC9938AB5B19CBB19F76FE94CC999D72F918CF5AB44BD0A370FEF4
            C8284EDD7F2A08652B97A62285C37534C4CA370DD79AA2594AE1A81146E1B9EF
            40146E1A8028CED54229CC7B5022ACADCE7F1A18CAF276A3B8C858F24D27D008
            EAC0CF1C8CD00483D4525B13F649A33DA987544B01E48CD022C4079228116A03
            F2E3D0D005D81B2C0FA8A00B96EF800FA1A065FB7600E282932F5BB7BD4B197E
            06EF8FD3FCFBD4817AD9FDE802F40D4148BD6EF9E3348A2F40FD0D40D17EDDF2
            282CBB6F26314168D0B4946066A194B4342DDFDE93D4D62CD0B4973C1ACCD132
            FC12E3152D1A26685BCB918A86AE6A9976DE5EC4D41A265D824C8E4D4346A997
            2DE5EC693344CB90CBDC75A8668996A19463AD2344CB31484F53CD43468993C7
            2D4B57344C9D2507BF3EB52D58D14899262BC1348B4EE4C9367BD4D8648B20F5
            C52B587CCC72CADEB48AE643BCE38E940F983CEA5641CC1E77B53B21F308653E
            B413CC35A4F5340B98634B8AA489BDC85E7F4A69242B913BFA9FCA992E44124D
            EF54919B657965EC2A8CDB2BCB28507F5A6919B6549A5CFF004AB21B2B4D2E07
            069A466D94A69771E6ACCDB29DC4DD6AD2326EE519E4EE4D5257336CA1732F7A
            B326CA33C9806B44AC8CDB33EE65E49A695D99B667DC49D7356652667DCBE493
            4D1050B87CE4E6A910F728DCC9D4E7F5A64B651B87C7141051B87A76028DC3F1
            8AA4494AE1A99251B86C0340146E0E09340146E1BDE9814A76F7A622A4CDDE81
            15653D7F2A011039E4FB51D06B62173C51F686328E640672FDDAA0245E949089
            623D298BA134670E2813DC9E33B5C1A045A84FCD8A00B7037CBF434017606E71
            EA2802F5BBE704505265EB77E94145EB67F4A8605EB76C11480BD6EF40D17ADD
            F9A4CB2F40FDA9302EDB4846013525A65E81F9CD05A65EB69318A4D1468DBCB9
            039E6A0A4CBD6F2E0839A992EA6C9DCD1B797201CD49A265DB69B0719ACCD132
            FC12E7A54356354CB96F374A46899722973D0D4356344EC5B866C81CD2344EC5
            A866F7A86AC68996A2981EF4AC5A64F1CBEFF8D4345A64F1CB48D13268E6C71F
            A54B8F62D32459067838A92D32459985034C7ADC0EFC52B22870B81EB45805F3
            C7F7A9728079E3FBD47280D6B81EB4EC85718D39A7B05C63487F88E3DA827988
            DA603A53B325B22926AA48872207973C0A666D904B360707EB54910DDCAB34C5
            BE954436569A5C0CE69A57336CA73CB93806AC86CA93CA071549194994A6973D
            EA8CDB295C4BDB3C77AB4AC672651B89726AD2336CA3732F6CD519B667DC4B9C
            D5A56339333EE65EB4CC4A17327F0D509BB14AE1EA8CCA33BF63DA825946E1FB
            D08451B87CE79AA0651B87AA2594EE1E824A372E7B1A00A370F4C0A570DD79A0
            4CA53BD3115256A3502B486802090F1F5A3A95D489CF38A3A5C06D4819A9D315
            A01221E314BA8BA92C470698BA325079A05E658072030A04588DBA35005B81BE
            6C7AD005C81F807D2802EC0DD467DC5032F40FD0E7A8A0A45E81F352C65E81C1
            15205EB792802EC0FD282D17ADE4E94865D81C763F4A9634CBD6F2E7BD22CB90
            4941699A16B374E7EB50D0CBF6F27A9A4CD62CBF6B363826B37A3344EC5E864C
            8A4D5CD132EDB4FEF599A265D82538CE6A5AB1A265C827EF52D5CD132DC33679
            06A1A344CB50CF9E334996996629BD0F3536B1A26588A719EB8A45A64F1CBF85
            4B45A912A4DDAA4B4C9566F7A0A52448B39F5FCA95915CCC789C772314B947CC
            384A3AE29598F985F350F383F9D1663E610CAB8E9F9D1662E610CC00C600FC7F
            FD5472B13634CFE87F2A7CA172369FD0D3B12E444F37BD325C889E5FEF1A7621
            C88659C0EF8F6AA4886CAD2CD9EA7F0A6436579A603BD34AE436559A6CF02AC8
            6CAB34C077A695CCDB29CF393C66ACCDBB14EE26C0C55A56336CA37137606A92
            B99B76295C4D81C5599B650B89BB66AA2BA90DD9146E65EB54632667DC4BD4E6
            A9224A3349DF35443295C49D4D0436529DF8EBF5A0928DC49EF4C0A570F544B2
            95C3D324A570F8068028CEFD68028DC3F5A6052B87F434C929CCD4015653E940
            6E5790F5A0642E79C51D00858F24D0F6B0C66F6F5A39501413AE2A80913AE293
            13DC7A7DEA61D49C1C8A09E8C9A1394C7A5022785B2B8F4A00B50BF00FA5005C
            81B9C7AD005CB77C60FA706802F5BBE38CF4E94148BD6EFC0C1A068BB6F263BD
            43197A071C629017ADE4A068B903D055CBD0499E2A6C32E5BCB8239A92932F43
            21C75E682D32E5BCD8C10682D1A16D376CD6634EC5D825A4D5CD532FDACE0F19
            A8344CBB0CA477A968D132E5BDC7A9FF00EB549A265C865C7238A8B16996E09F
            D2A5AB9A265A8A6CF39E6A5AB16996229FB1A468996639F3EF52D16A44E93903
            839F6A92D3268EE33D0FE745869922CD8EF8A562F99922CC7AF15361F30E13E3
            AE6958AE61C2707FFD540F998A27C77A03984F387F914073310CFCF1FA502E66
            234C7FFD74EC4B911B4DEADF953B0B988E4B8DBDF14D226F7207B827A71F5A62
            6C8649B1DE821C88259C0AA48CDB2ACB367A9AA25B2BCB3E338354919B6539E7
            CF435443762ACF3002A92336CA57131E7D6A92B90D94A69401935A19B651B89B
            D69A5733B94AE26EF9AB3393285C4DEF4D23328DC499FA55213652B89703AD33
            36EC529DFB50414EE24F7A680A33C9D4D313294EF9EF544B294F27BD02295C39
            E714014AE1FB0A6051B87A6229CEDEF408A7335202B48D4C081CF6A2FD4642ED
            D4D1E432173C6285ABB80DA39981471B5E9A77403D4E0D0F613D878E39A627B5
            C9948DBF4A07F68961386C7AD0413C470D4016A16E76D005A81CE3E94017607E
            71EB40172DE4E01F4E0D032EDBBF38CD032F5BBD26517A0931DEA5A02EC12734
            80BB0494148B96F2E3BD2651760929302EDBCBD013525A65C864C734169972DA
            6C77A4D14685BCC0E39A8293B17209BDEA5A354EE5EB6B8CF07B5496997219B1
            8E6A5A344CB704F81525A65B8A6EE0D4B468996A1B83D33525A6598E753C1352
            D16A44F1CE47439A92D3278EE41EF4AC5A762649F3D79A5629489527C0E1A914
            9922DC1F4FCA90F9870B903B9A2C3B8EFB48EEE3F1A2C3B8A2E17DBF2A560B87
            DA00FE214EC171A6E7B6EA2C857431AE3B004FD4D017431A763FC5F9502E6236
            980E94F521C88A4B803A9A7625B65796E09E869A5625B488249B1C934C96CAF3
            4F54910D95669C9EF54436559A70BDEAD2B19B6539E7EBCD34AE436549A6C753
            56958CDB295C4F93D7E94D2B90F5294F367249AD16867296851B99FAF34D2322
            8DC4D8C8E69A41B14E6900AA336CA5349DFF002A086CA93C98E33408A53C9DF3
            542295C494D08A53BD324A571275C1A00A53BE0530294EFEF4C194A793341253
            99A80D0AB33738A3602BC8D9A3602090F534790C85CF38A3CC642E72D8A36402
            6F5F5A56605271DE9C7701C0E466A80901C8CD244ADAC4911E306986E8910ED2
            0FA500F7B9614F71412588DBA366802D42F83F5A00B703F18CF4E94017209390
            7B1A00BB6F27E940CBD0498FA76A0A45D824F7A96865D824CF15205CB796802E
            C12505265CB7969145C864F7A9680B96F3718A45A65C865E7934169972DEE082
            2A5A28BD04FDC7F3A92948B70CD8EF49AEA6A9DCBD6F739EB505A65B86623906
            93572D32D4371EFF0085416996A29C1EF52D1A26588E723BD49499662B9F539A
            4D5CB4EC4E93293D6A5A65291224CC3A1CD22F98956E7B1FD682AE48B720F20D
            2B0EEC7ADC7FB54AC3E61DF6814583985F3D7D452B30E641F681ED4598730D37
            1EF458398635C0FEF53B0AEC8DEE87634EC2237B863C9E2989B444F377268B12
            E44325C01DEAB948E62BCB71EF9AA25B2B49367A9A69364B6579AE3D0D525633
            6CA935C67BD525721BB15669C0EF5643652B8B8CF7E28B36437729CD367926B4
            B58CE52295C4F93C7E1419B77294F363BFE554912539A4AA25BB94E7973C0341
            0D952693DE824A5712FBD302A4F2115489294F25324A7712500529DFAF34C0A5
            71250052B893B53114A67C9C5022ACAF924D005691BAD005791BBD00885CF38A
            3CC6885DB82D4790C81DB6A93EB46EC08F7B7AD50109E56B35B8021E315A00F4
            3C62975175248CE0D3175251D73EB4074B1342D95C7A50493C2DDA802CC2DC62
            802DC32746A00B703FF0FAF4A00BB049D1BF034017207FE1FCA829176DE5A194
            5E824C8A802E412679CD202E412FBD008B90CB8A0B4CB904B52C65B865E86A46
            997209810282D32D432FBD05A65CB7B8C77A56197609C1EF51B14996E19FDE93
            57344CB905C91C13505A65A8A7CF39A372D32CC571EA6A1AB1699662B9F5A45A
            916239F3D0D4B89499325C11DEA4AE6264BAF53F9D164527D8956E454F295CC4
            82653CE452B31F38E12E3B9A562B9851311D1A81F30BE79FEF50170F3CFF007A
            80E61A66F56340B986B4C3A93F99A7662E618D703B1FCA9F293CC46F73E8714E
            C85764325CD315C8249C9EA6825C8864B803BD528F721B2B4B73EF544B772B4B
            393DEA94486CAD35C638CD510D94E7B807A9A695C87DCA93CFDC9AB33948A771
            3FE5410539E6CF73F855244B6549A5EA4D512DDCA73CDE879A086CA93498C8CD
            0494E7969815269714EC26539E4AA24A73CB8EF408A53C99C914014EE24A6052
            9E4F7A626529DFAF34C45499F03EB408AB33638A432095B1C501B95E46FD2802
            176E3EB47528864393B68E9702173BDF1D851B201309FE4D179015E36DC2A760
            01F2BE2AD6C03D0E0D0F6131E0E0E6989F72643B978FC280D99244D86F63409A
            B32743B5B3408B11B60834016617C1FAD005B81FB7A74A00B9049DFB1EB40172
            0908E33C8E940176090707D6828BB04BEF49A28B90C9EF5205C865EF9A405B86
            5A06996E19714148B90CBE9F954B196A19BBE6A46997219B38E682D32CC32906
            82932DC1718A4D145C82E33DEA069D8B714F45AE68A45A86E4839DD50D58B4CB
            515D03DE914996239FDE95916A44F1DCE3BD4B4D14993C775EF9A45F33264B80
            7BD4F28D3448B3F4C1FD695995763D6E08EA690F9870B9C77FD681DD0FFB51F5
            3F9D01741F69F7A077406EC8EE7F03405EE34DD03DFF003340AF61A6E4F6A02E
            8635C1EE69D85CC46F70077A7664B644F72314D22798824B9F7A62B95E4B827B
            D3489B90493E3BD525621B2B4B73E86992D9566B8F43F8D528F721BB15659F1D
            4D519CA4549EE73C51625BB94E69FDFF0023D6AAC2655965C77AA21BB95669A8
            25B2A4D2E33CF3DE820A93CBEF4C0A934BD79A684CA73CB9EF544DCA9349EF40
            8A73CA4E79A6053B89680294F2D313294F25022A4CE0F1F9D3115657C9CFA500
            5676CE5A90C8246FD2811039ED4CA2276EF4BA0C81DB00B7E546EC089DB627B9
            A37604583E94EE808636DAD4A48091FB1A220381CF22A80901C8CD2425D87C4D
            838A62DD58907071409EAAE4F1B6E5CD022789B2304D005889F34016A193BD00
            5B8241F81A00B90487D791401720947E06802E4129F5A0A45C825A968A2E432E
            39269580B70CB8A405C865F7A06996A19BDE82916E19BDEA58CB314B8EF48699
            6E1B8CF06914996A39BD0D05A65886E08C734AC516E1B9CFF154D87AA2DC5703
            B9C7E348A522C473FBD26932D48B115D1039350D345A762C47740F5340D32749
            FDE95916992ADC11DE9728F98916E7DEA6CCA4C916EBB6EA07763D6E8D1643E6
            145D7B52B20E617ED2BFE451641CC843723B51CA839843754590730D6BA38EB4
            EC85CCC8DAEBFDAA057237B9F4A7662BA227B827BD3E517310C9381CE69D912D
            904975FDDA64DFB15E5B93EB4D264DFB95A5B827A9AB4AC4B915E6B9F7A0C9BB
            9526B827BD3B08AB35C76CFE555613762ACB2FA9A64B6569A63410D9566971DF
            9A092A4D37BD3480A934A3D6989B2ACD2F5E6992D952697BE6988A73CB9E3F51
            40152797DE9814A797AF34C4CA73C9CF06988A9349DFF2A045499C818EE6802B
            4CFF00C2290104AD8E298F72091BB51E6040EDC67D695BA0C8643D851E632272
            18E3B0A3640444EF6DC7A0A1E8804F313FBD52055AD00994EF4A8D98021ED560
            4887B527A313D18E070734C4F464C0E467D280D9D89217C363B1A092746DA680
            2C46FDE802C44F4016A192802DC321E3D45005C8251EBC1A00B704A7A7714017
            2197B834165C826E952D0CB70CBD05202DC32E3BFE5480B70CDEF40D32CC52E3
            BD05DCB714E7153602CC5377CD202CC570475348B4CB314C0F2282932C4739F5
            A0A4CB30DD1E84D4B432CC573E87F3A434CB115C67BFEB48A52274B823806959
            16A489A3BA23BD4F2B2AE4C977EF48ABB255BA1EB40730F5B807BD055C72DC71
            D69590F998E171EF472A0E661F69F7A5CA87CCC0DC1F5A3943984339F5A39439
            8619FDFF005A7642E6635AE00EA698AE46F763B1A09B90C9767D68B05D904973
            93CD57290DA217B823F8A9A4913CE4125C63BD321CAE5796E7D0D3B125696E06
            7AE69D80AD24F9EFF5A7625CBB15A59F1DE99056966E7DFD2825B2B4B377CD02
            2ACD3FBD3B0152697DEAAC0569A5E7AD321956697DE811526941A00A93CBEF4C
            0A73CBEF4C4D94E7947AD311527939C67EB409952590125BB5005691FAB1A045
            766EF40C81DB3C9A4320918F4CD302276EF48A441236064D1BB02191B0B8EE7A
            D1D6E047236D1B07E342D5DC066C6F4A7740454F702485B9DA6A64038FCAD9A6
            980E070734DEA83724A49DC5BA2489F1C1A62DD0F1C71F95027AEA4F1B6E5A04
            4D13F634016227C7140166292802D4325005B865C77E2802DC32F6279ED4016E
            19BBFE6281A762DC33631CD0522E4337AD4B432DC337BD2B016619BD0D202D43
            37BD03B96629B1DE82932D453FBD2686598A6CF7A9B01622988FF3D290D32C47
            3E7A9A0B4C9E39BDE8293278EE3DE8293278EE88EA6A6C0588AEBD0D2B0EE4C9
            75FE4521A91325C67A1A0A526482E0814AC8AE643C5CE78CD2E51F321C2EBFDA
            A3958EE870BBC743FAD2B304C5FB67FB7FAD1663BB10DDB766CD1660D886EB8E
            BF951CAC5718D75EA69F2873218D73E9F851CA85CC863DCFBD3B225C889EE47A
            D325C8864B9F7A09BB2192EBD0D3B08AF25CF7DD4EC04125C13D29D896C8249B
            D4D325B2BCB704F02825B2B4B37BFE3413B95E5980EF4015A69FDEAAC056966F
            7A7625B2ACB353115A697D68115669B3D6802A4F371D69814E6969EE26CA934B
            EB4C4539A5C7D68115667FE11F8D3115A57DC700F029015A57DC703B5032195F
            3C0A008246C5032176EDDCD032191BB52F3190B9DC7D851B2B01116C9321E828
            7D808B3D5DA87D804F3CFF00768E5023A49D80553839AA6AE04C7E65C8A95A30
            043915603D0E46296CC5B31C0E0E6989E8C981DCB91D4501B32489F07D8D0493
            29C1CD004F1BF7A009E27A00B3149EF4016A196802DC32F627E94016E19BBF7A
            00B50CDC67B503B96E19B1DE82932DC33FBD2B0CB50CDEF52D016A19BD0D202C
            C537BD00588A6F7A0A4CB314F8EF4AC516229FDE9016239BD4FE34809E3B8F7F
            C691499325C03C9FCE82AE4C93FBD034C9927A0ABA254B93D334AC3254BB3DCD
            2B01225DE3A1C52B3024179C75A561DC78BBFF0039A02EC70BA1FE4D03E60FB5
            7A501CC1F6A07FFD740730D375EB40730D377CF5140AE31AEB3C649F6A2C1723
            6BAC9C034EC2227BA3EBFAD3B0113DCE3BD3B0AE88A4B827BD1617310BCE3AE6
            992D904972281364124FCF26825B20926ED408AF2CFEF4C0AD24D9EF4EC26CAF
            2CD9EF4D0AE56966A6495A59BB66802B4D3500549A6F7AA02ACD31E6826E539A
            5CF7A760B95669475FCA811526971D7A9A622B4D263E5079EF4015E57C0DA3AD
            202091B68A0640CD819A0642EDEF4079913B9EB479144323606296E043231C6D
            1D4F5A3CC08A53C841DA85DC08E56FE01DBAD0BB80CAA00ACC02AD3BA02485BF
            84D4B5A80EFBADED549E803C1C1CD0D5C371F427716E87C4F838A62DD5893BFD
            6816E89A27C8DA68112C6D838A009E37A00B114940162292802D432FBD005A86
            5F7A00B50CDDC7E22802DC3301D0F1405CB50CD8C0CFD282AE5A867C75349AB8
            EE5A8A6CD4B196629BDE9016229F1DE802C473FBD034CB11CDEF4157278EE3DE
            95864F1DC03DE901324F8E73F952B012A5C1EC6915CC4C973EF40EE4A9703B1A
            0772459F3FC540F998F1390720D03E61C2E3DFF5A07CC870B86F5A2C3BA145CF
            6DD45805FB51FEF52B200FB567F8A8B0086E0FF7A8B0AE869B8F56A2C17434CF
            918EB4C398634E7D681730C6B81EB4137227B8C0CF4A057227B8CF4A05721926
            CF5340AEC8649F14088649FD4D302BC93E7BD3B0104B3FBD3B0AE57926F534C9
            6CAF2CDDC9A0457966A00AD2CD8CD302ACD353115659B9EB4584549E6F7A622A
            CB2E79278A0455965FE23F80A6056964C724F26802BC926D193D4D0040CD8CB1
            340EC40CDB8E4D00432BE7814876E844ED9E28F3190BB77A432266EE7B51E404
            25B00B9FC287AE8047BB682E7F0A1F60223CF269EC014B9802A4029A760154ED
            39AA6AE04C7E75C8A95A30043918AB01E87B54BD189E9A8EAA13EE4B1B6F5C1A
            01F71EAC41CF7A04C9D1B70C8A044B1BFF00F5E80278DE80278A4A00B314B401
            66297DE802D4331CF5E6802CC33771D7B8A00B50CDC71D3D2802D453F4E78F5A
            0772CC53E075A4516A29FDE9586588A603A5202C453FBD20278E7A009E39FDE8
            1DC9926C77A0AB9325C7BD2B0C992E33CE695809567F7CFD68B0122DC7A9A560
            1EB719E41FC8D2B0EEC916E08FE3FCC7FF00AE81DC7ADC9FF2680B8E1707FBA7
            9F6A0770FB50C75A02E2FDA47F7BF5A039907DABDE80BA13ED1E8A7F2A02E843
            704719C7D680B8C6B9FF006A815C635C1F7FC6815C61B8E3861F85160B9134E0
            73FCE8111BDC7BD0042F71EF4EC04325C1F5A76021927F7A7615C8249FDE9937
            21926F7A0457926C50057926E739A00AF2CFDB34C0AB34E698995669B3C03408
            AD2CDD707EA698AE55965CF7C0A622B4D2F73D3B0A00AD2CBFC4DF80A00AF23F
            576340103316393401048FB8E074A064523E38148642EDF9D1E41E444EDD851E
            632276CF028DB5190B9DC768E94B64046EDBDB68E828D90114AD93B47414D201
            BD38A96EE014806AB6783414D0EA090AB4C09216FE1349A01C7E56DC284C0703
            DC5501203919A4BB0976155B69CD316CEC4C0E46E140B6D07C4F839CF0681132
            B7714012C6E280278DFF00FAF4013C72500588A5F7A00B314BEF4016629BDE80
            2CC5373C706802D4537707EA2802C4537F74FD4503B96629F8E290CB315C0F5A
            43B96239FB6695864F1CFEF4013C73FBD202649FDE802649FDE81DC9127F7A07
            72549FDE81DC916E3DE9586482E334AC03D6E0763FAD1601C2E3FDAFCE8B00E1
            3E7D295AC02FDA3FCE68B00BF681EBFAD2B0086E3DFF005A2C0279DEC298086E
            07A8A2C035AE38EB4580635C0A00635CE7BD3B011B5C7BD1602279FDE9D85722
            79FD0D1615C89E7F7A62B90BCDEF4088649FAF34010493E475A00AF2CE29D80A
            F2CFEF40AE56966278CD3115A59FD0FE34C572B4B36475C0A0456966C8C9E053
            02BCB2F73D3B0A00AD2CBFC4DF80A0081DF3F331A0081DCB9F6F4A00865933F2
            AFE340C85DC28A07A10B377348089DFBF7A3C87E444ED81D7EB46E32291B1F5A
            37D408A46DA36F73D692D7502373B171DCD1BB0231C734360152014010AB7634
            1A12A9C8A086AC2D34EC200707357B81329122D46CC014E0ED35603D5B069313
            1F4D3B86E87C4FB4E0F4A05BE8499C73DA816E4B149D8D022556C5004A8FEFF4
            A009A39280278E5A00B114BEF4016229BDE802CC537BD00588A6E993F8D00598
            A7CF53CF634016239FD4E0FAD00588E7ECDC7BD03B9623B823A9A434CB11DC7B
            D21DC9927F7A2C3278E7EF9A404893E073480952E3DE80255B8F7A009167F7A0
            771EB3D03B8F13FBD0171C2723A503B8E171EF4AC0987DA3DE9D87717CFF007A
            42B87DA3DFF5A2C1710DC0FEF5160B89F68F734582E34DC0F5FD68B05C634FDE
            98AE31A7F7A02E46D3FBD02B91B4FEF4088DEE3DE80216B8A008A49CFAD30209
            27C77A2C04124F45845796E3D0D315CAF2CFEA6815CAF2CDFDE3F414C457966E
            EC7E829815E59BBB7E02802BCB2F763F414015E597F89BF2A0081DF3F331A008
            249379F6A00865931F2A9FAD0044CC1464D0321772C7268191BB8A432166C726
            8F2191B3639A37D0088B63E73F8527AE80479CE5DA87D80898976CD3D90086A3
            700E9C9A006EF1415CAC8D971C8A069DC746FF00FD7A01AB925040554580E8DF
            6B7B53680918646E1529D80556C8AB01E8D9E0D4ECC5B6A3AA81AEA89227FE13
            40B71E3838FCA816FA934726460D022456C706802647F7A009639280278E4F7A
            009E397DE80278E6F7A00B11CDEF4016229FDE802C453F1D723D2802C453FA1C
            8F4A009E29FF00BA7F0A009E3B81D8E3D8D03B93C7718EA690EE4C93FBD21DC9
            92E3A7345864A93FBE2901224FC601A009167A403C5C03C5003C5C7BD00384FE
            F400EF3FDE8017ED03D7F5A02E1F681EBFAD0170FB40F5FD680B89E7FA1A0043
            3D0171A67F7A00634FDF3400C6B81D473C50046D71934011BCE7B9A008DE71EB
            4C089EE3DE8B0104971DB34C572192E3D4E2815C8249FBE71F5A09B903CE4FDD
            FCCD3B010493FF00779F7A6057927F4393EB4015E49BD0E4D004124B8E872680
            2BC92E39CF34010C927F131A0085E42E7DA8021925C7CABF9D0044CC1464D032
            277DE681913BFBD0044EDFC4696C32366EE68F219131DC79E8293D344044C4C8
            D8EC29EC8064AF93B47414920194360152031DFF002A0B4AC33CCF6A062AB061
            410D584FB8D4149DC911B231409A1D4121569DC09217FE13F854B5601C46D391
            4D301C0E7915403D4E454AD3416C2D509E9A92C6E1C6D34079A1E09071FAD022
            58E4C8C1A0448AD8E0D004A8FEFF0043401323D004A927BD004F1CBEF4013C73
            7BD004F1CDEF4016239BDE80268E7F7A00B09383D680268EE33D79A009E39FFB
            A7F034012A5C0F5C520264B82393F9D1A0EE48973C60352B05C956E282AE4897
            39EF405C905C67AF340C70B9C77A5601FF00681D68017ED1EFFAD166028B8F7A
            402F9E7D7F5A003ED071D6801A6E3B6EFCCD3B008D383DFF004A006B5C76DDFA
            D0034DC0E48A2C031AE7DFB5160237B8F7A62B91BDC7BD160B913DC67A1FCA81
            5C85EE0742D40AE44F39EBD0530B90BCE3F879A2C2219271DCE4D3020927FEF1
            FC05004124FEA7F0A008249BDF028020926F4E94010BCB8E050042F205E49A00
            859CB724D004524BFC2BF89A0088B0519340C85DCB9C9A0631DC01407990B377
            3486BCC8D9BB9A36191BB16381FF00EAA3602291B3F22D1B6AC0648C106D5EA7
            AD25AB023A6DD802A006C8D8E3F3A0A8A223973C5056C2EC3413CC86F4E45050
            FE1D6823662231071417B9303919A0CDAB0534EC01D39157B81323075C1FC6A3
            6600328707A5527701C0E3914DAB8120208C8A49F417900241C8A62D896370E3
            07AD02F343D58834012C7203C1A0448AD8E2802547F53F8D004A927A9A009524
            ED4012A4BEF4013C737BD004D1CDEF4013C73FBD004D1CFEF401324FEF401324
            FEB401325C1E80E680254B803A12280255B8C8E79A00912E076623EB480916E1
            BAF0681DC78B9F5CD160B8E5B91D775160B8F5B8F7A43B8BF683EF405C5FB47B
            D171DC51727B9A02E20B8F5343B05C3ED269D90AE35AE0FF00FAE843B8D373FE
            D7E140AE30DC8F5A02E35AE0D017236B81D37502B91B4F9E83F3A2C2237B8F57
            FC050044D3F1C71EE698113CE3D734010C93E7A9FC050042F39EDC50042F37A7
            E74010BCD4010BCBEA680217949EF40113CA0702802266EEC68021924DDC0E94
            011B304E4FE028022672E7268288E47038CD01EA44CDDCD0046CD9E4D2D8A237
            7278146C046ED81B54D0BBB018488D727A9A5BB022392726AB640159B770118E
            05034AE44E493B45058A0051410F5626F140F958DA0A154E0D026AE2B0CFCC28
            1276D0746FFF00D7A06D5C928202A9301558A9C8A6D5C0941122E6A76600A769
            DA6AF701E0906935701FD7914262F260091D298B625470E307AD02F343C12280
            248E4CF068112AB11D2802447A00915FF114012A49DF3F8D004A92D004A92D00
            4A935004C93FBD004C93FBD004A93FBD004C93FBD004A971EF40122CFEF40122
            5C1F5CFD6801EB38F4A00916E7FDBFCE801C2E0FB500384FEABFAD002FDA077C
            D002FDA00E8C68017ED3FED9A003ED20FF0019A004FB40F7A02EC699FF00D9FD
            68010DC1EC00A00635C7AC9F950031AE01F53400C6B83EC280237B807AB13401
            1B5C1EDC50046F3E7BE6802279FDE802279FDE802179BD4D0044F37BD0044F2F
            A50044F27A9A0089E42DD280237902F53CD0044CE58F3400C7902F4E4D0042CC
            49C9A07EA31E4038A0644CDDCD032377CF27A52191B393C0A3602377DA303BD1
            E6C06F0837375A4DDC08998B1C9A695804A96EE01D3934808A47A0B4AC228DA3
            2681377119B340D2B0940C2800A0072376A096808DA72281A771F1B83C502687
            D048552602A39534DAB813101C6454A760114E3E535603D5B149AB86E3FAF228
            4C5E4C3A72298B6254903FCADD680F343871D4D02248E4C1C1A044AADDC1A007
            A3D004A8FE9400F49280254928024497FF00D5401224B4012A4DEF4012A4F401
            2A4FEF4012A4FEF40122DC50048B71EF400F5B8F7A0078B8F7A0072CF400E171
            CF5A005FB47FB5400E17048FBD40079E7D6800F3CFF7A8013ED27FBD400D6B8E
            FBA8010CE2801A6E3D0D0031AE3DE8018D3D0046D3FBD0031A7F7A008DE7F7A0
            089E6F7A008DE6F7A0089A5F7A008DE4F7FC28023797B50046CDEA6802379B3C
            0A008C9EE4D0046F3764FCE81A2324019A07B11BC9D850044CD8E4D0318CDDCD
            2191B31268D808D9F03FCF345BB80D1C7CEC6A5BB811BB973ED5495806D26C02
            A40648F41690C5193B8D026C466CF0281A425030A002800A002801EA770C1A08
            7A3101D870682D3B92A36783410D585A041569DC0746FB4E0F4A4D012B0DC322
            92760115BB1AB01EAD8A4D5C4D5C7F5E450987930A626AC491CB9F95A8168F62
            4C10680DC72395A044AAC185003D5FD6802457F5A007ABFE340122BFA73400F5
            93D3F2A009165FFF00550048B2FA9FCE802459BD4D0048B37BD003D66A009167
            F7A007ACFEF400E59FDE801E2E3DE801C27A005171EF400BE7FA9A003CEF7A00
            3CFC7534009F683EBFAD0021B8F43400867A00699FDE801867A006B4F9EF400C
            69BDE802369BDE8018D29A00634BEF4011B49EFF00950046D27BFE5400C6727B
            E28018D201D28022672D400D7754EB4010BC8CDD4FE140D2B8D2C17A9A07E844
            F216E8680F418CD8A07E488D9B1D690C63377346C046EE00A12EAC0403F89AA5
            BB8114926F381D29A40369B7600A801AED8E2829222FBED40DBB0AC703028125
            71B414140050014005001400A0E0E6813571CE3228253D42363F9505928E79A0
            CC28D802B40248589F94D435601CE31C8A71602A9C8AA01C8D838A4D7513571F
            4277409DD05325AB124527F0B7E1406E484E280DC556C5022656CF06801CAC45
            0048AD8E9400F07B8A007AB67EB400F57EC6801EAE45003D5FD0D003D64E71D2
            80240E719C502B8E1267A1FCE818E129A007ACA7AD00384BEF400E129EA28014
            4A7DE8017CEF7FD2800F37FDAFD2800F37FDAFD280032FBD0034CA7FC9A00699
            71DE8010CA4D0034C847538A0069973EB400D2E71400C693D28018CFEBCD0034
            B13D4D00319FB0A006B1C0C9A0089DCD0033AF26801B249B381D68021249E4D0
            34AE231C73406FA113B96340F77618C703340FC86336393483C88C9EF46C3236
            6EFDA84806A8C9DC7F0A4D80D99CFDD1F8D09011D56C01598013819A0372191B
            B50682A8C2E6821EAC613939A0B0A002800A00FFD9}
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
          StartDay = 7
          TextColor = clBlack
          TodayFormat = '"Today" DDD/mm, YYYY'
          WeekendColor = clRed
          Day = 27
          Month = 5
          Year = 2022
          TabOrder = 1
          OnDaySelect = DBPlannerCalendar1DaySelect
          OnAllDaySelect = DBPlannerCalendar1AllDaySelect
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
          Active = True
          AutoUpdate = True
          DataSource = DataSource2
          StartTimeField = 'STARTTIME'
          EndTimeField = 'ENDTIME'
          SubjectField = 'SUBJECT'
          TMSStyle = 8
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'DBPlanner Grid'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 542
        Height = 484
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Fg'
        TitleFont.Style = []
      end
    end
    object DBMonthView: TTabSheet
      Caption = 'DBMonthView'
      ImageIndex = 3
      object DBPlannerMonthView1: TDBPlannerMonthView
        Left = 0
        Top = 0
        Width = 357
        Height = 484
        Cursor = crDefault
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
        AutoInsDel = True
        Background.Data = {
          FFD8FFE000104A46494600010101012C012C0000FFE1007D4578696600004949
          2A000800000002000E0102004F00000026000000120103000100000001000000
          000000004C6967687420426C7565204465666F637573656420426C7572726564
          204D6F74696F6E204162737472616374204261636B67726F756E642C20576964
          6573637265656E2C20486F72697A6F6E74616CFFE10571687474703A2F2F6E73
          2E61646F62652E636F6D2F7861702F312E302F003C3F787061636B6574206265
          67696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54
          637A6B633964223F3E0A3C783A786D706D65746120786D6C6E733A783D226164
          6F62653A6E733A6D6574612F223E0A093C7264663A52444620786D6C6E733A72
          64663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F3232
          2D7264662D73796E7461782D6E7323223E0A09093C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A70686F746F73686F
          703D22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F70
          2F312E302F2220786D6C6E733A4970746334786D70436F72653D22687474703A
          2F2F697074632E6F72672F7374642F4970746334786D70436F72652F312E302F
          786D6C6E732F22202020786D6C6E733A4765747479496D61676573474946543D
          22687474703A2F2F786D702E6765747479696D616765732E636F6D2F67696674
          2F312E302F2220786D6C6E733A64633D22687474703A2F2F7075726C2E6F7267
          2F64632F656C656D656E74732F312E312F2220786D6C6E733A706C75733D2268
          7474703A2F2F6E732E757365706C75732E6F72672F6C64662F786D702F312E30
          2F222020786D6C6E733A697074634578743D22687474703A2F2F697074632E6F
          72672F7374642F4970746334786D704578742F323030382D30322D32392F2220
          786D6C6E733A786D705269676874733D22687474703A2F2F6E732E61646F6265
          2E636F6D2F7861702F312E302F7269676874732F222070686F746F73686F703A
          4372656469743D22476574747920496D616765732F6953746F636B70686F746F
          22204765747479496D61676573474946543A417373657449443D223133333535
          30343439312220786D705269676874733A57656253746174656D656E743D2268
          747470733A2F2F7777772E6973746F636B70686F746F2E636F6D2F6C6567616C
          2F6C6963656E73652D61677265656D656E743F75746D5F6D656469756D3D6F72
          67616E696326616D703B75746D5F736F757263653D676F6F676C6526616D703B
          75746D5F63616D706169676E3D6970746375726C22203E0A3C64633A63726561
          746F723E3C7264663A5365713E3C7264663A6C693E49726973496D616765733C
          2F7264663A6C693E3C2F7264663A5365713E3C2F64633A63726561746F723E3C
          64633A6465736372697074696F6E3E3C7264663A416C743E3C7264663A6C6920
          786D6C3A6C616E673D22782D64656661756C74223E4C6967687420426C756520
          4465666F637573656420426C7572726564204D6F74696F6E2041627374726163
          74204261636B67726F756E642C205769646573637265656E2C20486F72697A6F
          6E74616C3C2F7264663A6C693E3C2F7264663A416C743E3C2F64633A64657363
          72697074696F6E3E0A3C706C75733A4C6963656E736F723E3C7264663A536571
          3E3C7264663A6C69207264663A7061727365547970653D275265736F75726365
          273E3C706C75733A4C6963656E736F7255524C3E68747470733A2F2F7777772E
          6973746F636B70686F746F2E636F6D2F70686F746F2F6C6963656E73652D676D
          313333353530343439312D3F75746D5F6D656469756D3D6F7267616E69632661
          6D703B75746D5F736F757263653D676F6F676C6526616D703B75746D5F63616D
          706169676E3D6970746375726C3C2F706C75733A4C6963656E736F7255524C3E
          3C2F7264663A6C693E3C2F7264663A5365713E3C2F706C75733A4C6963656E73
          6F723E0A09093C2F7264663A4465736372697074696F6E3E0A093C2F7264663A
          5244463E0A3C2F783A786D706D6574613E0A3C3F787061636B657420656E643D
          2277223F3E0AFFE20C584943435F50524F46494C4500010100000C484C696E6F
          021000006D6E74725247422058595A2007CE0002000900060031000061637370
          4D5346540000000049454320735247420000000000000000000000000000F6D6
          000100000000D32D485020200000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000001163707274
          000001500000003364657363000001840000006C77747074000001F000000014
          626B707400000204000000147258595A00000218000000146758595A0000022C
          000000146258595A0000024000000014646D6E640000025400000070646D6464
          000002C400000088767565640000034C0000008676696577000003D400000024
          6C756D69000003F8000000146D6561730000040C000000247465636800000430
          0000000C725452430000043C0000080C675452430000043C0000080C62545243
          0000043C0000080C7465787400000000436F7079726967687420286329203139
          3938204865776C6574742D5061636B61726420436F6D70616E79000064657363
          0000000000000012735247422049454336313936362D322E3100000000000000
          0000000012735247422049454336313936362D322E3100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000058595A20000000000000F35100010000000116CC58595A20
          0000000000000000000000000000000058595A200000000000006FA2000038F5
          0000039058595A2000000000000062990000B785000018DA58595A2000000000
          000024A000000F840000B6CF6465736300000000000000164945432068747470
          3A2F2F7777772E6965632E636800000000000000000000001649454320687474
          703A2F2F7777772E6965632E6368000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000064657363
          000000000000002E4945432036313936362D322E312044656661756C74205247
          4220636F6C6F7572207370616365202D20735247420000000000000000000000
          2E4945432036313936362D322E312044656661756C742052474220636F6C6F75
          72207370616365202D2073524742000000000000000000000000000000000000
          0000000064657363000000000000002C5265666572656E63652056696577696E
          6720436F6E646974696F6E20696E2049454336313936362D322E310000000000
          0000000000002C5265666572656E63652056696577696E6720436F6E64697469
          6F6E20696E2049454336313936362D322E310000000000000000000000000000
          00000000000000000000000076696577000000000013A4FE00145F2E0010CF14
          0003EDCC0004130B00035C9E0000000158595A2000000000004C095600500000
          00571FE76D656173000000000000000100000000000000000000000000000000
          0000028F00000002736967200000000043525420637572760000000000000400
          00000005000A000F00140019001E00230028002D00320037003B00400045004A
          004F00540059005E00630068006D00720077007C00810086008B00900095009A
          009F00A400A900AE00B200B700BC00C100C600CB00D000D500DB00E000E500EB
          00F000F600FB01010107010D01130119011F0125012B01320138013E0145014C
          0152015901600167016E0175017C0183018B0192019A01A101A901B101B901C1
          01C901D101D901E101E901F201FA0203020C0214021D0226022F02380241024B
          0254025D02670271027A0284028E029802A202AC02B602C102CB02D502E002EB
          02F50300030B03160321032D03380343034F035A03660372037E038A039603A2
          03AE03BA03C703D303E003EC03F9040604130420042D043B0448045504630471
          047E048C049A04A804B604C404D304E104F004FE050D051C052B053A05490558
          056705770586059605A605B505C505D505E505F6060606160627063706480659
          066A067B068C069D06AF06C006D106E306F507070719072B073D074F07610774
          0786079907AC07BF07D207E507F8080B081F08320846085A086E0882089608AA
          08BE08D208E708FB09100925093A094F09640979098F09A409BA09CF09E509FB
          0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B69
          0B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF3
          0D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B
          0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0FEC1009102610431061
          107E109B10B910D710F511131131114F116D118C11AA11C911E8120712261245
          1264128412A312C312E31303132313431363138313A413C513E5140614271449
          146A148B14AD14CE14F01512153415561578159B15BD15E0160316261649166C
          168F16B216D616FA171D17411765178917AE17D217F7181B18401865188A18AF
          18D518FA19201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B14
          1B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D99
          1DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041
          206C209820C420F0211C2148217521A121CE21FB22272255228222AF22DD230A
          23382366239423C223F0241F244D247C24AB24DA250925382568259725C725F7
          26272657268726B726E827182749277A27AB27DC280D283F287128A228D42906
          2938296B299D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C39
          2C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F91
          2FC72FFE3035306C30A430DB3112314A318231BA31F2322A3263329B32D4330D
          3346337F33B833F1342B3465349E34D83513354D358735C235FD3637367236AE
          36E937243760379C37D738143850388C38C839053942397F39BC39F93A363A74
          3AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E60
          3EA03EE03F213F613FA23FE24023406440A640E74129416A41AC41EE42304272
          42B542F7433A437D43C044034447448A44CE45124555459A45DE4622466746AB
          46F04735477B47C04805484B489148D7491D496349A949F04A374A7D4AC44B0C
          4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F93
          4FDD5027507150BB51065150519B51E65231527C52C75313535F53AA53F65442
          548F54DB5528557555C2560F565C56A956F75744579257E0582F587D58CB591A
          596959B85A075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A
          5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261F56249629C62F06343
          639763EB6440649464E9653D659265E7663D669266E8673D679367E9683F6896
          68EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E12
          6E6B6EC46F1E6F786FD1702B708670E0713A719571F0724B72A67301735D73B8
          7414747074CC7528758575E1763E769B76F8775677B37811786E78CC792A7989
          79E77A467AA57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F84
          7FE5804780A8810A816B81CD8230829282F4835783BA841D848084E3854785AB
          860E867286D7873B879F8804886988CE8933899989FE8A648ACA8B308B968BFC
          8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A
          92E3934D93B69420948A94F4955F95C99634969F970A977597E0984C98B89924
          999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFA
          A069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FD
          A76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2D
          AEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58A
          B601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15
          BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CE
          C54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5
          CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CB
          D54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10
          DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584
          E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28
          EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FB
          F78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFF
          FFED009C50686F746F73686F7020332E30003842494D04040000000000801C02
          50000A49726973496D616765731C0278004F4C6967687420426C756520446566
          6F637573656420426C7572726564204D6F74696F6E2041627374726163742042
          61636B67726F756E642C205769646573637265656E2C20486F72697A6F6E7461
          6C1C026E0018476574747920496D616765732F6953746F636B70686F746FFFDB
          0043000201010101010201010102020202020403020202020504040304060506
          060605060606070908060709070606080B08090A0A0A0A0A06080B0C0B0A0C09
          0A0A0AFFDB004301020202020202050303050A0706070A0A0A0A0A0A0A0A0A0A
          0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
          0A0A0A0A0A0A0A0AFFC00011080137022903011100021101031101FFC4001F00
          00010501010101010100000000000000000102030405060708090A0BFFC400B5
          100002010303020403050504040000017D010203000411051221314106135161
          07227114328191A1082342B1C11552D1F02433627282090A161718191A252627
          28292A3435363738393A434445464748494A535455565758595A636465666768
          696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6
          A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1
          E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101
          0101010000000000000102030405060708090A0BFFC400B51100020102040403
          0407050404000102770001020311040521310612415107617113223281081442
          91A1B1C109233352F0156272D10A162434E125F11718191A262728292A353637
          38393A434445464748494A535455565758595A636465666768696A7374757677
          78797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3
          B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8
          E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EE205E7757E8D2
          3F031E396342D8095073F8D1D009A314C0B310E69816E01D2802E403A548176D
          C0E0838A405EB7539FA5005FB753C669022F5BAD05A2FDBAF6A06685BAFB54B0
          2F5B2FBD4968BD0AFB7F9FF2682917ED93A5059A368B50C68D1B64EF8A469134
          6CD31CFA5666A8D1B753E95323489A36B1F150F6354B42FDB2541A2D8BF6EB80
          2A1EE6A9176D92A59A245C857D2A59AAD4B90A70054B358A2D4099F988A83448
          B51A1C7D6A64CD228B1147935268916634A96CA2544CD4969589957B0A4D9A25
          62448FFF00D752324000E948AE50A07642F3EA7F2A07641DFAFE740AC8420118
          3405BB0C68FF001A09688DD31C11915498886442A78E9DBFC2A896AE44EBDC53
          4EC64D104C9DC5588AF22D35A1934569E3C82076AB336559573F8D346724539D
          31915666D6853B84E338F634D6E64CA33A618FBD599CB6295CA75AB464F733E7
          5EA2A96E66D6A67DD270455993285CAE41AD0CD99B749551337A99F749C138AA
          31919D7087A534499F3AF271544C8A372BD6992519D79FC282194275A108A172
          A734D0146E471548928DC2D324A33AD0052B81D7F4A00A7303CD00559C707E99
          A00AF22E588F514FA01048331E7D28EA03378A2CC0A6802AD201D1FAFE356F44
          04B18A009E21D298166114016E05A405C8169017EDD7A647E5FE7DA90176DD7A
          71480BF6EBD38A068BF6EBDE82917ED932452197EDD38029302FDAAF4A92D17A
          051D282917ED93A52659A56A9C0A81ADCD1B64E9C54CB6365B1A768985152691
          2FDAA1CD43DCD52346DD3803159CB73445FB68FA0A96EC8D52D4BF02648A8358
          97A04E071D2A59A45172DE3C9A9358A2E449938C54B668B62DC31E3B74A96EC6
          A9162243F8D666B14598A3C7149BB165844CF02A0B8C49A38FF840FAD4B66891
          32461472295CA4AE3C293D0522ED61EB0FAD03B31C23028B8F945D8BE9407289
          B168B87288611DA81598C6465A05618543504B444F191DB20F6A6992D103A6D3
          8FCAA8992B90C89EDC552763268AD2C78E08E2AC868AF2A7E62A933368AB3478
          38EC6A8CDA2A5C26466AD193D0A53C6391EB4CCA48A37319C74E6AEF73368A37
          09919AA4CCA48A17298356652467DD273F5AD0CA5B99F709D6AE3B19B33AE930
          4D35A19BDCCDB94EA08AD0CA48CEB943E9CD346667DCAE0E71544B28DC2718A6
          4942E17AFB504328DCAE33C50233EE57D0534051B85CF6A64B28DC2FB551251B
          85EB4014AE06013E94014E65C74A00A92AD0056906304FD0D3021230C57F1A00
          6792695D8149BA535B80E403A557502541C668EA0588D79C53116611CD005C80
          5032EC0B5205EB651C52605EB75C9E7BD202FDB2F4A068BF6EBD0D0522FDB2F1
          498CBF6E83A76E952C117ED53BD22D17EDD39E9D282D17ED10669328D3B54F6A
          82A2685AA738A896E6C8D3B64E2A5E88D11A3689D38A8355B9A16E9CD666B134
          2DD2A5B355B17AD63EF52CD522F429D38A8668917608F0054B3548B7047DF150
          6B145A893F4A86CD628B5047FC549BB1ADAC588D0F4EA6B32A28B11C7D87E26A
          5B35489D1028A92D22448C9E4D05A44AA80741F8D2B9561CAB9E833FCA91561C
          B19F51F80A2E3B0BE59EECDFA52D02C063F7FCC50161A623E9F953B8AC34AFE3
          4EE2688DE207914C9688997F84D0434432C7C1C8FAD34C968AF2260906A919CA
          2412C79E08AB8B322AC898FC2A8868AD326474FA55A664D15254F6EBD6A91949
          14A74EA2ACCE48A5731E4671F5AA8B31650993A8AA3392285D47C1E2B43268CF
          B94CA9AA89934675D2739F5AB5B99B33EED3DAACCA4665CA75156B633919D769
          82699899D749D4E2A90146E1783546650B85F9BEBC504B28DC2E466824CFB94F
          6A60519D78A64B285C2F5E2A84CA53AD0228DC2FB500529867340152614015A5
          1F780FAD302193A86F5E28E802520338F2C0554407A53EA04D18E94202784734
          C45A8066802EC03A5032E5BAF15205FB753D3D7FCFF5A405EB75E7A62901A16C
          B4017ADD682D1A16CBC8E690CBD6EBD3F9D4B1A342D947148B2F5B8C734168D1
          B44A96334ED9718A9348A346C939ACCD56E695BAF415323589A56A9ED50F6348
          97ED53BD41AA5A1A102600159B364B52FDB270293358976DD327A541A44BB12F
          6A966A916E15C76A86EC8D522D429920541B245B896A1B2D2B96225E01EE7A54
          9AA4588D028CD4B34489638F3C9A45A260BC7B5265A43D63CFDE1F854DCB4890
          28E98A431C109A07662F947DFF002A2E87CA218C8EF4072B10A91D4504B43590
          37D7D6826C44E841C63FFAF54989A2391030C8AA21A2165C8C5043457963FF00
          EB7B5526415DD7238AA3292D4AD3A77AD37336AE8AB2A704534CCA4549E3E4FB
          D599329DCA67E6AB466F728CE9D4533192285CA60E6B4337B146E92AE3B1948C
          FB84E48C552DCC999B769D6ACC999F74BF29AD0C9EC665DAD544CDEC675DAF7C
          5518BDCCEBA538E9F4AA4233E75038AA337B942E86475EF412CA372BD7F3A092
          85CAFB530285C0EB4C4CA370073834C9285C2D3114AE1680294E3AD005498734
          C0AB275147402071F211E9475023DE69F2819EA72C4D34AC04AA38A101320E68
          5B016211C669925A8070281A2EDB8ED40CBB02D4817ADC639CD2DC0BF6EB8348
          0D0B6028197ADD7A668291A16CA719F6A432FC0BD38A81A342D978A0B2F5B0CF
          20505A346D178A86334EDC73D293D8D6268D9A700D666A8D2B55E6A1EE6AB634
          AD57005448D12D0D0B54E00A966CB72FDBAE48E2B33589A102D4B355B176D901
          1F5A966A8B902F39ACD9AC516E25E9532358A2DC0BC66A5E88D8B31AE70BF9D6
          65C5166250C6A59AA44E8BB8D49A244EAA071F9D265A44B1A7F111FF00D6A966
          89122AE7A522922458C01CD229790F007614AE82C85DADE94733188411D45170
          1A529FA011B27714C96863286183410D113A907F9D5221A209531CD510C8A55D
          C33410D1565501B38EB568CE4AE8AF2AF0455C4C595255C7E154449156E1783E
          D5A2316529D783F9D5232914675C551949146EA3C6455AD8C9942E17E5CD5C4C
          A48CFB95C135465233AED393815A193DCCEB85E08AB464CCCBB5E38AA5B99BD8
          CEBA5E0D598C8CDB95E4F1548933E7519C5510CA3720F23DA821942E07F2A092
          85CAFBD00509C63FCFF9F4AA13285C8F6A64EA51B81DE988A3703AE680294E39
          A00A730A6055947B77A008587CE47AD1D0087CA7F4A7CC067A74AA02641C814B
          A01320EF4C458887CB40BA16E11C81D2802EDB8A0A2EDB8CD4B02FDB28C81FE7
          B52605EB61822901A16C3A0340D17ADC628291A16CBFCE93632FDB8C9045431A
          342DC003A50597AD9738CD0688D3B31C8A8608D1B65152F63689A766A368A834
          89A36A2A1EE6A8D2B65E07159BDCD91A36AA78A966B12FDAAE5AA0D56C5F8070
          08FAD433545E81703A74152CD56E5BB75E066A0D625B8C7B566F7368A2E42BC0
          1532342CC2382DFE7FCF4A866D14598970B52CD113C2BC6691A22645CF6F7352
          5A25519E2A4B489A35C0CD22B71E0773D2A5BB95B8E556233D0522AC90EF2C63
          EF1A07F21A548E8680B262100F18C1A096AC46CBFF00D7AA4EE22375C1CD510D
          11C832338E9FCA9A21A2075E08F4AA4432061D41A666CAD3AE338EDCD522195E
          5154B731654997922B433915675FD6A918C8A730AB4652D8A33AF515665228DD
          2E47E1551327B94265CF00F5AB5B9948CEB91DEACC9EC67DD2FAD5AD8CA466DC
          2F38AD16C64F7336EC7502A96E66CCDB95AB30919B743934D1267DC0E4D590CA
          3703E6A09667DC0E0504142E40A6050B81DBFCFF009E6989942E79CE69A24A37
          03BD31146714014AE07514014E61D698156619045005793EF06A3A0052032D3A
          0AB7B012A7DEA604C9F76825ECCB11F41F5A03A96E01F30FA50172E5B83E940D
          17EDC77A9632F5B835205FB71ED401A16D4017AD8608A0B4685B0E94865FB61D
          39A81A342DFA6314165EB61903341A1A7662B31A346D86294B6358EC69DA2E14
          0A8355B1A3683B5666AB534ADC67150F7355B9A36A2A246B12FDA71CFA543364
          5F8579C541AC4BD12F152CD63B972019C54B358EC5A87B5666F1DCB910FE5512
          DCB5B96611C0E7BD433645951C018A9345B13C6380282E24D1FAFA9A83444B10
          C9A45A260327152CB244193B8F4ED5256C3C0EE68285A000807AD0046EBCFF00
          23400D6E467F3A16843562275ED564BD884FBD3337B10B8C1AB443207186A666
          F52BCCBE94D10CAB20F97AD519496A56B81CD6A64F62A4C38AA89948A738C13E
          C6AD18B28DC0E4D5993D8A3723E5FA669C773196E509C7515666CCEBA5C13F88
          AD0C5EC67DD8E09AB5B1948CDB91826AE3B19C8CDBB1C902A8C9EE66DC8EF5A1
          8C8CDB904E714D1067DC724D5112285D0C722992CA172073F5A08285CAD00509
          FDEA84EE50B8C74A64946E06734C451B81FCE8028DC74A00A730C9A605597FA5
          302BCBF747B50BA8095206620E40AB7B012C7D7F0A604A9C802825EC598874A0
          0B70FDEA01176DC74340FA17ADE93197E0048E2A40BD072C07F9EF480D0B7140
          D17ADC74A0A468DB8E952C65EB6F6F4FEA2A58D1A16C380682CBD6D41A1A7680
          F1C76A8635B9A36D512D8D63B1A96BF70549AC76346D7B7D6A1EE6B1346DFB56
          6F7364695B5433545EB4EDF4A87B1AA2FC032C0FBD41AC4BB17DDA966B12EC23
          F954BD8DA25A87823E9599B44B918EE6A1EE5C772CC20ED5FA66A19B9657EF0A
          92E3B13C7DA93345B1347C281ED52CD113435252DC957B9F6A97B96B72541800
          522FA8EA06140050035FA5004647514132237AB4490B77A6B533229873548CCA
          F37DEAA2195E7393F8D3466CAAFC29AB46532B4FD39AB5B193D8A937423DEAE2
          652295C7F155ADCC5EE53BA1863F8D52D8C9946E071F8D52DCCA5B99F38EB566
          4F733EEBAFE35A193D8CEBBE9551D8C6466DC8E4D69133919D7632C6A96E64F7
          336EFA1FAD68632336E7AE6990675C019E2A899142EBA1A64328DCF5341067DC
          F7A680A171DFFCFAD313285CD344946E3A531146E280295C75A00A535302AC82
          8605793EEE053EA047E67B54819C9F7AAD812C78E698BA932638C5022CC63902
          802DC1D4D008B907DD1F4A03A17ADFAD2651A16D53D00BF6F8CFF9F7A405FB6E
          78A00BD6D4168D0B6EA2A7A0CBF6D9C0FD7F3A97B8D6E68DB720505972DBA0A0
          D0D4B4C6467D2A18D6E68DBF41532D8D63B1A76BF70541AC4D1B5EDF5A87B9AC
          4D1B6EDC566F7364695B54335897AD3B7D2A1EC6A8BF07040F7A835897A2E82A
          59AC4B90E7F4A97B1B44B509048FA5666D12E466A1EE5C772CC3D17E950CDCB2
          BD45496B6278CF4A4CD16C4D17DD1F4A96684D09A9296E4ABCE47B54BDCB44B1
          9CA8348BEA3A8185001400D73C6280233D09A09911BD5A24849F5A666F62294E
          4D52332BCC72D54432BCFD7F1A68CD955FEE9AB32995A7AB5B193D8A937DD273
          DEAE2652295C7F155ADCC5EE52BA3963F8D52D8C994AE0F1F8D52DCCA5B99F3F
          7FC6ACC9EE67DD0E71EF5A18BD8CEBBE956B632919D73DEAE2672336EBA9FAD5
          2DCC9EE66DDF43F5AD0C6466DC9EB4EC419D3F3F95593228DD77FAD066CA175D
          4D0499F73DEA90142E79E31FE79A109946E7A914D6C4F4285C75A62294FDCD00
          519FA9A00A535302ACBD69F40207FBB47DA022D828D7B019C9D6A80963EF40BA
          932F6A01742CC5F785025B7DE5B83A9A011720FBA3E940742F5B5052342DAA7A
          017ADF93FE7DE9740342D8F19A405EB6A0A4685B7AD4945FB7E001FE7AD4B034
          2D4F0050685DB7E80506869DA638FD6A58D1A36DD2A1EC6B1D8D3B43F2F06A0D
          2268DA9E7F1ACDEE6CBA1A56E78150F73589A16A79A896C6B12FDA93D2A59B22
          FC07A1ACCD625E88F18F7A966B1DCB901C62A59AC762D43C62B3368EE5C88FEA
          2A25B9A2DCB309F941F7A966C8B0A7E518A8344588CF1C50CB893467A8F7CD41
          A2258DB06916B52607B8A96527743D5B073D8D496B52407F11EB40EE2E47AD03
          10B81400C6627EB406C3188E83A0A695D999148D5427B11138E4D5233642E79E
          7F1AA443640E72D4CCD95E66E7FA534432AC87E5E98AB3193D4AB39E7AD6866F
          62ACC78AA8994B729CC739F73568C5946E0F26ACC994AEBEEFE26AA262F733E7
          3C5519BDCCFBB6F98FD6B4462F633EECF18156B632919B72793571D8CE5B99B7
          67E6354B7326675D743F5AD0C64665C9E73F4A6B620CF9BB8AB21946E7A1FAD0
          43285C9E4D0499F73DEA90146E7F97FF005E842650B9FBC6A89285C75A04529C
          F068028CFD4D3E80529A981565EB4740207FBB47501954066A75A40491F7A62E
          A4CBD45025D0B317DE5A016C5B83A9A01172DFF879A05BAFEBB17ADA82CBF6E7
          B035005FB723FCFE3480BD6D402342DE82917ED4F4148A2FDB9E3F954B0342D4
          E7148B45DB638E28345B1A56647150C6695B1C9C52DCDA269591E00ACCD2268D
          A93D3F3A87B9AAD8D2B66C8150CD62685AB74350F6358EE5FB66C30A836897E1
          3C63DAA0D22CBD03647D454B365B97206E066A0D625A88F1F8FF009FEB59BDCD
          A25B85B201A991A166139CAD41AC596626C8E6A59AA2785BB522D326438E7D3F
          954B3444CA7B8352592C6E08A452F2240D8A968A141C7DD6C7B1A455FB8E2CE7
          AAD01742127B90280E61A580FBBF9D349B25BB8C63C535D8089DB26A886EE472
          B638FCE9A21B2176C0AA4432063C134CCD95A73C11EBC5522195E5356B730654
          95BE626AC8915673DB3DAAD18C8A531E2A9193294EDC935665228DD3607E1548
          C9EE509CFAD5ADCC999F727BD598CB633EE98649AB5B194B7336E0F5AD23B19C
          B7336EDBAD52DCC9E8675D1C0AB319199747AD5224A139C66A887B942E4E463D
          E821946E4F26824A1738248CD3D40A171FA53E84B650B9AA24A339EF4014673C
          9E680295C1E69814A7EB8A61D0AB2F5A3A0103FDDA3A811EF5F5A3DE033A3A6C
          4491F7A61F689875140BA22C21E41A04CB709F9B140172D8F03EB4022F5BF5E9
          48A45FB6ED498CBF6FD8629302F5B1E99F4A405FB739C1A0A45FB63D3348A2FD
          B9ED52C0D0B56CD22D6C5EB73CF34168D1B36E952CA34AD8818E2A4D22CD1B36
          C1EB599AADCD2B66E71532DCD6268DABE40ACDEC6B1D8D0B56A93545F81B906B
          336897EDDBA1A866912F5B3703DA933645C81BB5666B165B85B3C1A996E6B12C
          C0DC63352CD8B51BE30D5997165989B078352CD513AB60E6A4D132646CF22932
          D32547C719E3B54969922B77148A4C9165EDFCE9169A1E194F7A56430DCBEB47
          2806E145900D67F5A626EC319C9A64B7718CDB7EB4C86C859BDFF1A6896C8657
          C9C5510C8656C7142336CAD2B0CE076AB4449E85695FA9AB8A312ACADC7D4D51
          9C9952E1B83568C65B152E1B009AB467265199BAD5193651BB6E7156B632651B
          86C03CD52DCCA5B19D70DC9AB32919F74DD6B4316F533AE5B839AB5B19B332ED
          BB0AB899B7A19F76D5460CCDB96AA4233E73815466F728CED9FCE821946E0D02
          33EE0F35417B146E0F18A64B285C1E4D324A370401CD0051B83D68028DC1E2A8
          0A9375A0572AC9DA87D4640E7E5A3ED010555D01413AD26264B1F7A3A875261F
          5A64F42C276A06F465A84FCF408B701E3E8680EA5F80F5E68197ADCE7149945F
          B73DFAD4817EDCE0D202FDB9ED40D17ADCF3432D17EDDAA5817ED9B9A92917E0
          238E682D17ED5B06932CD3B66F7A82A2CD0B47E4543DCD91A56ED822A5EC6AB7
          346D1F9C541AC4D0B57C11599AA342DDB8C543DCD532F5B3E454B354F52EC0FF
          00375EB506A997616271FAD4B34896E17A866C9966270083EB506C8B51BF6F5A
          968A5A16227CF1526C9962390118350D16992A3ED348D2E4CAC0F4FC452B1499
          22C98F715362D31EAE1864503B8A18F634877685DE681DD86F6F5A02EC4CE7DE
          825B1A641D8FF853B09B2267CF7FA9A6912D91492761544B644CC1464D043641
          2B9FBDF955244365791B02A8C64EECAD33E4ED15A10DD8AD33FA7D29A465229C
          CD93F4AB326F529DCBF1568C9B29CCC40CD523296C67DC3E58D59948A572FC63
          3548C9B33EE1B835A477326CCEBA6E2A919333EE9B8FAD68672332E9B9CD5C76
          32919D76DD79A664CCEBB6CF53EDFD2AD09E851B93814CCCA139FE5419B285C9
          EB9A680A170783FE7FCF5A62651B96C9A64946E0F7A6228DC9140146E0E68028
          DC1EB5480A731FEB40AC56938E7DA81A2097EE51D4066C5F4A903353EF55B132
          54EB4C3A930E82817464E9CA0340996A23CA9A045B80F514017ADDB241F51414
          5EB66F5340D17ED88E3352C65EB66E3AFF009FF39A902FDB374E6802F5BB74A0
          B4685B374A9632F5BB63148699A10371D69165EB76C6283434AD5FA73C540D1A
          16EFD0E6A246CB634AD9F2A2A4D13342DA4E9599AA66840FD0D43DCD56E685B3
          F4F7A966B12EDB4983506AB62F42FC71F8543358B2EC1203DFAD4B468996A193
          3506D165A85F3C13D6A1AD4D132CC3276348D53B96637EFDC566F42E2EC4F149
          C67BD268D5327470C3AD4149D8915CAD05DC916407BD162948786EFF00A8A562
          931C243FDECFD4521DC5F38FB5161DD01973CF1F9516B0AE34B93EA7EB4582E3
          59FD4D3B12E444F2E7814C9B8C66C726821B219651D49AA4892BC8F939354672
          6413498C9AA48CCAD237E66A8CDB2ACD27FF005AAD2B194995267E3F9D52464D
          94A77C9EB56672653B99300D52326F528CCFC66A8CE4CA175276AD0C9942E9F8
          AB5B18CB633AE5F24D5C4CE467DDBF27DAA8CA5B99D72FD79AD0CE4CCDB96C9C
          9FA9A68C8CFB96E71C7154899142E9A990CA370D8CE3E941050B96A680A370C3
          D6992EE50B83542652B83408A1393CE680295C1A60519CD3132A4BEBED40752B
          487AD03443276A5DC06D203313EF55BD84F6244FBD4C1EE4CBF7681772788E50
          5022CC47E4068117203F37D45005CB76E01A065EB76C1A0A2FDBB7AD4B197ED9
          BB67FCFF009352C0BD6CDED4017EDDA82917ADDF1839E94145F81AA1817ED5B8
          03348B45DB76038A0D11A36927BD4B1F534AD9F352CD62CD0B393B5666A99A16
          EFDC54C91A26685B499159C91AA65FB693B549AA65E824E84543354CBD6F2820
          1F4A868D13D4B903E38CF1DAA4D532DC5254B469165A8A4F7A968D532CC6FDFB
          8ACF6358B2C452E69357342747EE2A0A8CAC4E926693468992A4BD9AA5A293B1
          206EE0D22D31C246140C709BD4FE740EEC5F380EE28B20E6606503B83F850176
          34CA4D021A589EA6815D0C6902F43412DDC85E4F53FF00D7AA4896C85E4CF27B
          74AA21C886493B9AA48CF72BC9264E4D5132657964AA8A326CAB3483BF6AA326
          CA7712D5A466D95267E3AD5193651B99371C5590DD8A571262AA262D942E1F24
          F35466D942EA4CE4D6864D99F70FDF356B6326675D49C75EB54B7336CCFBA7F9
          48AB3193336E5F24D5224A13B679AA21EE51B86E79FA9A086519DA824A170D83
          54051B93DA9A24A370D4C928DC36074E94014676007140146E0D30294E7AD311
          5663408AD21EBEE684510BF5A5D004A40658E0D6827B12AFDE14BA5C1EC4C9F7
          698BA934272B8F7A05D0B101F971EF408B7037DD34017203D45005EB76C9EBD4
          5052FEBFAF997ED9BFFAF49945EB76CF06A7602FC0DEB480BD6ED40D17ADDBB5
          05A2FDBB74A9605EB67C1A92917E06EF9A0B4CBD6B260F2693459A56CFC54171
          65FB693041153256354CD1B793201CD49A265FB59706B3354F52FC1260F5ACDA
          B1AA65EB793A5268D132EDBCB83506A9DCBB0C99E3F2A868D22CB704B9FEB48D
          132D4527419A868D532CC52FBD4B57344C9D24EEBF9541A2916229A935734264
          9054B434EC4AB2F66A45A9122C9FDD6A562EE87898F7153618E1329A2C3BB17C
          D5A2C3E661E6A51615D8D33FA0A2C2BB1AD2B1EA69D857446D28EDD6AAC4B644
          F27726821C8864971D4D52449049267926A896C825979FE54D2336CAD2C99E01
          AB326CAD34CA075AA48CDB29CD264F26A8CDB2A5CCB8154919B7728CCFD4FAD5
          2D4CE4CA5752F6CD6864D942E24C0C66AA28CA4CA171264E2AD2B99B650BA938
          C559936675CC9938AB5B19CBB19F76FE94CC999D72F918CF5AB44BD0A370FEF4
          C8284EDD7F2A08652B97A62285C37534C4CA370DD79AA2594AE1A81146E1B9EF
          40146E1A8028CED54229CC7B5022ACADCE7F1A18CAF276A3B8C858F24D27D008
          EAC0CF1C8CD00483D4525B13F649A33DA987544B01E48CD022C4079228116A03
          F2E3D0D005D81B2C0FA8A00B96EF800FA1A065FB7600E282932F5BB7BD4B197E
          06EF8FD3FCFBD4817AD9FDE802F40D4148BD6EF9E3348A2F40FD0D40D17EDDF2
          282CBB6F26314168D0B4946066A194B4342DDFDE93D4D62CD0B4973C1ACCD132
          FC12E3152D1A26685BCB918A86AE6A9976DE5EC4D41A265D824C8E4D4346A997
          2DE5EC693344CB90CBDC75A8668996A19463AD2344CB31484F53CD43468993C7
          2D4B57344C9D2507BF3EB52D58D14899262BC1348B4EE4C9367BD4D8648B20F5
          C52B587CCC72CADEB48AE643BCE38E940F983CEA5641CC1E77B53B21F308653E
          B413CC35A4F5340B98634B8AA489BDC85E7F4A69242B913BFA9FCA992E44124D
          EF54919B657965EC2A8CDB2BCB28507F5A6919B6549A5CFF004AB21B2B4D2E07
          069A466D94A69771E6ACCDB29DC4DD6AD2326EE519E4EE4D5257336CA1732F7A
          B326CA33C9806B44AC8CDB33EE65E49A695D99B667DC49D7356652667DCBE493
          4D1050B87CE4E6A910F728DCC9D4E7F5A64B651B87C7141051B87A76028DC3F1
          8AA4494AE1A99251B86C0340146E0E09340146E1BDE9814A76F7A622A4CDDE81
          15653D7F2A011039E4FB51D06B62173C51F686328E640672FDDAA0245E949089
          623D298BA134670E2813DC9E33B5C1A045A84FCD8A00B7037CBF434017606E71
          EA2802F5BBE704505265EB77E94145EB67F4A8605EB76C11480BD6EF40D17ADD
          F9A4CB2F40FDA9302EDB4846013525A65E81F9CD05A65EB69318A4D1468DBCB9
          039E6A0A4CBD6F2E0839A992EA6C9DCD1B797201CD49A265DB69B0719ACCD132
          FC12E7A54356354CB96F374A46899722973D0D4356344EC5B866C81CD2344EC5
          A866F7A86AC68996A2981EF4AC5A64F1CBEFF8D4345A64F1CB48D13268E6C71F
          A54B8F62D32459067838A92D32459985034C7ADC0EFC52B22870B81EB45805F3
          C7F7A9728079E3FBD47280D6B81EB4EC85718D39A7B05C63487F88E3DA827988
          DA603A53B325B22926AA48872207973C0A666D904B360707EB54910DDCAB34C5
          BE954436569A5C0CE69A57336CA73CB93806AC86CA93CA071549194994A6973D
          EA8CDB295C4BDB3C77AB4AC672651B89726AD2336CA3732F6CD519B667DC4B9C
          D5A56339333EE65EB4CC4A17327F0D509BB14AE1EA8CCA33BF63DA825946E1FB
          D08451B87CE79AA0651B87AA2594EE1E824A372E7B1A00A370F4C0A570DD79A0
          4CA53BD3115256A3502B486802090F1F5A3A95D489CF38A3A5C06D4819A9D315
          A01221E314BA8BA92C470698BA325079A05E658072030A04588DBA35005B81BE
          6C7AD005C81F807D2802EC0DD467DC5032F40FD0E7A8A0A45E81F352C65E81C1
          15205EB792802EC0FD282D17ADE4E94865D81C763F4A9634CBD6F2E7BD22CB90
          4941699A16B374E7EB50D0CBF6F27A9A4CD62CBF6B363826B37A3344EC5E864C
          8A4D5CD132EDB4FEF599A265D82538CE6A5AB1A265C827EF52D5CD132DC33679
          06A1A344CB50CF9E334996996629BD0F3536B1A26588A719EB8A45A64F1CBF85
          4B45A912A4DDAA4B4C9566F7A0A52448B39F5FCA95915CCC789C772314B947CC
          384A3AE29598F985F350F383F9D1663E610CAB8E9F9D1662E610CC00C600FC7F
          FD5472B13634CFE87F2A7CA172369FD0D3B12E444F37BD325C889E5FEF1A7621
          C88659C0EF8F6AA4886CAD2CD9EA7F0A6436579A603BD34AE436559A6CF02AC8
          6CAB34C077A695CCDB29CF393C66ACCDBB14EE26C0C55A56336CA37137606A92
          B99B76295C4D81C5599B650B89BB66AA2BA90DD9146E65EB54632667DC4BD4E6
          A9224A3349DF35443295C49D4D0436529DF8EBF5A0928DC49EF4C0A570F544B2
          95C3D324A570F8068028CEFD68028DC3F5A6052B87F434C929CCD4015653E940
          6E5790F5A0642E79C51D00858F24D0F6B0C66F6F5A39501413AE2A80913AE293
          13DC7A7DEA61D49C1C8A09E8C9A1394C7A5022785B2B8F4A00B50BF00FA5005C
          81B9C7AD005CB77C60FA706802F5BBE38CF4E94148BD6EFC0C1A068BB6F263BD
          43197A071C629017ADE4A068B903D055CBD0499E2A6C32E5BCB8239A92932F43
          21C75E682D32E5BCD8C10682D1A16D376CD6634EC5D825A4D5CD532FDACE0F19
          A8344CBB0CA477A968D132E5BDC7A9FF00EB549A265C865C7238A8B16996E09F
          D2A5AB9A265A8A6CF39E6A5AB16996229FB1A468996639F3EF52D16A44E93903
          839F6A92D3268EE33D0FE745869922CD8EF8A562F99922CC7AF15361F30E13E3
          AE6958AE61C2707FFD540F998A27C77A03984F387F914073310CFCF1FA502E66
          234C7FFD74EC4B911B4DEADF953B0B988E4B8DBDF14D226F7207B827A71F5A62
          6C8649B1DE821C88259C0AA48CDB2ACB367A9AA25B2BCB3E338354919B6539E7
          CF435443762ACF3002A92336CA57131E7D6A92B90D94A69401935A19B651B89B
          D69A5733B94AE26EF9AB3393285C4DEF4D23328DC499FA55213652B89703AD33
          36EC529DFB50414EE24F7A680A33C9D4D313294EF9EF544B294F27BD02295C39
          E714014AE1FB0A6051B87A6229CEDEF408A7335202B48D4C081CF6A2FD4642ED
          D4D1E432173C6285ABB80DA39981471B5E9A77403D4E0D0F613D878E39A627B5
          C9948DBF4A07F68961386C7AD0413C470D4016A16E76D005A81CE3E94017607E
          71EB40172DE4E01F4E0D032EDBBF38CD032F5BBD26517A0931DEA5A02EC12734
          80BB0494148B96F2E3BD2651760929302EDBCBD013525A65C864C734169972DA
          6C77A4D14685BCC0E39A8293B17209BDEA5A354EE5EB6B8CF07B5496997219B1
          8E6A5A344CB704F81525A65B8A6EE0D4B468996A1B83D33525A6598E753C1352
          D16A44F1CE47439A92D3278EE41EF4AC5A762649F3D79A5629489527C0E1A914
          9922DC1F4FCA90F9870B903B9A2C3B8EFB48EEE3F1A2C3B8A2E17DBF2A560B87
          DA00FE214EC171A6E7B6EA2C857431AE3B004FD4D017431A763FC5F9502E6236
          980E94F521C88A4B803A9A7625B65796E09E869A5625B488249B1C934C96CAF3
          4F54910D95669C9EF54436559A70BDEAD2B19B6539E7EBCD34AE436549A6C753
          56958CDB295C4F93D7E94D2B90F5294F367249AD16867296851B99FAF34D2322
          8DC4D8C8E69A41B14E6900AA336CA5349DFF002A086CA93C98E33408A53C9DF3
          542295C494D08A53BD324A571275C1A00A53BE0530294EFEF4C194A793341253
          99A80D0AB33738A3602BC8D9A3602090F534790C85CF38A3CC642E72D8A36402
          6F5F5A56605271DE9C7701C0E466A80901C8CD244ADAC4911E306986E8910ED2
          0FA500F7B9614F71412588DBA366802D42F83F5A00B703F18CF4E94017209390
          7B1A00BB6F27E940CBD0498FA76A0A45D824F7A96865D824CF15205CB796802E
          C12505265CB7969145C864F7A9680B96F3718A45A65C865E7934169972DEE082
          2A5A28BD04FDC7F3A92948B70CD8EF49AEA6A9DCBD6F739EB505A65B86623906
          93572D32D4371EFF0085416996A29C1EF52D1A26588E723BD49499662B9F539A
          4D5CB4EC4E93293D6A5A65291224CC3A1CD22F98956E7B1FD682AE48B720F20D
          2B0EEC7ADC7FB54AC3E61DF6814583985F3D7D452B30E641F681ED4598730D37
          1EF458398635C0FEF53B0AEC8DEE87634EC2237B863C9E2989B444F377268B12
          E44325C01DEAB948E62BCB71EF9AA25B2B49367A9A69364B6579AE3D0D525633
          6CA935C67BD525721BB15669C0EF5643652B8B8CF7E28B36437729CD367926B4
          B58CE52295C4F93C7E1419B77294F363BFE554912539A4AA25BB94E7973C0341
          0D952693DE824A5712FBD302A4F2115489294F25324A7712500529DFAF34C0A5
          71250052B893B53114A67C9C5022ACAF924D005691BAD005791BBD00885CF38A
          3CC6885DB82D4790C81DB6A93EB46EC08F7B7AD50109E56B35B8021E315A00F4
          3C62975175248CE0D3175251D73EB4074B1342D95C7A50493C2DDA802CC2DC62
          802DC32746A00B703FF0FAF4A00BB049D1BF034017207FE1FCA829176DE5A194
          5E824C8A802E412679CD202E412FBD008B90CB8A0B4CB904B52C65B865E86A46
          997209810282D32D432FBD05A65CB7B8C77A56197609C1EF51B14996E19FDE93
          57344CB905C91C13505A65A8A7CF39A372D32CC571EA6A1AB1699662B9F5A45A
          916239F3D0D4B89499325C11DEA4AE6264BAF53F9D164527D8956E454F295CC4
          82653CE452B31F38E12E3B9A562B9851311D1A81F30BE79FEF50170F3CFF007A
          80E61A66F56340B986B4C3A93F99A7662E618D703B1FCA9F293CC46F73E8714E
          C85764325CD315C8249C9EA6825C8864B803BD528F721B2B4B73EF544B772B4B
          393DEA94486CAD35C638CD510D94E7B807A9A695C87DCA93CFDC9AB33948A771
          3FE5410539E6CF73F855244B6549A5EA4D512DDCA73CDE879A086CA93498C8CD
          0494E7969815269714EC26539E4AA24A73CB8EF408A53C99C914014EE24A6052
          9E4F7A626529DFAF34C45499F03EB408AB33638A432095B1C501B95E46FD2802
          176E3EB47528864393B68E9702173BDF1D851B201309FE4D179015E36DC2A760
          01F2BE2AD6C03D0E0D0F6131E0E0E6989F72643B978FC280D99244D86F63409A
          B32743B5B3408B11B60834016617C1FAD005B81FB7A74A00B9049DFB1EB40172
          0908E33C8E940176090707D6828BB04BEF49A28B90C9EF5205C865EF9A405B86
          5A06996E19714148B90CBE9F954B196A19BBE6A46997219B38E682D32CC32906
          82932DC1718A4D145C82E33DEA069D8B714F45AE68A45A86E4839DD50D58B4CB
          515D03DE914996239FDE95916A44F1DCE3BD4B4D14993C775EF9A45F33264B80
          7BD4F28D3448B3F4C1FD695995763D6E08EA690F9870B9C77FD681DD0FFB51F5
          3F9D01741F69F7A077406EC8EE7F03405EE34DD03DFF003340AF61A6E4F6A02E
          8635C1EE69D85CC46F70077A7664B644F72314D22798824B9F7A62B95E4B827B
          D3489B90493E3BD525621B2B4B73E86992D9566B8F43F8D528F721BB15659F1D
          4D519CA4549EE73C51625BB94E69FDFF0023D6AAC2655965C77AA21BB95669A8
          25B2A4D2E33CF3DE820A93CBEF4C0A934BD79A684CA73CB9EF544DCA9349EF40
          8A73CA4E79A6053B89680294F2D313294F25022A4CE0F1F9D3115657C9CFA500
          5676CE5A90C8246FD2811039ED4CA2276EF4BA0C81DB00B7E546EC089DB627B9
          A37604583E94EE808636DAD4A48091FB1A220381CF22A80901C8CD2425D87C4D
          838A62DD58907071409EAAE4F1B6E5CD022789B2304D005889F34016A193BD00
          5B8241F81A00B90487D791401720947E06802E4129F5A0A45C825A968A2E432E
          39269580B70CB8A405C865F7A06996A19BDE82916E19BDEA58CB314B8EF48699
          6E1B8CF06914996A39BD0D05A65886E08C734AC516E1B9CFF154D87AA2DC5703
          B9C7E348A522C473FBD26932D48B115D1039350D345A762C47740F5340D32749
          FDE95916992ADC11DE9728F98916E7DEA6CCA4C916EBB6EA07763D6E8D1643E6
          145D7B52B20E617ED2BFE451641CC843723B51CA839843754590730D6BA38EB4
          EC85CCC8DAEBFDAA057237B9F4A7662BA227B827BD3E517310C9381CE69D912D
          904975FDDA64DFB15E5B93EB4D264DFB95A5B827A9AB4AC4B915E6B9F7A0C9BB
          9526B827BD3B08AB35C76CFE555613762ACB2FA9A64B6569A63410D9566971DF
          9A092A4D37BD3480A934A3D6989B2ACD2F5E6992D952697BE6988A73CB9E3F51
          40152797DE9814A797AF34C4CA73C9CF06988A9349DFF2A045499C818EE6802B
          4CFF00C2290104AD8E298F72091BB51E6040EDC67D695BA0C8643D851E632272
          18E3B0A3640444EF6DC7A0A1E8804F313FBD52055AD00994EF4A8D98021ED560
          4887B527A313D18E070734C4F464C0E467D280D9D89217C363B1A092746DA680
          2C46FDE802C44F4016A192802DC321E3D45005C8251EBC1A00B704A7A7714017
          2197B834165C826E952D0CB70CBD05202DC32E3BFE5480B70CDEF40D32CC52E3
          BD05DCB714E7153602CC5377CD202CC570475348B4CB314C0F2282932C4739F5
          A0A4CB30DD1E84D4B432CC573E87F3A434CB115C67BFEB48A52274B823806959
          16A489A3BA23BD4F2B2AE4C977EF48ABB255BA1EB40730F5B807BD055C72DC71
          D69590F998E171EF472A0E661F69F7A5CA87CCC0DC1F5A3943984339F5A39439
          8619FDFF005A7642E6635AE00EA698AE46F763B1A09B90C9767D68B05D904973
          93CD57290DA217B823F8A9A4913CE4125C63BD321CAE5796E7D0D3B125696E06
          7AE69D80AD24F9EFF5A7625CBB15A59F1DE99056966E7DFD2825B2B4B377CD02
          2ACD3FBD3B0152697DEAAC0569A5E7AD321956697DE811526941A00A93CBEF4C
          0A73CBEF4C4D94E7947AD311527939C67EB409952590125BB5005691FAB1A045
          766EF40C81DB3C9A4320918F4CD302276EF48A441236064D1BB02191B0B8EE7A
          D1D6E047236D1B07E342D5DC066C6F4A7740454F702485B9DA6A64038FCAD9A6
          980E070734DEA83724A49DC5BA2489F1C1A62DD0F1C71F95027AEA4F1B6E5A04
          4D13F634016227C7140166292802D4325005B865C77E2802DC32F6279ED4016E
          19BBFE6281A762DC33631CD0522E4337AD4B432DC337BD2B016619BD0D202D43
          37BD03B96629B1DE82932D453FBD2686598A6CF7A9B01622988FF3D290D32C47
          3E7A9A0B4C9E39BDE8293278EE3DE8293278EE88EA6A6C0588AEBD0D2B0EE4C9
          75FE4521A91325C67A1A0A526482E0814AC8AE643C5CE78CD2E51F321C2EBFDA
          A3958EE870BBC743FAD2B304C5FB67FB7FAD1663BB10DDB766CD1660D886EB8E
          BF951CAC5718D75EA69F2873218D73E9F851CA85CC863DCFBD3B225C889EE47A
          D325C8864B9F7A09BB2192EBD0D3B08AF25CF7DD4EC04125C13D29D896C8249B
          D4D325B2BCB704F02825B2B4B37BFE3413B95E5980EF4015A69FDEAAC056966F
          7A7625B2ACB353115A697D68115669B3D6802A4F371D69814E6969EE26CA934B
          EB4C4539A5C7D68115667FE11F8D3115A57DC700F029015A57DC703B5032195F
          3C0A008246C5032176EDDCD032191BB52F3190B9DC7D851B2B01116C9321E828
          7D808B3D5DA87D804F3CFF00768E5023A49D80553839AA6AE04C7E65C8A95A30
          043915603D0E46296CC5B31C0E0E6989E8C981DCB91D4501B32489F07D8D0493
          29C1CD004F1BF7A009E27A00B3149EF4016A196802DC32F627E94016E19BBF7A
          00B50CDC67B503B96E19B1DE82932DC33FBD2B0CB50CDEF52D016A19BD0D202C
          C537BD00588A6F7A0A4CB314F8EF4AC516229FDE9016239BD4FE34809E3B8F7F
          C691499325C03C9FCE82AE4C93FBD034C9927A0ABA254B93D334AC3254BB3DCD
          2B01225DE3A1C52B3024179C75A561DC78BBFF0039A02EC70BA1FE4D03E60FB5
          7A501CC1F6A07FFD740730D375EB40730D377CF5140AE31AEB3C649F6A2C1723
          6BAC9C034EC2227BA3EBFAD3B0113DCE3BD3B0AE88A4B827BD1617310BCE3AE6
          992D904972281364124FCF26825B20926ED408AF2CFEF4C0AD24D9EF4EC26CAF
          2CD9EF4D0AE56966A6495A59BB66802B4D3500549A6F7AA02ACD31E6826E539A
          5CF7A760B95669475FCA811526971D7A9A622B4D263E5079EF4015E57C0DA3AD
          202091B68A0640CD819A0642EDEF4079913B9EB479144323606296E043231C6D
          1D4F5A3CC08A53C841DA85DC08E56FE01DBAD0BB80CAA00ACC02AD3BA02485BF
          84D4B5A80EFBADED549E803C1C1CD0D5C371F427716E87C4F838A62DD5893BFD
          6816E89A27C8DA68112C6D838A009E37A00B114940162292802D432FBD005A86
          5F7A00B50CDDC7E22802DC3301D0F1405CB50CD8C0CFD282AE5A867C75349AB8
          EE5A8A6CD4B196629BDE9016229F1DE802C473FBD034CB11CDEF4157278EE3DE
          95864F1DC03DE901324F8E73F952B012A5C1EC6915CC4C973EF40EE4A9703B1A
          0772459F3FC540F998F1390720D03E61C2E3DFF5A07CC870B86F5A2C3BA145CF
          6DD45805FB51FEF52B200FB567F8A8B0086E0FF7A8B0AE869B8F56A2C17434CF
          918EB4C398634E7D681730C6B81EB4137227B8C0CF4A057227B8CF4A05721926
          CF5340AEC8649F14088649FD4D302BC93E7BD3B0104B3FBD3B0AE57926F534C9
          6CAF2CDDC9A0457966A00AD2CD8CD302ACD353115659B9EB4584549E6F7A622A
          CB2E79278A0455965FE23F80A6056964C724F26802BC926D193D4D0040CD8CB1
          340EC40CDB8E4D00432BE7814876E844ED9E28F3190BB77A432266EE7B51E404
          25B00B9FC287AE8047BB682E7F0A1F60223CF269EC014B9802A4029A760154ED
          39AA6AE04C7E75C8A95A30043918AB01E87B54BD189E9A8EAA13EE4B1B6F5C1A
          01F71EAC41CF7A04C9D1B70C8A044B1BFF00F5E80278DE80278A4A00B314B401
          66297DE802D4331CF5E6802CC33771D7B8A00B50CDC71D3D2802D453F4E78F5A
          0772CC53E075A4516A29FDE9586588A603A5202C453FBD20278E7A009E39FDE8
          1DC9926C77A0AB9325C7BD2B0C992E33CE695809567F7CFD68B0122DC7A9A560
          1EB719E41FC8D2B0EEC916E08FE3FCC7FF00AE81DC7ADC9FF2680B8E1707FBA7
          9F6A0770FB50C75A02E2FDA47F7BF5A039907DABDE80BA13ED1E8A7F2A02E843
          704719C7D680B8C6B9FF006A815C635C1F7FC6815C61B8E3861F85160B9134E0
          73FCE8111BDC7BD0042F71EF4EC04325C1F5A76021927F7A7615C8249FDE9937
          21926F7A0457926C50057926E739A00AF2CFDB34C0AB34E698995669B3C03408
          AD2CDD707EA698AE55965CF7C0A622B4D2F73D3B0A00AD2CBFC4DF80A00AF23F
          576340103316393401048FB8E074A064523E38148642EDF9D1E41E444EDD851E
          632276CF028DB5190B9DC768E94B64046EDBDB68E828D90114AD93B47414D201
          BD38A96EE014806AB6783414D0EA090AB4C09216FE1349A01C7E56DC284C0703
          DC5501203919A4BB0976155B69CD316CEC4C0E46E140B6D07C4F839CF0681132
          B7714012C6E280278DFF00FAF4013C72500588A5F7A00B314BEF4016629BDE80
          2CC5373C706802D4537707EA2802C4537F74FD4503B96629F8E290CB315C0F5A
          43B96239FB6695864F1CFEF4013C73FBD202649FDE802649FDE81DC9127F7A07
          72549FDE81DC916E3DE9586482E334AC03D6E0763FAD1601C2E3FDAFCE8B00E1
          3E7D295AC02FDA3FCE68B00BF681EBFAD2B0086E3DFF005A2C0279DEC298086E
          07A8A2C035AE38EB4580635C0A00635CE7BD3B011B5C7BD1602279FDE9D85722
          79FD0D1615C89E7F7A62B90BCDEF4088649FAF34010493E475A00AF2CE29D80A
          F2CFEF40AE56966278CD3115A59FD0FE34C572B4B36475C0A0456966C8C9E053
          02BCB2F73D3B0A00AD2CBFC4DF80A0081DF3F331A0081DCB9F6F4A00865933F2
          AFE340C85DC28A07A10B377348089DFBF7A3C87E444ED81D7EB46E32291B1F5A
          37D408A46DA36F73D692D7502373B171DCD1BB0231C734360152014010AB7634
          1A12A9C8A086AC2D34EC200707357B81329122D46CC014E0ED35603D5B069313
          1F4D3B86E87C4FB4E0F4A05BE8499C73DA816E4B149D8D022556C5004A8FEFF4
          A009A39280278E5A00B114BEF4016229BDE802CC537BD00588A6E993F8D00598
          A7CF53CF634016239FD4E0FAD00588E7ECDC7BD03B9623B823A9A434CB11DC7B
          D21DC9927F7A2C3278E7EF9A404893E073480952E3DE80255B8F7A009167F7A0
          771EB3D03B8F13FBD0171C2723A503B8E171EF4AC0987DA3DE9D87717CFF007A
          42B87DA3DFF5A2C1710DC0FEF5160B89F68F734582E34DC0F5FD68B05C634FDE
          98AE31A7F7A02E46D3FBD02B91B4FEF4088DEE3DE80216B8A008A49CFAD30209
          27C77A2C04124F45845796E3D0D315CAF2CFEA6815CAF2CDFDE3F414C457966E
          EC7E829815E59BBB7E02802BCB2F763F414015E597F89BF2A0081DF3F331A008
          249379F6A00865931F2A9FAD0044CC1464D0321772C7268191BB8A432166C726
          8F2191B3639A37D0088B63E73F8527AE80479CE5DA87D80898976CD3D90086A3
          700E9C9A006EF1415CAC8D971C8A069DC746FF00FD7A01AB925040554580E8DF
          6B7B53680918646E1529D80556C8AB01E8D9E0D4ECC5B6A3AA81AEA89227FE13
          40B71E3838FCA816FA934726460D022456C706802647F7A009639280278E4F7A
          009E397DE80278E6F7A00B11CDEF4016229FDE802C453F1D723D2802C453FA1C
          8F4A009E29FF00BA7F0A009E3B81D8E3D8D03B93C7718EA690EE4C93FBD21DC9
          92E3A7345864A93FBE2901224FC601A009167A403C5C03C5003C5C7BD00384FE
          F400EF3FDE8017ED03D7F5A02E1F681EBFAD0170FB40F5FD680B89E7FA1A0043
          3D0171A67F7A00634FDF3400C6B81D473C50046D71934011BCE7B9A008DE71EB
          4C089EE3DE8B0104971DB34C572192E3D4E2815C8249FBE71F5A09B903CE4FDD
          FCCD3B010493FF00779F7A6057927F4393EB4015E49BD0E4D004124B8E872680
          2BC92E39CF34010C927F131A0085E42E7DA8021925C7CABF9D0044CC1464D032
          277DE681913BFBD0044EDFC4696C32366EE68F219131DC79E8293D344044C4C8
          D8EC29EC8064AF93B47414920194360152031DFF002A0B4AC33CCF6A062AB061
          410D584FB8D4149DC911B231409A1D4121569DC09217FE13F854B5601C46D391
          4D301C0E7915403D4E454AD3416C2D509E9A92C6E1C6D34079A1E09071FAD022
          58E4C8C1A0448AD8E0D004A8FEFF0043401323D004A927BD004F1CBEF4013C73
          7BD004F1CDEF4016239BDE80268E7F7A00B09383D680268EE33D79A009E39FFB
          A7F034012A5C0F5C520264B82393F9D1A0EE48973C60352B05C956E282AE4897
          39EF405C905C67AF340C70B9C77A5601FF00681D68017ED1EFFAD166028B8F7A
          402F9E7D7F5A003ED071D6801A6E3B6EFCCD3B008D383DFF004A006B5C76DDFA
          D0034DC0E48A2C031AE7DFB5160237B8F7A62B91BDC7BD160B913DC67A1FCA81
          5C85EE0742D40AE44F39EBD0530B90BCE3F879A2C2219271DCE4D3020927FEF1
          FC05004124FEA7F0A008249BDF028020926F4E94010BCB8E050042F205E49A00
          859CB724D004524BFC2BF89A0088B0519340C85DCB9C9A0631DC01407990B377
          3486BCC8D9BB9A36191BB16381FF00EAA3602291B3F22D1B6AC0648C106D5EA7
          AD25AB023A6DD802A006C8D8E3F3A0A8A223973C5056C2EC3413CC86F4E45050
          FE1D6823662231071417B9303919A0CDAB0534EC01D39157B81323075C1FC6A3
          6600328707A5527701C0E3914DAB8120208C8A49F417900241C8A62D896370E3
          07AD02F343D58834012C7203C1A0448AD8E2802547F53F8D004A927A9A009524
          ED4012A4BEF4013C737BD004D1CDEF4013C73FBD004D1CFEF401324FEF401324
          FEB401325C1E80E680254B803A12280255B8C8E79A00912E076623EB480916E1
          BAF0681DC78B9F5CD160B8E5B91D775160B8F5B8F7A43B8BF683EF405C5FB47B
          D171DC51727B9A02E20B8F5343B05C3ED269D90AE35AE0FF00FAE843B8D373FE
          D7E140AE30DC8F5A02E35AE0D017236B81D37502B91B4F9E83F3A2C2237B8F57
          FC050044D3F1C71EE698113CE3D734010C93E7A9FC050042F39EDC50042F37A7
          E74010BCD4010BCBEA680217949EF40113CA0702802266EEC68021924DDC0E94
          011B304E4FE028022672E7268288E47038CD01EA44CDDCD0046CD9E4D2D8A237
          7278146C046ED81B54D0BBB018488D727A9A5BB022392726AB640159B770118E
          05034AE44E493B45058A0051410F5626F140F958DA0A154E0D026AE2B0CFCC28
          1276D0746FFF00D7A06D5C928202A9301558A9C8A6D5C0941122E6A76600A769
          DA6AF701E0906935701FD7914262F260091D298B625470E307AD02F343C12280
          248E4CF068112AB11D2802447A00915FF114012A49DF3F8D004A92D004A92D00
          4A935004C93FBD004C93FBD004A93FBD004C93FBD004A971EF40122CFEF40122
          5C1F5CFD6801EB38F4A00916E7FDBFCE801C2E0FB500384FEABFAD002FDA077C
          D002FDA00E8C68017ED3FED9A003ED20FF0019A004FB40F7A02EC699FF00D9FD
          68010DC1EC00A00635C7AC9F950031AE01F53400C6B83EC280237B807AB13401
          1B5C1EDC50046F3E7BE6802279FDE802279FDE802179BD4D0044F37BD0044F2F
          A50044F27A9A0089E42DD280237902F53CD0044CE58F3400C7902F4E4D0042CC
          49C9A07EA31E4038A0644CDDCD032377CF27A52191B393C0A3602377DA303BD1
          E6C06F0837375A4DDC08998B1C9A695804A96EE01D3934808A47A0B4AC228DA3
          2681377119B340D2B0940C2800A0072376A096808DA72281A771F1B83C502687
          D048552602A39534DAB813101C6454A760114E3E535603D5B149AB86E3FAF228
          4C5E4C3A72298B6254903FCADD680F343871D4D02248E4C1C1A044AADDC1A007
          A3D004A8FE9400F49280254928024497FF00D5401224B4012A4DEF4012A4F401
          2A4FEF4012A4FEF40122DC50048B71EF400F5B8F7A0078B8F7A0072CF400E171
          CF5A005FB47FB5400E17048FBD40079E7D6800F3CFF7A8013ED27FBD400D6B8E
          FBA8010CE2801A6E3D0D0031AE3DE8018D3D0046D3FBD0031A7F7A008DE7F7A0
          089E6F7A008DE6F7A0089A5F7A008DE4F7FC28023797B50046CDEA6802379B3C
          0A008C9EE4D0046F3764FCE81A2324019A07B11BC9D850044CD8E4D0318CDDCD
          2191B31268D808D9F03FCF345BB80D1C7CEC6A5BB811BB973ED5495806D26C02
          A40648F41690C5193B8D026C466CF0281A425030A002800A002801EA770C1A08
          7A3101D870682D3B92A36783410D585A041569DC0746FB4E0F4A4D012B0DC322
          92760115BB1AB01EAD8A4D5C4D5C7F5E450987930A626AC491CB9F95A8168F62
          4C10680DC72395A044AAC185003D5FD6802457F5A007ABFE340122BFA73400F5
          93D3F2A009165FFF00550048B2FA9FCE802459BD4D0048B37BD003D66A009167
          F7A007ACFEF400E59FDE801E2E3DE801C27A005171EF400BE7FA9A003CEF7A00
          3CFC7534009F683EBFAD0021B8F43400867A00699FDE801867A006B4F9EF400C
          69BDE802369BDE8018D29A00634BEF4011B49EFF00950046D27BFE5400C6727B
          E28018D201D28022672D400D7754EB4010BC8CDD4FE140D2B8D2C17A9A07E844
          F216E8680F418CD8A07E488D9B1D690C63377346C046EE00A12EAC0403F89AA5
          BB8114926F381D29A40369B7600A801AED8E2829222FBED40DBB0AC703028125
          71B414140050014005001400A0E0E6813571CE3228253D42363F9505928E79A0
          CC28D802B40248589F94D435601CE31C8A71602A9C8AA01C8D838A4D7513571F
          4277409DD05325AB124527F0B7E1406E484E280DC556C5022656CF06801CAC45
          0048AD8E9400F07B8A007AB67EB400F57EC6801EAE45003D5FD0D003D64E71D2
          80240E719C502B8E1267A1FCE818E129A007ACA7AD00384BEF400E129EA28014
          4A7DE8017CEF7FD2800F37FDAFD2800F37FDAFD280032FBD0034CA7FC9A00699
          71DE8010CA4D0034C847538A0069973EB400D2E71400C693D28018CFEBCD0034
          B13D4D00319FB0A006B1C0C9A0089DCD0033AF26801B249B381D68021249E4D0
          34AE231C73406FA113B96340F77618C703340FC86336393483C88C9EF46C3236
          6EFDA84806A8C9DC7F0A4D80D99CFDD1F8D09011D56C01598013819A0372191B
          B50682A8C2E6821EAC613939A0B0A002800A00FFD9}
        BackgroundPosition = bpStretched
        BevelOuter = bvNone
        BorderWidth = 1
        CaptionColor = 14925219
        CaptionColorTo = 14925219
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = 4474440
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Color = clWhite
        Completion.Font.Charset = DEFAULT_CHARSET
        Completion.Font.Color = clWindowText
        Completion.Font.Height = -11
        Completion.Font.Name = 'Arial'
        Completion.Font.Style = []
        DateFormat = 'dd/mm/yyyy'
        DayFont.Charset = DEFAULT_CHARSET
        DayFont.Color = 4474440
        DayFont.Height = -11
        DayFont.Name = 'Tahoma'
        DayFont.Style = []
        DefaultItem.BorderColor = 11250603
        DefaultItem.CaptionBkg = 15917525
        DefaultItem.CaptionBkgTo = 15917525
        DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
        DefaultItem.CaptionFont.Color = clWindowText
        DefaultItem.CaptionFont.Height = -11
        DefaultItem.CaptionFont.Name = 'Tahoma'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.CaptionType = ctText
        DefaultItem.ColorTo = clWhite
        DefaultItem.Cursor = -1
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = clWindowText
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'Tahoma'
        DefaultItem.Font.Style = []
        DefaultItem.ItemBegin = 16
        DefaultItem.ItemEnd = 17
        DefaultItem.ItemPos = 0
        DefaultItem.Name = 'PlannerItem0'
        DefaultItem.SelectColor = 15917525
        DefaultItem.SelectColorTo = 15917525
        DefaultItem.Shadow = False
        DefaultItem.TrackColor = 14925219
        DefaultItem.TrackSelectColor = 14925219
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
        FocusColor = 15917525
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientStartColor = clNone
        HintPrevYear = 'Previous Year'
        HintPrevMonth = 'Previous Month'
        HintNextMonth = 'Next Month'
        HintNextYear = 'Next Year'
        InActiveColor = 15790320
        InversColor = 6710886
        InversBkColor = 15790320
        Items = <>
        LineColor = 14925219
        Line3D = False
        MonthGradientStartColor = clWhite
        MonthGradientEndColor = clWhite
        NameOfDays.Monday = 'Mon'
        NameOfDays.Tuesday = 'Tue'
        NameOfDays.Wednesday = 'Wed'
        NameOfDays.Thursday = 'Thu'
        NameOfDays.Friday = 'Fri'
        NameOfDays.Saturday = 'Sat'
        NameOfDays.Sunday = 'Sun'
        NameOfDays.UseIntlNames = True
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
        SelectColor = 16444643
        SelectFontColor = 3881787
        ShadowColor = clNone
        TextColor = 4474440
        TabOrder = 0
        TodayColor = 16444643
        TodayColorTo = 16444643
        URLGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
          0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
          0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
          88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
          888887F8F8222208888888776888208888888887777778888888}
        WeekFont.Charset = DEFAULT_CHARSET
        WeekFont.Color = clWindowText
        WeekFont.Height = -11
        WeekFont.Name = 'Tahoma'
        WeekFont.Style = []
        WeekName = 'Wk'
        Day = 27
        Month = 5
        Year = 2022
        Version = '3.2.3.0'
        OnItemRightClick = DBPlannerMonthView1ItemRightClick
        DataBinding.StartTimeField = 'STARTTIME'
        DataBinding.EndTimeField = 'ENDTIME'
        DataBinding.KeyField = 'KEYFIELD'
        DataBinding.NotesField = 'NOTES'
        DataBinding.SubjectField = 'SUBJECT'
        DataSource = DataSource2
        OnFieldsToItem = DBPlannerMonthView1FieldsToItem
        OnItemToFields = DBPlannerMonthView1ItemToFields
        TMSStyle = 8
      end
      object pnlCal: TPanel
        Left = 357
        Top = 0
        Width = 185
        Height = 484
        Align = alRight
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        object lblFrom: TLabel
          Left = 6
          Top = 64
          Width = 30
          Height = 14
          Caption = 'From :'
        end
        object lblTo: TLabel
          Left = 10
          Top = 112
          Width = 17
          Height = 14
          Caption = 'To :'
        end
        object DateTimePicker1: TDateTimePicker
          Left = 48
          Top = 56
          Width = 120
          Height = 22
          Date = 44709.000000000000000000
          Time = 0.487126921296294300
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 48
          Top = 104
          Width = 120
          Height = 22
          Date = 44709.000000000000000000
          Time = 0.487126921296294300
          TabOrder = 1
        end
        object btnCreate: TAdvGlowButton
          Left = 56
          Top = 160
          Width = 97
          Height = 25
          Caption = 'Create'
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Rounded = True
          TabOrder = 2
          OnClick = btnCreateClick
          Appearance.BorderColor = 14727579
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.Color = 15653832
          Appearance.ColorTo = 16178633
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15586496
          Appearance.ColorMirrorTo = 16245200
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
          UIStyle = tsOffice2007Luna
        end
      end
    end
    object AdvGrid: TTabSheet
      Caption = 'AdvGrid'
      ImageIndex = 3
      object DBAdvGrid1: TDBAdvGrid
        Left = 0
        Top = 0
        Width = 542
        Height = 484
        Align = alClient
        ColCount = 9
        DrawingStyle = gdsClassic
        FixedColor = clWhite
        RowCount = 2
        FixedRows = 1
        Options = [goFixedVertLine, goVertLine]
        TabOrder = 0
        ActiveRowShow = True
        GridLineColor = 13948116
        GridFixedLineColor = 11250603
        HoverRow = True
        HoverRowColor = clMoneyGreen
        ActiveCellShow = True
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = 4474440
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 11565130
        ActiveCellColorTo = 11565130
        BorderColor = 11250603
        ControlLook.FixedGradientFrom = clWhite
        ControlLook.FixedGradientTo = clWhite
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientHoverMirrorFrom = clWhite
        ControlLook.FixedGradientHoverMirrorTo = clWhite
        ControlLook.FixedGradientHoverBorder = 11645361
        ControlLook.FixedGradientDownFrom = clWhite
        ControlLook.FixedGradientDownTo = clWhite
        ControlLook.FixedGradientDownMirrorFrom = clWhite
        ControlLook.FixedGradientDownMirrorTo = clWhite
        ControlLook.FixedGradientDownBorder = 11250603
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        EnhRowColMove = False
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Larger than'
          'Smaller than'
          'Clear')
        FixedColWidth = 20
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = 3881787
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HTMLSettings.ImageFolder = 'images'
        HTMLSettings.ImageBaseName = 'img'
        Look = glCustom
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.ColorTo = clNone
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SearchFooter.ResultFormat = '(%d of %d)'
        SearchFooter.Visible = True
        SelectionColor = 13744549
        SortSettings.HeaderColor = clWhite
        SortSettings.HeaderColorTo = clWhite
        SortSettings.HeaderMirrorColor = clWhite
        SortSettings.HeaderMirrorColorTo = clWhite
        Version = '2.5.1.11'
        AutoCreateColumns = True
        AutoRemoveColumns = True
        Columns = <
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = 3881787
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 20
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ComboItems.Strings = (
              'gfg'
              'dfg'
              'gd'
              'gd'
              'fgf'
              'g')
            UseComboObjectValue = True
            EditLength = 100
            FieldName = 'SUBJECT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = 3881787
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'NOTES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Fg'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Fg'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Fg'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'CAPTION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Fg'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Fg'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Fg'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'STARTTIME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Fg'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Fg'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Fg'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'ENDTIME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Fg'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Fg'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Fg'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ComboItems.Strings = (
              'op'
              'uoi')
            FieldName = 'COLOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Fg'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Fg'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Fg'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            DataImageField = True
            FieldName = 'Flag'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Fg'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Fg'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Fg'
            PrintFont.Style = []
            Width = 64
          end
          item
            Borders = []
            BorderPen.Color = clSilver
            ButtonHeight = 18
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            FieldName = 'KEYFIELD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Fg'
            Font.Style = []
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Fg'
            HeaderFont.Style = []
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Fg'
            PrintFont.Style = []
            Width = 64
          end>
        DataSource = DataSource2
        InvalidPicture.Data = {
          055449636F6E0000010001002020200000000000A81000001600000028000000
          2000000040000000010020000000000000100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
          6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
          FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
          6A6A6B4000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000006A6A6B22
          7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
          3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
          888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000006A6A6B43838383D8
          B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
          0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
          ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
          00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
          CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
          0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
          4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
          000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
          2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
          0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
          1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
          0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
          13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
          0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
          0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
          0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
          0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
          0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
          0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
          00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
          0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
          0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
          0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
          00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
          0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
          0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
          4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
          000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
          2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
          0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
          EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
          6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
          1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
          0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
          D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
          6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
          0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
          3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
          2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
          6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
          0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
          ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
          0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
          6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
          0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
          C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
          0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
          6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
          3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
          C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
          0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
          6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
          3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
          CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
          0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
          6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
          3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
          D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
          0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
          6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
          3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
          DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
          0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
          6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
          3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
          D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
          0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
          6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
          3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
          5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
          4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
          6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
          5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
          2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
          F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
          6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
          5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
          3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
          CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
          00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
          4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
          4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
          5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
          0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
          4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
          4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
          292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
          0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
          6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
          4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
          3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
          000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
          A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
          4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
          4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
          00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
          D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
          4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
          8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
          0000000000000000000000000000000000000000000000006A6A6B43838383D8
          B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
          5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
          E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000006A6A6B22
          7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
          8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
          888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
          FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
          6A6A6B4000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
          6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
          C000000380000001800000010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000080000001
          80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
          FFC003FF}
        ShowUnicode = False
        ExplicitHeight = 489
        ColWidths = (
          20
          64
          64
          64
          64
          64
          64
          64
          64)
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Adv Web Browser'
      ImageIndex = 4
      object AdvWebBrowser1: TAdvWebBrowser
        Left = 0
        Top = 0
        Width = 542
        Height = 484
        AdaptToStyle = True
        Align = alClient
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        URL = 
          'https://blogs.embarcadero.com/planminder-a-remarkable-project-pl' +
          'anning-tool-shows-delphi-flexibility/'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 5
      object AdvNavBar1: TAdvNavBar
        Left = 0
        Top = 0
        Width = 121
        Height = 509
        Color = clWhite
        ActiveColor = 9758459
        ActiveColorTo = 1414638
        ActiveTabIndex = 0
        BorderColor = 9841920
        CaptionColor = 14059353
        CaptionColorTo = 9648131
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -15
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        CollapsedCaption = 'Collapsed'
        DefaultGradientDirection = gdVertical
        DefaultTextColor = 2303013
        DefaultTabColor = 16572875
        DefaultTabColorTo = 14722429
        DownTabColor = 557032
        DownTabColorTo = 8182519
        DownTabMirrorColor = clNone
        DownTabMirrorColorTo = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverTabColor = 14483455
        HoverTabColorTo = 6013175
        HoverTabMirrorColor = clNone
        HoverTabMirrorColorTo = clNone
        SectionColor = 16440004
        SectionColorTo = 16105376
        SectionFont.Charset = DEFAULT_CHARSET
        SectionFont.Color = clWindowText
        SectionFont.Height = -11
        SectionFont.Name = 'Tahoma'
        SectionFont.Style = []
        ShowHint = True
        SplitterPosition = 2
        SplitterColor = 14059353
        SplitterColorTo = 9841920
        Style = esCustom
        Version = '2.3.0.5'
        object AdvNavBarPanel2: TAdvNavBarPanel
          Left = 1
          Top = 27
          Width = 119
          Height = 367
          Caption = 'AdvNavBarPanel2'
          CaptionStyle = []
          Color = clWhite
          PanelIndex = 1
          Sections = <
            item
              Caption = 'Details'
            end
            item
            end>
          TextColor = 2303013
        end
        object AdvNavBarPanel1: TAdvNavBarPanel
          Left = 1
          Top = 27
          Width = 119
          Height = 367
          Caption = 'AdvNavBarPanel1'
          CaptionStyle = []
          Color = clWhite
          ColorTo = clMoneyGreen
          PanelIndex = 0
          Sections = <
            item
            end
            item
            end>
          TextColor = 2303013
        end
      end
      object AdvPolyMenu1: TAdvPolyMenu
        Left = 368
        Top = 0
        Width = 174
        Height = 484
        HorzScrollBar.Visible = False
        VertScrollBar.Range = 417
        VertScrollBar.ThumbSize = 412
        VertScrollBar.Visible = False
        List.Appearance.Normal.Color = 15653832
        List.Appearance.Normal.ColorTo = 16178633
        List.Appearance.Normal.ColorMirror = 15586496
        List.Appearance.Normal.ColorMirrorTo = 16245200
        List.Appearance.Normal.GradientType = gtVertical
        List.Appearance.Normal.GradientMirrorType = gtVertical
        List.Appearance.Normal.BorderColor = 14727579
        List.Appearance.Normal.Rounding = 2
        List.Appearance.Normal.ShadowOffset = 0
        List.Appearance.Normal.Glow = gmGradient
        List.Appearance.ButtonNormal.Color = 16250613
        List.Appearance.ButtonNormal.ColorTo = clNone
        List.Appearance.ButtonNormal.ColorMirror = clNone
        List.Appearance.ButtonNormal.ColorMirrorTo = clNone
        List.Appearance.ButtonNormal.GradientType = gtVertical
        List.Appearance.ButtonNormal.GradientMirrorType = gtVertical
        List.Appearance.ButtonNormal.BorderColor = clNone
        List.Appearance.ButtonNormal.Rounding = 2
        List.Appearance.ButtonNormal.RoundingType = rtNone
        List.Appearance.ButtonNormal.ShadowOffset = 0
        List.Appearance.ButtonNormal.Glow = gmNone
        List.Appearance.Down.Color = 7778289
        List.Appearance.Down.ColorTo = 4296947
        List.Appearance.Down.ColorMirror = 946929
        List.Appearance.Down.ColorMirrorTo = 5021693
        List.Appearance.Down.GradientType = gtVertical
        List.Appearance.Down.GradientMirrorType = gtVertical
        List.Appearance.Down.BorderColor = 4548219
        List.Appearance.Down.Rounding = 2
        List.Appearance.Down.ShadowOffset = 0
        List.Appearance.Down.Glow = gmGradient
        List.Appearance.ButtonDown.Color = 7778289
        List.Appearance.ButtonDown.ColorTo = 4296947
        List.Appearance.ButtonDown.ColorMirror = 946929
        List.Appearance.ButtonDown.ColorMirrorTo = 5021693
        List.Appearance.ButtonDown.GradientType = gtVertical
        List.Appearance.ButtonDown.GradientMirrorType = gtVertical
        List.Appearance.ButtonDown.BorderColor = 4548219
        List.Appearance.ButtonDown.Rounding = 2
        List.Appearance.ButtonDown.ShadowOffset = 0
        List.Appearance.ButtonDown.Glow = gmGradient
        List.Appearance.Disabled.Color = 15921906
        List.Appearance.Disabled.ColorTo = 11974326
        List.Appearance.Disabled.ColorMirror = clNone
        List.Appearance.Disabled.ColorMirrorTo = clNone
        List.Appearance.Disabled.GradientType = gtVertical
        List.Appearance.Disabled.GradientMirrorType = gtVertical
        List.Appearance.Disabled.BorderColor = 14606046
        List.Appearance.Disabled.Rounding = 2
        List.Appearance.Disabled.ShadowOffset = 0
        List.Appearance.Disabled.Glow = gmGradient
        List.Appearance.ButtonDisabled.Color = 15921906
        List.Appearance.ButtonDisabled.ColorTo = 11974326
        List.Appearance.ButtonDisabled.ColorMirror = clNone
        List.Appearance.ButtonDisabled.ColorMirrorTo = clNone
        List.Appearance.ButtonDisabled.GradientType = gtVertical
        List.Appearance.ButtonDisabled.GradientMirrorType = gtVertical
        List.Appearance.ButtonDisabled.BorderColor = 14606046
        List.Appearance.ButtonDisabled.Rounding = 2
        List.Appearance.ButtonDisabled.ShadowOffset = 0
        List.Appearance.ButtonDisabled.Glow = gmGradient
        List.Appearance.Hovered.Color = 15465983
        List.Appearance.Hovered.ColorTo = 11332863
        List.Appearance.Hovered.ColorMirror = 5888767
        List.Appearance.Hovered.ColorMirrorTo = 10807807
        List.Appearance.Hovered.GradientType = gtVertical
        List.Appearance.Hovered.GradientMirrorType = gtVertical
        List.Appearance.Hovered.BorderColor = 10079963
        List.Appearance.Hovered.Rounding = 2
        List.Appearance.Hovered.ShadowOffset = 0
        List.Appearance.Hovered.Glow = gmGradient
        List.Appearance.ButtonHovered.Color = 15465983
        List.Appearance.ButtonHovered.ColorTo = 11332863
        List.Appearance.ButtonHovered.ColorMirror = 5888767
        List.Appearance.ButtonHovered.ColorMirrorTo = 10807807
        List.Appearance.ButtonHovered.GradientType = gtVertical
        List.Appearance.ButtonHovered.GradientMirrorType = gtVertical
        List.Appearance.ButtonHovered.BorderColor = 10079963
        List.Appearance.ButtonHovered.Rounding = 2
        List.Appearance.ButtonHovered.ShadowOffset = 0
        List.Appearance.ButtonHovered.Glow = gmGradient
        List.Appearance.Selected.Color = 11196927
        List.Appearance.Selected.ColorTo = 7257087
        List.Appearance.Selected.ColorMirror = 4370174
        List.Appearance.Selected.ColorMirrorTo = 8053246
        List.Appearance.Selected.GradientType = gtVertical
        List.Appearance.Selected.GradientMirrorType = gtVertical
        List.Appearance.Selected.BorderColor = 4370174
        List.Appearance.Selected.Rounding = 2
        List.Appearance.Selected.ShadowOffset = 0
        List.Appearance.Selected.Glow = gmGradient
        List.Appearance.ButtonSelected.Color = 11196927
        List.Appearance.ButtonSelected.ColorTo = 7257087
        List.Appearance.ButtonSelected.ColorMirror = 4370174
        List.Appearance.ButtonSelected.ColorMirrorTo = 8053246
        List.Appearance.ButtonSelected.GradientType = gtVertical
        List.Appearance.ButtonSelected.GradientMirrorType = gtVertical
        List.Appearance.ButtonSelected.BorderColor = 4370174
        List.Appearance.ButtonSelected.Rounding = 2
        List.Appearance.ButtonSelected.ShadowOffset = 0
        List.Appearance.ButtonSelected.Glow = gmGradient
        List.Appearance.NormalFont.Charset = DEFAULT_CHARSET
        List.Appearance.NormalFont.Color = clBlack
        List.Appearance.NormalFont.Height = -11
        List.Appearance.NormalFont.Name = 'Tahoma'
        List.Appearance.NormalFont.Style = []
        List.Appearance.DownFont.Charset = DEFAULT_CHARSET
        List.Appearance.DownFont.Color = clBlack
        List.Appearance.DownFont.Height = -11
        List.Appearance.DownFont.Name = 'Tahoma'
        List.Appearance.DownFont.Style = []
        List.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
        List.Appearance.DisabledFont.Color = clGray
        List.Appearance.DisabledFont.Height = -11
        List.Appearance.DisabledFont.Name = 'Tahoma'
        List.Appearance.DisabledFont.Style = []
        List.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
        List.Appearance.HoveredFont.Color = clBlack
        List.Appearance.HoveredFont.Height = -11
        List.Appearance.HoveredFont.Name = 'Tahoma'
        List.Appearance.HoveredFont.Style = []
        List.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
        List.Appearance.SelectedFont.Color = clBlack
        List.Appearance.SelectedFont.Height = -11
        List.Appearance.SelectedFont.Name = 'Tahoma'
        List.Appearance.SelectedFont.Style = []
        Fill.Color = 16765615
        Fill.ColorTo = 16765615
        Fill.ColorMirror = clNone
        Fill.ColorMirrorTo = clNone
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtSolid
        Fill.BorderColor = clNone
        Fill.Rounding = 0
        Fill.ShadowOffset = 0
        Fill.Glow = gmNone
        Align = alRight
        TabOrder = 1
        BevelOuter = bvRaised
        DoubleBuffered = True
        UIStyle = tsOffice2003Blue
        IsMainMenu = True
        TMSStyle = 0
        object DropDownItem1: TDropDownItem
          Tag = 0
          X = 3
          Y = 3
          Width = 167
          Level = 0
          Index = 0
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Country'
          CaptionFontStyle = [fsItalic]
          DescriptionMargin.Top = 0
          DescriptionColor = 4474440
          Image.Data = {
            89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
            DE0000000467414D410000AFC837058AE900000006624B4744000000000000F9
            43BB7F000000097048597300000048000000480046C96B3E0000000976704167
            000000400000004000EAF3F860000015C24944415478DAED9B598C26D995D77F
            E7DE88F8B65CAAB2B22AAB6BC92A57B9F76EBBDBDD9EB1710F3336CCA601DB92
            8141E205E60110F36024101208463C32F2D348E0374042961062F160C178168C
            663C3D5EBBDDAEEEEAA5BACBB565EDB97E6B6C77E1E1467C5F6456569711DDB6
            06FB4AA1B8F1C58D887BCEF99FE59E7B3EF869FB69FB896EF2E39EC07BDDD6BE
            7012E7842C470E2C7ABFF2F9B5771DAF7EDC137E2F9BFDB7ABDC5667B0BD95BF
            74A55CFE27BFF3C771FBB7FFD6C33F410C881679FECCA06BCAEC1FAF6F0D3F3B
            4A6D324ECD4F0E034AD5A39CC43F334CDD0BDBE3F24F7FE737DA83C2B81F9A01
            521DEACFEBF11FFEE7F77456F8BFB63532C960E2FF84D553FCABAF5CDD6FECD4
            F6450DE2757544FCF944867BF2D1B36747B9FB2B77FBC5956FBFB3F3B67CEC0F
            7B7B68F180054C7576352774ABD5EA7DE10B5FF8E5E5E5E5478C31CA7BBFFB31
            C033FBAD797FD7D81FF29907BE679FE7F7FDADBAB64EB9BF98FCEFA792FEEBBF
            FEE2AD95B7F20F7CEE3F89E0F0B3F14A94575AE5E7CE9DFBFD2F7EF18B6F01A6
            468072CECD3DF3CC33BFF1C4E34FFC4AF323DE7BEA97EC9D6C7D3D3B57B3F4DC
            7B8FDDE3EBB1F77B66EFF7A773F2BBCFE11941D9942397BECD9B6B25A79EFFEC
            63479FFCF97FE99DDDF57D803C2FCCD6D6D63AF00E60232ADDF7DE27DEFB288A
            A25D1FDF9701BE1A710F133CDE4B4580CCC6C1F4F7DD443519D178C60354E345
            F0D5F7C50B5EC219A9C7811785BFBEC685FF7E818BC5028F7DF2111101441091
            8A6102E10B9265594250F5A246008032C660ACC17B8FD29A52A230CFFA63B267
            D2352E9BD26B3068C6141A04FB2902C2C49A6377238B5DE366D7880BBFCB6C2E
            E94BE778E7A50D763EF41CFAE0710AD178A51084B976823305A3E188A22830C6
            4C0D61930138E730C622DE33566DFEC7608E91FD21C245998D999D7DF376E3BC
            C70EECB10B0DC457A898F2AEEAFB461FBC089DADDB3C7EFE0D0665C9CDA73FC9
            573B8F810DFE3F12E1859EE3F8F8067951509425D6B97BBCC09401D61AF09EC2
            79364BA60CB81F13B440A2AA4320AECE8912120571753F9EDE13A2EA5A0BA88A
            79CE83F5603C94F5D9857E519DF7BBCE057A17CFE3D62E31E82D127DE867313A
            383407A41EDEEEEF90EC6C521605DE39A421852903442430C058F01E173B1C61
            82B51FA9D46AD667E6589D8712702E9C3337235057EFA8AF55E3BD22BB99EB1B
            28B8A75F7D335110035E0345CE89D7BECEB0BF4DF1F0731C3C7D062390091807
            B983495192A529D65AF67AA27B55C05AC4BBC00C5F4DA09A640D4569CCD8D513
            AB2437458BCCFA5315D8A32AB2DF6F7B9EDB75DDE83B02A33BD72E93BC758E9D
            D2B0F3C4CFB2293D5C3A13B1731E630CC658C0E3BCDBC5847B1150A980730ED9
            03D3FD26C903263AD5FD3DBFD5D2DFFB7C7D8F3DEFF154907730719059C83C3C
            F9CAB7B0776FB2D3EA513EF5B12961537BE32CCE5A9C778171F63E0C98DA0063
            A1E292B03F03684058CB4C9F2335837B737C0D5FE783E4EA730DE9FD18E70936
            217730B181E8DC06DBE0AA17B787DB1C7BFD1B8CC72306C71EC39F7A1469C64D
            CE11620187771EE7FD3D6AB09B01D65503820AD484EA8604B50423D752C1A845
            F2EE7662BFDF7C4584ADD4C6FA8A291E0A0FA983B109E7D2859875EFFBBCC091
            CBE7995B7B9B2B45C9E4F1E79185A5A60BC15B8B38474B31A5E9BE0C10119C77
            186382AE046B396540A4A0A3A0AD427FAF7EEFD5F9FDF47B3AAEF1BBF3C1600E
            0C6C95D037C1CA7BF679B6D194B19C3AFF67D89D2DFA719BF2E98F8789DA99F4
            7196C5D8B3E8D494F81F0A01788FB381012D81B92810AEF758EC9A905A15B4EC
            4684C8BDABAA1ADA9985A10D6E36738111B1820351807CEAC2B8FD9A17585CBF
            CECA3BDF6394A6F49757711F7CAAD28D20EDC81BE623C78144E373C1BA20DCFB
            33400808A8BC807796AE868371D0F1DA90C1CC8DC5953AD4C4DFCF38D6922E5C
            2036AFFC3804544512EE190FBA8A29163C8CED6CAC6BB843071CBFF012C99D35
            86A561F8F033F8A515B487483C2D6FE8AA92AE8291578CAC70A092FEFD558086
            17701E718E6E1226D3B4CE7123E0D17B086E1A3A53113CB63032817053B9C9A8
            7A3EAE10D351D05501BDA583875A70BC0D5753E86AB895C3F52CD8072D70CA8F
            397BE11B14A31143A5997BFE2F70604E630CB471E8B2C019C346A1B189E6A880
            3516632CCE3D48054C3082CA8678BB69E95B95FEEFCA281024945550CE2AAB3D
            AA8EBC8277CDA01A0D54288A24A8577DF42278A407471338D10EDF9958B853C0
            9D1CE61378F8F245B6EE5CE506E09657F8F4CF3D4B7C185EDEF6F822E75651B0
            5E40D48A89B4626209D23706E7DCAEE8FB9E38C0546E101BAC494B414737D480
            999BCA5C906EEA82740A07B9F3E03689DD0F3824436CB48A91D378924A3F6776
            C05447CDB0A3091C49A0AD61520561F3111C4EE0680B865D88F00CCFBD8C3125
            767E81A50F3DC7EAA913141ABA94DC4933E62899EFC6D08EC9B4B06C63E6E7E7
            C8B28CD16884F7EE5E06C0EEB500CED1529EF948821BAC2817825477CA00EF92
            4078E11CD6AED3F66F71A67D85ACBC425777D9295F64D37E9042FF224E961109
            F889045AD56B2D70BA0D1F3F002D3D0B81E734CCEBC67A03B0EBEBA4E7CF51A4
            132608473EFA316C92706368C9B38CC7939C833D2812CD6DD1AC95D0524292B4
            0061341AE3DDFD8C60ED279D43394BBBD2F7DAB87902E1EB45E5A36DC166FF55
            E2689924BE45CBFC2EF3498A770FB1D239CDC40C28DD4D8E4557E99B7FCF8E69
            E3FC22B6F569BC1C9A7A8A5860B5030BD12C40D20A16E3991751028986C99BE7
            296E5E27CB72F24E8FA31F7A160196A5E08968823843AC620EF562E694E2D64E
            58559AB29C7A01773F23689B2AE01C731174A330A3DCC1CD3CF8EA7A41628A4D
            4CFA3607163CF3FE45E238E3CCFC53286246E536EBD90D4A57B2D43AC9A0789B
            FEF825BC01E99E2499FBCB2809449FE9C2521C088F2AA6D7B6A2E9093B65C1D6
            CBDF211F0E98E439BD471E67F5CC297263C8D331BECCF022E838228E12704247
            8396E0DD0203CCAE25F82E15F0950A78E789719CED066B7D33879B5980FA6214
            A451DA09E3EC061F7CE805B2EC0F786CF11403637038866693B5F1058C3580E2
            FB5B7FCA20CF19160629E190BAC4EAB2A7A584C5089E990F12771E7A955BAC55
            6366A3C0AEAD317EF30D8A34656C0C279E7D8EB95E97BC3F249D8CB1C612B712
            5AAD3651A4392CF08CC030F5ECD40C30F6418B215B45518E4482811A98609D17
            6A3D10F05197F995E7D918BFCECDE1D7716681F976C47ABE867582F10EE31DCE
            5B326B98584B5B1DA0977459D47028B2A022E6A32A78AA600F3377394D86549E
            68FCBD9748EFDEA628728A769793CF3D4F690C93D11093E778119224A6D34ED0
            4AB00477BADDF26C98F20181104C55C03B47692D5B2514844870EF9A3DB396F5
            F11BDCEA7F95D24ED8C83272D7462B5DC5016141A525A11B2D92488C35822D2C
            59B949C4845EBCC089564054478778C0546B83442AF75A315C0D868C5EFE0EC5
            784C5A14B4CF3ECAA10F9C613818908E47B43110B5E8763A681DED5A68F9E992
            B8C438BB2BABBC8F1134781BE268259E4484A4B2CA52C132B58EB5BBBFCF3B9B
            FF11C33688C2BB88493120495AB4E30E6DDD25D11D3409D68173251A4D2BE990
            A65BAC6F7D9783C77E01AD7408B0641624D52AA008091627505C788BF1C5B729
            F38CB131AC7CE439A4D562E7D62DF23C4744B1D06ED1EEB4514A4DDD7570BD1E
            535A4C59A940C30BA819FD12A0EFC1798FF78EB811A47474B00722801D33EABF
            CA534B4F13334F56381E9E7F8ED5DED3B465898E1C229605AC8D484BC3A4C829
            CA928EEEF1E1433F43A212DEBCF615D66EFC11A3D12DA286DED7B182AD0CA096
            10348CBFFD4DF2ADAD90D74BDA1CFBC8F30C874346A31185312042BBDBA51DC7
            53C94755A82EBE46C00354C0394792248812DA71CC5C3463639DAB8B81617A8B
            B218D192E3B46511A57BC4CCE144E3CC361906290DD6F9696213E719E4035E5F
            3F477F3260980EF8DA6B5FE2EAAD73FC9D173E0FBA3DCB175487F7106988EEDE
            66EBFB2F51A413B2B220397D96DEC9553637B748F302A514ED768BB94E8776A4
            A6217354A16A5B0203CA32788107A880259208A584B602A58234B40F8188081C
            993B48691DAFDE7E05E32CA5339CBFFD7DE228C1798BAAAC5933E414254C6CC6
            7ABE89CD1C656128F292FE681B6BCD54E25306540B2001CA575F21BB7695A228
            488DE1C0873F420A0C4643AC7574E388F9B9395AAD0425D0DEBB7EF6AE8A03CA
            77F102D4A170D81770D606F8552F6B2645DA511B537886658AAF1827A2C85C89
            33552A2D8E4109DE05754242DFE4863235D8C2521425D2537474309CB6863FB3
            451569CEE09B61E1639C256FB5597CEA6906FD3EB608D2EFB4DBCCCDCDA1B566
            BFE6BDA7AC1060CC0354A06680ADF201B514EA65AD1268C731BDD6126BFD4B33
            B109386B295383F78E23878EF2F0D1C7B8B8FE361B838DE0D29CC7E61693194C
            61C0C152E7084E04D3907A9D2D4281BD7299C9F95731A6A4B0167DE234F1D187
            980C87586B89E398858505DAED36F76BAEB601B50ABC5B1CD044C05E4B29C09D
            E155EEECACF1A927FE06670E3FCE772E7C8DCBB72FA2B4C27B47911681198B42
            EC5A8C072983FE18A514CE384C51E28C0703C7964EF0CB1FF93471DCC6B819F4
            2D808705058397BF45B97E97D23932E7E93CF6043990E7395A6BBADD2E0B0B0B
            28A5A6BB57F76A405081D2940F3682C6189C0B0CA87380752B6CCE60B2413B6E
            71FCE0491E3D7C9AC70E9EE5DFFDAF2F7279FD07586FF1169276C2B58D6BDCDC
            B84947F738DC5EE1C6E6757AAD79CE1C7994CB772E7278E928FFE0D7FE11470F
            AD86BC9F9F020945307EBADF67F48D1731598A71962269B1F0F0A34CD2146F1D
            ADA4C5E2E241E2769712210BEACE9C0A2A1B761BA5A10265A502ECC300A902A1
            2A91689C45F053E86B81E1F82EC7E68E7264E138B6528D478E3FC13FFCCC3FE7
            C6E67576C65B80A2D799E3D6F6552EFCDE9779F685CFF0D4473FC59BD7CE7368
            FE30A757CE727DF31ABDF61CC7964EE0114C65002381F93A0123906D6F31EAF4
            182F2D93DFBA815B5981232B645986C1E02361536FB13ED8626CC6EC9811A59B
            D016B03627B3213E30EB8ED2949465F92E2A80E06C806880AB9D666E6A3538BE
            707297A5B6550EE0D0E251960F1CA5422E1E986C9EA1BFFE25168A98E5032BBC
            B0B01256D91E3E78ECF1B093B4A77A256A64A09D7394070E32FCEC5F67ED9127
            E9FEE06D762677B831B9407FA74F11E5B4E384D69D04236153B77421FF6FBCC5
            54C2343896B797D1455431E05D54C07B87B106B182B57657E6C713CA2AEA4715
            B3C4C6DEFD4E5130DCB843BA759BD1F67A9D5E98DA913AAAAC536A61C9EDF1DE
            B059668CCD903C4BB9FACA156E5CBF4967E9109D0FFC126F9EFBCF4CB6CFE3C4
            D35BEAE192166999E17058E770DE85DCBFAFAE9DC362296D892FC19465580ADF
            CF085AEB288DA9D060A71B227E3797008FC3E1BDC37A1B74BF8AFD3D1E44B1B9
            7D8D5417F42777D81EAF63ADA9A463D01194BEC0BA9289D9A6300306A6CFA018
            322C478CCA21A7DC19ECDD98BC283875EA1417AEBCC9B61A53E4052A11A415E1
            047C19363C9C0BC43BAAB3AFAF2DA529C108A5B1C00376864C69C043690A76B2
            DB0C7D9F71396054EE90D909999D50BA9CDC65586730AE60AB3F60349EE0AAFD
            04E71C453A66F22B67586BBFC34B2FFE56D86811509162797901D16192A682AD
            F3F58689474BC4F246C1C6DA1D9EFBE8733CFDD4937C77ED5B6C673BA085562F
            216E199CF5E1A8A41F0410CEAEAA3370384A5BA09CC6597B4FA54B0301332F00
            B091DEE54BEFFC1BB6CB0DAC0F93640F1AA4B290456E48B32220A83098D22222
            E89E069FE10613B456F4E63B74DA2DB68B7EA8DCF0607DA3D2A382EFC16889C1
            D511511C234AF1D2B99779F5C6397253A0B422EA466492431152F9AE0EB9BD9B
            D60F387C08C2C4519892C8268136E17E08A8E2006B102FA479CAC58DEB8CFD18
            2D1AA50411550545A1F4449ADC6B69C42B742498343013E50393B4A0628D8F05
            83C51B5F25553CA575BB4A722C96A3D9098677479C3879925847FCE1CB7FCC95
            9D6B8886782E462725D6385C39DBC2936ABF2C144C99907CF50E2F9EB22CB0A6
            1D367DEECF0070CE628D455014C6B0391A32722322A5D14AA3B5468BA095C67A
            B76F15088053BEDA5C752825E0C1E229B259D56640C0AC3CA62E97514AC3A6A0
            55C481038B8CD331AFDD798DB44CD15D8D9AD3943AA0CCB812632D4A04A5F4D4
            0E5967A786CE89A734C5342D8E92076784149EB22CE94F460CCC9048695A714C
            3B4E302E7CD0F9DDE65F9ABDBD7B82522DB7ABF14DCFE21BEF71DEB3A497286E
            18960F2EB2B8B0C8F7AFBCC2F5E1756C6C89DA112EF2A469DAA845F2D31DE1DD
            E57355298DF85016632DC63AC4C303B7C73DC1168CD311A37280569A89522855
            AB804235AB24F6DBBDDCEF96ECF197BE516805381C0FF987D059C4C15307D091
            E29B3FF826C37C886E694CDBA0CA2A6DD424748F71F28D9EC7931539B6DAF7BC
            3F03EAE5B037384286724EBA7815242EBE3A44021D55D99912452C115A692289
            D13A22168D561191D244AABAA722B4E8A04E12A1954249A8E2AAF5DFE3695D6C
            33DF9B63717191F59D75FA833E27174ED039DE255A8E70CA629CD97594D604D8
            E3EFF1DB0E8718857561215497D8DDAB029511F48088C3F51D9FE2E7B1BE3628
            7EC6DF3D459052E560644ACE837A7B5A95858AA2886C3BE7E0E9257ABD1EDFFD
            FA77886FC62C2F2EB3D45E221EC7D36C95ABF6FBEBFEB4FCAE56053F636A5446
            8CB3718500413516384D1BE09D73E03D228A8DDB1B705B76D5F74D89BEA742B4
            61CCEE5758B96FE5E8EEC976BA5D1E3A718CA5A583A49309AF7CF715D27E4A52
            266C8EB6EA32C599BE376B0C1BEF9A155ED6F20A9EC6398F2841E9686A78AA6D
            0F7C14454644B9B22C1B139D4DAE49284D621B44ED4BA89F19A79A79F5D6D7DE
            8AD39EEE311C0E49D394CB972EB1B9B9C95CAF8728C198629F77ED66E074BEEC
            8E2D9A8C8A93D8475164A8F22D35025C9EE723F05F565A2E596BF1322BA7F353
            B32D33D7E76B48FBE980DD85D10D43D4EC4FA538136514C74B870F1FFED585C5
            C5F9CB972EF1BBFFEDCB85B1E51B22DCECCDF5EE743ADD4264F73B7721619F6F
            3686348D826FB5DA799E67AF532D6D9ADE2A26A4FD6260FFDCD2FBD0E228567F
            F7EFFDFD7FB1B2B2F29B77EFDE95AB57AE72E9D2A5EDADED8D7F9DE7F91FEDEC
            EC5C74CE95EFD1E7EA355D511D366ADC28AB9B3FCAFF0AB8CF7CF67367C7A3F1
            AF5D1C5C94EDED6DEEDEB94B9E651B5AEBD7E2387E03E8BFC7DFF48D63571CD0
            AC4079DFDBCACA0ABFF5F9BFCD8DEB6B4F2FCCC7C7AFDCDCE0DA70C064321E19
            6BBE262297E3381E9E3E7DDAA469CAAD5BB7DE9779FCD8FE19F2C29347F9CD7F
            F6DB3C716AE1E7CE1E4D92B307738E77279398F4BF1A6BBE2A226B4AA9D218F3
            BE110F7B22C11F65FBCC5FFD553EFE894F1CEFCE2D7C62B07993F1B07FC314E3
            FF324C8B2F8BC80560937B522DEF7D93FFF757FCDFB5D5D555AE5EBDCADFFCA5
            0F2F7CE2D947FFA937D9AF5FBF79F7CFCE5DD9F9CA6BD7C6DF1325B7632DA9F7
            4115AF5DBBF6FF0F035657570944DD95CF7DF2E1B3470EB47EE1F2EDC1E557AE
            8CDFEAA76EFBF0429CB722B185F1EF3BE13F560628252ACD6D6B736B22CEE972
            E950CB6CDCBEED57578FFDC808FF69ABDAFF010B3252C30766A9E3000000227A
            545874536F667477617265000078DA734CC94F4A55F0CC4D4C4F0D4A4D4CA904
            002F9C05D4AE0CA94D0000000049454E44AE426082}
          ButtonState = bsNormal
          ButtonHint = 'Image Text Button Item Hint'
          ButtonType = btExpander
          ButtonLocation = blRight
          ButtonMargin.Left = 0
          ButtonMargin.Top = 0
          ButtonMargin.Right = 0
          ButtonMargin.Bottom = 0
          ButtonImageStretch = False
          ButtonImageMargin.Left = 0
          ButtonImageMargin.Top = 0
          ButtonImageMargin.Right = 0
          ButtonImageMargin.Bottom = 0
          Items.Appearance.Normal.Color = 15653832
          Items.Appearance.Normal.ColorTo = 16178633
          Items.Appearance.Normal.ColorMirror = 15586496
          Items.Appearance.Normal.ColorMirrorTo = 16245200
          Items.Appearance.Normal.GradientType = gtVertical
          Items.Appearance.Normal.GradientMirrorType = gtVertical
          Items.Appearance.Normal.BorderColor = 14727579
          Items.Appearance.Normal.Rounding = 2
          Items.Appearance.Normal.ShadowOffset = 0
          Items.Appearance.Normal.Glow = gmGradient
          Items.Appearance.ButtonNormal.Color = 16250613
          Items.Appearance.ButtonNormal.ColorTo = clNone
          Items.Appearance.ButtonNormal.ColorMirror = clNone
          Items.Appearance.ButtonNormal.ColorMirrorTo = clNone
          Items.Appearance.ButtonNormal.GradientType = gtVertical
          Items.Appearance.ButtonNormal.GradientMirrorType = gtVertical
          Items.Appearance.ButtonNormal.BorderColor = clNone
          Items.Appearance.ButtonNormal.Rounding = 2
          Items.Appearance.ButtonNormal.RoundingType = rtNone
          Items.Appearance.ButtonNormal.ShadowOffset = 0
          Items.Appearance.ButtonNormal.Glow = gmNone
          Items.Appearance.Down.Color = 7778289
          Items.Appearance.Down.ColorTo = 4296947
          Items.Appearance.Down.ColorMirror = 946929
          Items.Appearance.Down.ColorMirrorTo = 5021693
          Items.Appearance.Down.GradientType = gtVertical
          Items.Appearance.Down.GradientMirrorType = gtVertical
          Items.Appearance.Down.BorderColor = 4548219
          Items.Appearance.Down.Rounding = 2
          Items.Appearance.Down.ShadowOffset = 0
          Items.Appearance.Down.Glow = gmGradient
          Items.Appearance.ButtonDown.Color = 7778289
          Items.Appearance.ButtonDown.ColorTo = 4296947
          Items.Appearance.ButtonDown.ColorMirror = 946929
          Items.Appearance.ButtonDown.ColorMirrorTo = 5021693
          Items.Appearance.ButtonDown.GradientType = gtVertical
          Items.Appearance.ButtonDown.GradientMirrorType = gtVertical
          Items.Appearance.ButtonDown.BorderColor = 4548219
          Items.Appearance.ButtonDown.Rounding = 2
          Items.Appearance.ButtonDown.ShadowOffset = 0
          Items.Appearance.ButtonDown.Glow = gmGradient
          Items.Appearance.Disabled.Color = 15921906
          Items.Appearance.Disabled.ColorTo = 11974326
          Items.Appearance.Disabled.ColorMirror = clNone
          Items.Appearance.Disabled.ColorMirrorTo = clNone
          Items.Appearance.Disabled.GradientType = gtVertical
          Items.Appearance.Disabled.GradientMirrorType = gtVertical
          Items.Appearance.Disabled.BorderColor = 14606046
          Items.Appearance.Disabled.Rounding = 2
          Items.Appearance.Disabled.ShadowOffset = 0
          Items.Appearance.Disabled.Glow = gmGradient
          Items.Appearance.ButtonDisabled.Color = 15921906
          Items.Appearance.ButtonDisabled.ColorTo = 11974326
          Items.Appearance.ButtonDisabled.ColorMirror = clNone
          Items.Appearance.ButtonDisabled.ColorMirrorTo = clNone
          Items.Appearance.ButtonDisabled.GradientType = gtVertical
          Items.Appearance.ButtonDisabled.GradientMirrorType = gtVertical
          Items.Appearance.ButtonDisabled.BorderColor = 14606046
          Items.Appearance.ButtonDisabled.Rounding = 2
          Items.Appearance.ButtonDisabled.ShadowOffset = 0
          Items.Appearance.ButtonDisabled.Glow = gmGradient
          Items.Appearance.Hovered.Color = 15465983
          Items.Appearance.Hovered.ColorTo = 11332863
          Items.Appearance.Hovered.ColorMirror = 5888767
          Items.Appearance.Hovered.ColorMirrorTo = 10807807
          Items.Appearance.Hovered.GradientType = gtVertical
          Items.Appearance.Hovered.GradientMirrorType = gtVertical
          Items.Appearance.Hovered.BorderColor = 10079963
          Items.Appearance.Hovered.Rounding = 2
          Items.Appearance.Hovered.ShadowOffset = 0
          Items.Appearance.Hovered.Glow = gmGradient
          Items.Appearance.ButtonHovered.Color = 15465983
          Items.Appearance.ButtonHovered.ColorTo = 11332863
          Items.Appearance.ButtonHovered.ColorMirror = 5888767
          Items.Appearance.ButtonHovered.ColorMirrorTo = 10807807
          Items.Appearance.ButtonHovered.GradientType = gtVertical
          Items.Appearance.ButtonHovered.GradientMirrorType = gtVertical
          Items.Appearance.ButtonHovered.BorderColor = 10079963
          Items.Appearance.ButtonHovered.Rounding = 2
          Items.Appearance.ButtonHovered.ShadowOffset = 0
          Items.Appearance.ButtonHovered.Glow = gmGradient
          Items.Appearance.Selected.Color = 11196927
          Items.Appearance.Selected.ColorTo = 7257087
          Items.Appearance.Selected.ColorMirror = 4370174
          Items.Appearance.Selected.ColorMirrorTo = 8053246
          Items.Appearance.Selected.GradientType = gtVertical
          Items.Appearance.Selected.GradientMirrorType = gtVertical
          Items.Appearance.Selected.BorderColor = 4370174
          Items.Appearance.Selected.Rounding = 2
          Items.Appearance.Selected.ShadowOffset = 0
          Items.Appearance.Selected.Glow = gmGradient
          Items.Appearance.ButtonSelected.Color = 11196927
          Items.Appearance.ButtonSelected.ColorTo = 7257087
          Items.Appearance.ButtonSelected.ColorMirror = 4370174
          Items.Appearance.ButtonSelected.ColorMirrorTo = 8053246
          Items.Appearance.ButtonSelected.GradientType = gtVertical
          Items.Appearance.ButtonSelected.GradientMirrorType = gtVertical
          Items.Appearance.ButtonSelected.BorderColor = 4370174
          Items.Appearance.ButtonSelected.Rounding = 2
          Items.Appearance.ButtonSelected.ShadowOffset = 0
          Items.Appearance.ButtonSelected.Glow = gmGradient
          Items.Appearance.NormalFont.Charset = DEFAULT_CHARSET
          Items.Appearance.NormalFont.Color = clBlack
          Items.Appearance.NormalFont.Height = -11
          Items.Appearance.NormalFont.Name = 'Tahoma'
          Items.Appearance.NormalFont.Style = []
          Items.Appearance.DownFont.Charset = DEFAULT_CHARSET
          Items.Appearance.DownFont.Color = clBlack
          Items.Appearance.DownFont.Height = -11
          Items.Appearance.DownFont.Name = 'Tahoma'
          Items.Appearance.DownFont.Style = []
          Items.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
          Items.Appearance.DisabledFont.Color = clGray
          Items.Appearance.DisabledFont.Height = -11
          Items.Appearance.DisabledFont.Name = 'Tahoma'
          Items.Appearance.DisabledFont.Style = []
          Items.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
          Items.Appearance.HoveredFont.Color = clBlack
          Items.Appearance.HoveredFont.Height = -11
          Items.Appearance.HoveredFont.Name = 'Tahoma'
          Items.Appearance.HoveredFont.Style = []
          Items.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
          Items.Appearance.SelectedFont.Color = clBlack
          Items.Appearance.SelectedFont.Height = -11
          Items.Appearance.SelectedFont.Name = 'Tahoma'
          Items.Appearance.SelectedFont.Style = []
          DropDownAppearance.Fill.Color = 16765615
          DropDownAppearance.Fill.ColorTo = 16765615
          DropDownAppearance.Fill.ColorMirror = clNone
          DropDownAppearance.Fill.ColorMirrorTo = clNone
          DropDownAppearance.Fill.GradientType = gtSolid
          DropDownAppearance.Fill.GradientMirrorType = gtSolid
          DropDownAppearance.Fill.BorderColor = clNone
          DropDownAppearance.Fill.Rounding = 0
          DropDownAppearance.Fill.ShadowOffset = 0
          DropDownAppearance.Fill.Glow = gmNone
          object ButtonBarItem4: TButtonBarItem
            Tag = 0
            X = 3
            Y = 3
            Width = 273
            Level = 0
            Index = 0
            Status.Visible = True
            Status.Caption = 'Item1'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtTexture
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.HatchStyle = HatchStyleHorizontalBrick
            Status.Appearance.Fill.BorderColor = clActiveCaption
            Status.Appearance.Fill.Rounding = 0
            Status.Appearance.Fill.ShadowColor = clYellow
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmRadial
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Pitch = fpVariable
            Status.Appearance.Font.Style = [fsBold]
            Status.Hint = 'Status Hint'
            Hint = 'dv'
            ControlStretched = True
            ShortCutHint = 'fgg'
            BackGroundColor = clMoneyGreen
            Elements = <>
          end
          object ButtonBarItem5: TButtonBarItem
            Tag = 0
            X = 3
            Y = 38
            Width = 273
            Level = 0
            Index = 1
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 0
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Status.Hint = 'Status Hint'
            Elements = <>
          end
          object ButtonBarItem6: TButtonBarItem
            Tag = 0
            X = 3
            Y = 73
            Width = 273
            Level = 0
            Index = 2
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 0
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Status.Hint = 'Status Hint'
            Elements = <>
          end
          object ButtonBarItem7: TButtonBarItem
            Tag = 0
            X = 3
            Y = 108
            Width = 273
            Level = 0
            Index = 3
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 0
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Status.Hint = 'Status Hint'
            Elements = <>
          end
          object ButtonBarItem8: TButtonBarItem
            Tag = 0
            X = 3
            Y = 143
            Width = 273
            Level = 0
            Index = 4
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 0
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Status.Hint = 'Status Hint'
            Elements = <>
          end
          object ButtonBarItem9: TButtonBarItem
            Tag = 0
            X = 3
            Y = 178
            Width = 273
            Level = 0
            Index = 5
            Status.Caption = '0'
            Status.Appearance.Fill.Color = clRed
            Status.Appearance.Fill.ColorMirror = clNone
            Status.Appearance.Fill.ColorMirrorTo = clNone
            Status.Appearance.Fill.GradientType = gtSolid
            Status.Appearance.Fill.GradientMirrorType = gtSolid
            Status.Appearance.Fill.BorderColor = clGray
            Status.Appearance.Fill.Rounding = 0
            Status.Appearance.Fill.ShadowOffset = 0
            Status.Appearance.Fill.Glow = gmNone
            Status.Appearance.Font.Charset = DEFAULT_CHARSET
            Status.Appearance.Font.Color = clWhite
            Status.Appearance.Font.Height = -11
            Status.Appearance.Font.Name = 'Tahoma'
            Status.Appearance.Font.Style = []
            Status.Hint = 'Status Hint'
            Elements = <>
          end
        end
        object ButtonBarItem2: TButtonBarItem
          Tag = 0
          X = 3
          Y = 38
          Width = 167
          Level = 0
          Index = 1
          Status.Visible = True
          Status.Caption = 'Item1'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.PictureAspectMode = pmNormal
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 8
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.ShadowType = stBottom
          Status.Appearance.Fill.Glow = gmGradient
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = [fsBold]
          Status.Appearance.Spacing = 10
          Status.Position = spItemRectangle
          Status.Hint = 'Status Hint'
          Elements = <>
        end
        object ButtonBarItem3: TButtonBarItem
          Tag = 0
          X = 3
          Y = 73
          Width = 167
          Level = 0
          Index = 2
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Elements = <>
        end
        object RadioItem1: TRadioItem
          Tag = 0
          X = 3
          Y = 108
          Width = 167
          Level = 0
          Index = 3
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Graphic Radio Item'
          DescriptionMargin.Top = 0
          Image.Data = {
            424D361000000000000036000000280000002000000020000000010020000000
            00000010000000000000000000000000000000000000FFFFFF0000000000FFFF
            FF0000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
            0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000000000000000
            0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
            0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
            0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
            0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
            0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
            0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
            FF0000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
            0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000000000000000
            0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
            FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
            FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
            FF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
            FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00000000000000000000000000FFFFFF00000000000000000000000000FFFF
            FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF000000
            FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF000000FF000000FF00FFFFFF00FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FF000000FF000000FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000FF000000FF00FFFFFF000000000000000000FF000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            FF000000FF00FFFFFF00FFFFFF00FF0000000000000000000000FF000000FF00
            0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
            FF00FFFFFF00FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
            FF00FFFFFF00FF000000FF000000FF0000000000000000000000FF000000FF00
            0000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FF00
            0000FF000000FF000000FF000000FF0000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF000000FF00
            0000FF000000FF000000FF000000FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
            0000FF000000FF000000FF000000FF0000000000000000000000FF000000FF00
            0000FF000000FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FF000000FF000000FF0000000000000000000000FF000000FFFF
            FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FFFFFF00FFFFFF000000FF000000FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FF0000000000000000000000FFFFFF000000
            FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
            FF000000FF000000FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
            FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FFFFFF000000FF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000}
          GroupIndex = 1
        end
        object CheckItem1: TCheckItem
          Tag = 0
          X = 3
          Y = 143
          Width = 167
          Level = 0
          Index = 4
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Graphic Check Item'
          DescriptionMargin.Top = 0
          Image.Data = {
            424D361000000000000036000000280000002000000020000000010020000000
            00000010000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
            FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
            000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF00000000000000000000000000FFFFFF0000000000FFFFFF000000
            0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
            000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
            0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
            FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF0000000000000000000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000}
        end
        object ButtonItem1: TButtonItem
          Tag = 0
          X = 3
          Y = 178
          Width = 167
          Level = 0
          Index = 5
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Graphic Button Item'
          DescriptionMargin.Top = 0
          Image.Data = {
            424D361000000000000036000000280000002000000020000000010020000000
            00000010000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
            FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
            000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
            FF0000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
            FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000}
          ButtonCaption = 'Button'
        end
        object GroupItem1: TGroupItem
          Tag = 0
          X = 3
          Y = 213
          Height = 200
          Width = 167
          Level = 0
          Index = 6
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          ControlMargin.Top = 34
          ControlStretched = True
          Selectable = False
          Caption = 'Group Item'
          CaptionSize = 10
          Description = 'xsfdsfd'
          DescriptionMargin.Top = 0
          DescriptionColor = 4474440
          LineMargin.Left = 1
          LineMargin.Top = 1
          LineMargin.Right = 1
          LineMargin.Bottom = 1
          Image.Data = {
            89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
            DE0000000467414D410000AFC837058AE900000006624B4744000000000000F9
            43BB7F000000097048597300000048000000480046C96B3E0000000976704167
            000000400000004000EAF3F860000015C24944415478DAED9B598C26D995D77F
            E7DE88F8B65CAAB2B22AAB6BC92A57B9F76EBBDBDD9EB1710F3336CCA601DB92
            8141E205E60110F36024101208463C32F2D348E0374042961062F160C178168C
            663C3D5EBBDDAEEEEAA5BACBB565EDB97E6B6C77E1E1467C5F6456569711DDB6
            06FB4AA1B8F1C58D887BCEF99FE59E7B3EF869FB69FB896EF2E39EC07BDDD6BE
            7012E7842C470E2C7ABFF2F9B5771DAF7EDC137E2F9BFDB7ABDC5667B0BD95BF
            74A55CFE27BFF3C771FBB7FFD6C33F410C881679FECCA06BCAEC1FAF6F0D3F3B
            4A6D324ECD4F0E034AD5A39CC43F334CDD0BDBE3F24F7FE737DA83C2B81F9A01
            521DEACFEBF11FFEE7F77456F8BFB63532C960E2FF84D553FCABAF5CDD6FECD4
            F6450DE2757544FCF944867BF2D1B36747B9FB2B77FBC5956FBFB3F3B67CEC0F
            7B7B68F180054C7576352774ABD5EA7DE10B5FF8E5E5E5E5478C31CA7BBFFB31
            C033FBAD797FD7D81FF29907BE679FE7F7FDADBAB64EB9BF98FCEFA792FEEBBF
            FEE2AD95B7F20F7CEE3F89E0F0B3F14A94575AE5E7CE9DFBFD2F7EF18B6F01A6
            468072CECD3DF3CC33BFF1C4E34FFC4AF323DE7BEA97EC9D6C7D3D3B57B3F4DC
            7B8FDDE3EBB1F77B66EFF7A773F2BBCFE11941D9942397BECD9B6B25A79EFFEC
            63479FFCF97FE99DDDF57D803C2FCCD6D6D63AF00E60232ADDF7DE27DEFB288A
            A25D1FDF9701BE1A710F133CDE4B4580CCC6C1F4F7DD443519D178C60354E345
            F0D5F7C50B5EC219A9C7811785BFBEC685FF7E818BC5028F7DF2111101441091
            8A6102E10B9265594250F5A246008032C660ACC17B8FD29A52A230CFFA63B267
            D2352E9BD26B3068C6141A04FB2902C2C49A6377238B5DE366D7880BBFCB6C2E
            E94BE778E7A50D763EF41CFAE0710AD178A51084B976823305A3E188A22830C6
            4C0D61930138E730C622DE33566DFEC7608E91FD21C245998D999D7DF376E3BC
            C70EECB10B0DC457A898F2AEEAFB461FBC089DADDB3C7EFE0D0665C9CDA73FC9
            573B8F810DFE3F12E1859EE3F8F8067951509425D6B97BBCC09401D61AF09EC2
            79364BA60CB81F13B440A2AA4320AECE8912120571753F9EDE13A2EA5A0BA88A
            79CE83F5603C94F5D9857E519DF7BBCE057A17CFE3D62E31E82D127DE867313A
            383407A41EDEEEEF90EC6C521605DE39A421852903442430C058F01E173B1C61
            82B51FA9D46AD667E6589D8712702E9C3337235057EFA8AF55E3BD22BB99EB1B
            28B8A75F7D335110035E0345CE89D7BECEB0BF4DF1F0731C3C7D062390091807
            B983495192A529D65AF67AA27B55C05AC4BBC00C5F4DA09A640D4569CCD8D513
            AB2437458BCCFA5315D8A32AB2DF6F7B9EDB75DDE83B02A33BD72E93BC758E9D
            D2B0F3C4CFB2293D5C3A13B1731E630CC658C0E3BCDBC5847B1150A980730ED9
            03D3FD26C903263AD5FD3DBFD5D2DFFB7C7D8F3DEFF154907730719059C83C3C
            F9CAB7B0776FB2D3EA513EF5B12961537BE32CCE5A9C778171F63E0C98DA0063
            A1E292B03F03684058CB4C9F2335837B737C0D5FE783E4EA730DE9FD18E70936
            217730B181E8DC06DBE0AA17B787DB1C7BFD1B8CC72306C71EC39F7A1469C64D
            CE11620187771EE7FD3D6AB09B01D65503820AD484EA8604B50423D752C1A845
            F2EE7662BFDF7C4584ADD4C6FA8A291E0A0FA983B109E7D2859875EFFBBCC091
            CBE7995B7B9B2B45C9E4F1E79185A5A60BC15B8B38474B31A5E9BE0C10119C77
            186382AE046B396540A4A0A3A0AD427FAF7EEFD5F9FDF47B3AAEF1BBF3C1600E
            0C6C95D037C1CA7BF679B6D194B19C3AFF67D89D2DFA719BF2E98F8789DA99F4
            7196C5D8B3E8D494F81F0A01788FB381012D81B92810AEF758EC9A905A15B4EC
            4684C8BDABAA1ADA9985A10D6E36738111B1820351807CEAC2B8FD9A17585CBF
            CECA3BDF6394A6F49757711F7CAAD28D20EDC81BE623C78144E373C1BA20DCFB
            33400808A8BC807796AE868371D0F1DA90C1CC8DC5953AD4C4DFCF38D6922E5C
            2036AFFC3804544512EE190FBA8A29163C8CED6CAC6BB843071CBFF012C99D35
            86A561F8F033F8A515B487483C2D6FE8AA92AE8291578CAC70A092FEFD558086
            17701E718E6E1226D3B4CE7123E0D17B086E1A3A53113CB63032817053B9C9A8
            7A3EAE10D351D05501BDA583875A70BC0D5753E86AB895C3F52CD8072D70CA8F
            397BE11B14A31143A5997BFE2F70604E630CB471E8B2C019C346A1B189E6A880
            3516632CCE3D48054C3082CA8678BB69E95B95FEEFCA281024945550CE2AAB3D
            AA8EBC8277CDA01A0D54288A24A8577DF42278A407471338D10EDF9958B853C0
            9D1CE61378F8F245B6EE5CE506E09657F8F4CF3D4B7C185EDEF6F822E75651B0
            5E40D48A89B4626209D23706E7DCAEE8FB9E38C0546E101BAC494B414737D480
            999BCA5C906EEA82740A07B9F3E03689DD0F3824436CB48A91D378924A3F6776
            C05447CDB0A3091C49A0AD61520561F3111C4EE0680B865D88F00CCFBD8C3125
            767E81A50F3DC7EAA913141ABA94DC4933E62899EFC6D08EC9B4B06C63E6E7E7
            C8B28CD16884F7EE5E06C0EEB500CED1529EF948821BAC2817825477CA00EF92
            4078E11CD6AED3F66F71A67D85ACBC425777D9295F64D37E9042FF224E961109
            F889045AD56B2D70BA0D1F3F002D3D0B81E734CCEBC67A03B0EBEBA4E7CF51A4
            132608473EFA316C92706368C9B38CC7939C833D2812CD6DD1AC95D0524292B4
            0061341AE3DDFD8C60ED279D43394BBBD2F7DAB87902E1EB45E5A36DC166FF55
            E2689924BE45CBFC2EF3498A770FB1D239CDC40C28DD4D8E4557E99B7FCF8E69
            E3FC22B6F569BC1C9A7A8A5860B5030BD12C40D20A16E3991751028986C99BE7
            296E5E27CB72F24E8FA31F7A160196A5E08968823843AC620EF562E694E2D64E
            58559AB29C7A01773F23689B2AE01C731174A330A3DCC1CD3CF8EA7A41628A4D
            4CFA3607163CF3FE45E238E3CCFC53286246E536EBD90D4A57B2D43AC9A0789B
            FEF825BC01E99E2499FBCB2809449FE9C2521C088F2AA6D7B6A2E9093B65C1D6
            CBDF211F0E98E439BD471E67F5CC297263C8D331BECCF022E838228E12704247
            8396E0DD0203CCAE25F82E15F0950A78E789719CED066B7D33879B5980FA6214
            A451DA09E3EC061F7CE805B2EC0F786CF11403637038866693B5F1058C3580E2
            FB5B7FCA20CF19160629E190BAC4EAB2A7A584C5089E990F12771E7A955BAC55
            6366A3C0AEAD317EF30D8A34656C0C279E7D8EB95E97BC3F249D8CB1C612B712
            5AAD3651A4392CF08CC030F5ECD40C30F6418B215B45518E4482811A98609D17
            6A3D10F05197F995E7D918BFCECDE1D7716681F976C47ABE867582F10EE31DCE
            5B326B98584B5B1DA0977459D47028B2A022E6A32A78AA600F3377394D86549E
            68FCBD9748EFDEA628728A769793CF3D4F690C93D11093E778119224A6D34ED0
            4AB00477BADDF26C98F20181104C55C03B47692D5B2514844870EF9A3DB396F5
            F11BDCEA7F95D24ED8C83272D7462B5DC5016141A525A11B2D92488C35822D2C
            59B949C4845EBCC089564054478778C0546B83442AF75A315C0D868C5EFE0EC5
            784C5A14B4CF3ECAA10F9C613818908E47B43110B5E8763A681DED5A68F9E992
            B8C438BB2BABBC8F1134781BE268259E4484A4B2CA52C132B58EB5BBBFCF3B9B
            FF11C33688C2BB88493120495AB4E30E6DDD25D11D3409D68173251A4D2BE990
            A65BAC6F7D9783C77E01AD7408B0641624D52AA008091627505C788BF1C5B729
            F38CB131AC7CE439A4D562E7D62DF23C4744B1D06ED1EEB4514A4DDD7570BD1E
            535A4C59A940C30BA819FD12A0EFC1798FF78EB811A47474B00722801D33EABF
            CA534B4F13334F56381E9E7F8ED5DED3B465898E1C229605AC8D484BC3A4C829
            CA928EEEF1E1433F43A212DEBCF615D66EFC11A3D12DA286DED7B182AD0CA096
            10348CBFFD4DF2ADAD90D74BDA1CFBC8F30C874346A31185312042BBDBA51DC7
            53C94755A82EBE46C00354C0394792248812DA71CC5C3463639DAB8B81617A8B
            B218D192E3B46511A57BC4CCE144E3CC361906290DD6F9696213E719E4035E5F
            3F477F3260980EF8DA6B5FE2EAAD73FC9D173E0FBA3DCB175487F7106988EEDE
            66EBFB2F51A413B2B220397D96DEC9553637B748F302A514ED768BB94E8776A4
            A6217354A16A5B0203CA32788107A880259208A584B602A58234B40F8188081C
            993B48691DAFDE7E05E32CA5339CBFFD7DE228C1798BAAAC5933E414254C6CC6
            7ABE89CD1C656128F292FE681B6BCD54E25306540B2001CA575F21BB7695A228
            488DE1C0873F420A0C4643AC7574E388F9B9395AAD0425D0DEBB7EF6AE8A03CA
            77F102D4A170D81770D606F8552F6B2645DA511B537886658AAF1827A2C85C89
            33552A2D8E4109DE05754242DFE4863235D8C2521425D2537474309CB6863FB3
            451569CEE09B61E1639C256FB5597CEA6906FD3EB608D2EFB4DBCCCDCDA1B566
            BFE6BDA7AC1060CC0354A06680ADF201B514EA65AD1268C731BDD6126BFD4B33
            B109386B295383F78E23878EF2F0D1C7B8B8FE361B838DE0D29CC7E61693194C
            61C0C152E7084E04D3907A9D2D4281BD7299C9F95731A6A4B0167DE234F1D187
            980C87586B89E398858505DAED36F76BAEB601B50ABC5B1CD044C05E4B29C09D
            E155EEECACF1A927FE06670E3FCE772E7C8DCBB72FA2B4C27B47911681198B42
            EC5A8C072983FE18A514CE384C51E28C0703C7964EF0CB1FF93471DCC6B819F4
            2D808705058397BF45B97E97D23932E7E93CF6043990E7395A6BBADD2E0B0B0B
            28A5A6BB57F76A405081D2940F3682C6189C0B0CA87380752B6CCE60B2413B6E
            71FCE0491E3D7C9AC70E9EE5DFFDAF2F7279FD07586FF1169276C2B58D6BDCDC
            B84947F738DC5EE1C6E6757AAD79CE1C7994CB772E7278E928FFE0D7FE11470F
            AD86BC9F9F020945307EBADF67F48D1731598A71962269B1F0F0A34CD2146F1D
            ADA4C5E2E241E2769712210BEACE9C0A2A1B761BA5A10265A502ECC300A902A1
            2A91689C45F053E86B81E1F82EC7E68E7264E138B6528D478E3FC13FFCCC3FE7
            C6E67576C65B80A2D799E3D6F6552EFCDE9779F685CFF0D4473FC59BD7CE7368
            FE30A757CE727DF31ABDF61CC7964EE0114C65002381F93A0123906D6F31EAF4
            182F2D93DFBA815B5981232B645986C1E02361536FB13ED8626CC6EC9811A59B
            D016B03627B3213E30EB8ED2949465F92E2A80E06C806880AB9D666E6A3538BE
            707297A5B6550EE0D0E251960F1CA5422E1E986C9EA1BFFE25168A98E5032BBC
            B0B01256D91E3E78ECF1B093B4A77A256A64A09D7394070E32FCEC5F67ED9127
            E9FEE06D762677B831B9407FA74F11E5B4E384D69D04236153B77421FF6FBCC5
            54C2343896B797D1455431E05D54C07B87B106B182B57657E6C713CA2AEA4715
            B3C4C6DEFD4E5130DCB843BA759BD1F67A9D5E98DA913AAAAC536A61C9EDF1DE
            B059668CCD903C4BB9FACA156E5CBF4967E9109D0FFC126F9EFBCF4CB6CFE3C4
            D35BEAE192166999E17058E770DE85DCBFAFAE9DC362296D892FC19465580ADF
            CF085AEB288DA9D060A71B227E3797008FC3E1BDC37A1B74BF8AFD3D1E44B1B9
            7D8D5417F42777D81EAF63ADA9A463D01194BEC0BA9289D9A6300306A6CFA018
            322C478CCA21A7DC19ECDD98BC283875EA1417AEBCC9B61A53E4052A11A415E1
            047C19363C9C0BC43BAAB3AFAF2DA529C108A5B1C00376864C69C043690A76B2
            DB0C7D9F71396054EE90D909999D50BA9CDC65586730AE60AB3F60349EE0AAFD
            04E71C453A66F22B67586BBFC34B2FFE56D86811509162797901D16192A682AD
            F3F58689474BC4F246C1C6DA1D9EFBE8733CFDD4937C77ED5B6C673BA085562F
            216E199CF5E1A8A41F0410CEAEAA3370384A5BA09CC6597B4FA54B0301332F00
            B091DEE54BEFFC1BB6CB0DAC0F93640F1AA4B290456E48B32220A83098D22222
            E89E069FE10613B456F4E63B74DA2DB68B7EA8DCF0607DA3D2A382EFC16889C1
            D511511C234AF1D2B99779F5C6397253A0B422EA466492431152F9AE0EB9BD9B
            D60F387C08C2C4519892C8268136E17E08A8E2006B102FA479CAC58DEB8CFD18
            2D1AA50411550545A1F4449ADC6B69C42B742498343013E50393B4A0628D8F05
            83C51B5F25553CA575BB4A722C96A3D9098677479C3879925847FCE1CB7FCC95
            9D6B8886782E462725D6385C39DBC2936ABF2C144C99907CF50E2F9EB22CB0A6
            1D367DEECF0070CE628D455014C6B0391A32722322A5D14AA3B5468BA095C67A
            B76F15088053BEDA5C752825E0C1E229B259D56640C0AC3CA62E97514AC3A6A0
            55C481038B8CD331AFDD798DB44CD15D8D9AD3943AA0CCB812632D4A04A5F4D4
            0E5967A786CE89A734C5342D8E92076784149EB22CE94F460CCC9048695A714C
            3B4E302E7CD0F9DDE65F9ABDBD7B82522DB7ABF14DCFE21BEF71DEB3A497286E
            18960F2EB2B8B0C8F7AFBCC2F5E1756C6C89DA112EF2A469DAA845F2D31DE1DD
            E57355298DF85016632DC63AC4C303B7C73DC1168CD311A37280569A89522855
            AB804235AB24F6DBBDDCEF96ECF197BE516805381C0FF987D059C4C15307D091
            E29B3FF826C37C886E694CDBA0CA2A6DD424748F71F28D9EC7931539B6DAF7BC
            3F03EAE5B037384286724EBA7815242EBE3A44021D55D99912452C115A692289
            D13A22168D561191D244AABAA722B4E8A04E12A1954249A8E2AAF5DFE3695D6C
            33DF9B63717191F59D75FA833E27174ED039DE255A8E70CA629CD97594D604D8
            E3EFF1DB0E8718857561215497D8DDAB029511F48088C3F51D9FE2E7B1BE3628
            7EC6DF3D459052E560644ACE837A7B5A95858AA2886C3BE7E0E9257ABD1EDFFD
            FA77886FC62C2F2EB3D45E221EC7D36C95ABF6FBEBFEB4FCAE56053F636A5446
            8CB3718500413516384D1BE09D73E03D228A8DDB1B705B76D5F74D89BEA742B4
            61CCEE5758B96FE5E8EEC976BA5D1E3A718CA5A583A49309AF7CF715D27E4A52
            266C8EB6EA32C599BE376B0C1BEF9A155ED6F20A9EC6398F2841E9686A78AA6D
            0F7C14454644B9B22C1B139D4DAE49284D621B44ED4BA89F19A79A79F5D6D7DE
            8AD39EEE311C0E49D394CB972EB1B9B9C95CAF8728C198629F77ED66E074BEEC
            8E2D9A8C8A93D8475164A8F22D35025C9EE723F05F565A2E596BF1322BA7F353
            B32D33D7E76B48FBE980DD85D10D43D4EC4FA538136514C74B870F1FFED585C5
            C5F9CB972EF1BBFFEDCB85B1E51B22DCECCDF5EE743ADD4264F73B7721619F6F
            3686348D826FB5DA799E67AF532D6D9ADE2A26A4FD6260FFDCD2FBD0E228567F
            F7EFFDFD7FB1B2B2F29B77EFDE95AB57AE72E9D2A5EDADED8D7F9DE7F91FEDEC
            EC5C74CE95EFD1E7EA355D511D366ADC28AB9B3FCAFF0AB8CF7CF67367C7A3F1
            AF5D1C5C94EDED6DEEDEB94B9E651B5AEBD7E2387E03E8BFC7DFF48D63571CD0
            AC4079DFDBCACA0ABFF5F9BFCD8DEB6B4F2FCCC7C7AFDCDCE0DA70C064321E19
            6BBE262297E3381E9E3E7DDAA469CAAD5BB7DE9779FCD8FE19F2C29347F9CD7F
            F6DB3C716AE1E7CE1E4D92B307738E77279398F4BF1A6BBE2A226B4AA9D218F3
            BE110F7B22C11F65FBCC5FFD553EFE894F1CEFCE2D7C62B07993F1B07FC314E3
            FF324C8B2F8BC80560937B522DEF7D93FFF757FCDFB5D5D555AE5EBDCADFFCA5
            0F2F7CE2D947FFA937D9AF5FBF79F7CFCE5DD9F9CA6BD7C6DF1325B7632DA9F7
            4115AF5DBBF6FF0F035657570944DD95CF7DF2E1B3470EB47EE1F2EDC1E557AE
            8CDFEAA76EFBF0429CB722B185F1EF3BE13F560628252ACD6D6B736B22CEE972
            E950CB6CDCBEED57578FFDC808FF69ABDAFF010B3252C30766A9E3000000227A
            545874536F667477617265000078DA734CC94F4A55F0CC4D4C4F0D4A4D4CA904
            002F9C05D4AE0CA94D0000000049454E44AE426082}
        end
      end
      object AdvToolBar1: TAdvToolBar
        Left = 160
        Top = 200
        Width = 16
        Height = 26
        UIStyle = tsOffice2019White
        AllowFloating = True
        Caption = ''
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        CompactImageIndex = -1
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ParentStyler = False
        Images = cxImageList1
        ParentOptionPicture = True
        ToolBarIndex = -1
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 550
    Height = 25
    Caption = 'ToolBar1'
    Images = cxImageList1
    List = True
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
    object ToolButton4: TToolButton
      Left = 46
      Top = 0
      Caption = 'ToolButton4'
      ImageIndex = 2
    end
    object ToolButton5: TToolButton
      Left = 69
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 3
      OnClick = ToolButton5Click
    end
    object ToolButton3: TToolButton
      Left = 92
      Top = 0
      Width = 53
      Caption = 'ToolButton3'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object AdvComboBox1: TAdvComboBox
      Left = 145
      Top = 0
      Width = 224
      Height = 22
      Color = clCream
      Version = '2.0.0.5'
      Visible = True
      ButtonWidth = 17
      Style = csOwnerDrawVariable
      EmptyText = 'Run/Debug/Execute'
      EmptyTextStyle = []
      DropWidth = 0
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Fg'
      LabelFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnDrawItem = AdvComboBox1DrawItem
    end
    object ToolButton6: TToolButton
      Left = 369
      Top = 0
      Width = 19
      Caption = 'ToolButton6'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object Edit2: TEdit
      Left = 388
      Top = 0
      Width = 59
      Height = 22
      TabOrder = 1
      TextHint = 'Add Items'
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 447
      Top = 0
      Width = 37
      Height = 22
      Caption = 'Add'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Rounded = True
      TabOrder = 2
      OnClick = AdvGlowButton1Click
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
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBA' +
      'NKINGDB'
    LoginPrompt = False
    Left = 456
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 424
    Top = 392
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dbplanner_tbl'
    Left = 424
    Top = 336
  end
  object DBDaySource1: TDBDaySource
    AutoIncKey = False
    DataSource = DataSource1
    ResourceDataSource.DataSource = DataSource1
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
    Left = 424
    Top = 456
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dbplannermonth_tbl'
    Left = 496
    Top = 337
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 504
    Top = 393
  end
  object AdvMainMenu1: TAdvMainMenu
    Images = cxImageList1
    MenuStyler = AdvMenuStyler1
    Version = '2.7.1.9'
    UIStyle = tsOffice2007Luna
    Left = 196
    Top = 57
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Caption = 'New             '
      end
      object Open1: TMenuItem
        Caption = 'Open...'
        ImageIndex = 0
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = 'Save'
        ImageIndex = 1
      end
      object Print1: TMenuItem
        Caption = 'Print...'
        Enabled = False
        ImageIndex = 2
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        ImageIndex = 3
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Undo1: TMenuItem
        Caption = 'Undo'
        Enabled = False
        ImageIndex = 4
      end
      object Redu1: TMenuItem
        Caption = 'Redo'
        Enabled = False
        ImageIndex = 5
      end
      object Cut1: TMenuItem
        Caption = 'Cut'
        ImageIndex = 6
      end
      object Copy1: TMenuItem
        Caption = 'Copy'
        ImageIndex = 7
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
        ImageIndex = 8
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object help2: TMenuItem
        Caption = 'Help'
        ImageIndex = 9
        object MoreDetails1: TMenuItem
          Caption = 'More Details'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object About1: TMenuItem
        Caption = 'About'
      end
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 7930052
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000000001B0000
          004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
          004C0000004C0000004C0000004C0000004C0000004C0000001C224555E454AB
          D3FF55ACD3FF55ACD3FF55ACD3FF55ACD3FF55ACD3FF55ACD3FF55ACD3FF55AC
          D3FF55ACD3FF55ACD3FF55ACD3FF55ACD3FF48A7D3FF0E3F55E4366E87FF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF366E87FF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF366E87FF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF366E87FF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF366E87FF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF366E87FF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF33677FFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF0C2E3EFF465B
          65FF697E87FF697E87FF697E87FF697E87FF697E87FF677D86FF4584A1FF66CF
          FFFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF176487FF145878FF9797
          97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B5B5FF4483
          9FFF66CFFFFF66CFFFFF66CFFFFF66CFFFFF5CCCFFFF145776FF145878FF504D
          3FFFCCC4A5FF88826AFF87826AFF87826AFF87826AFF87826AFF87826AFF7973
          5BFF7B7D68FF7C7E6AFF7C7E6AFF7C7D67FF4C4E39FF0E2C45FF166082FF1964
          86FF1A6587FF1A6587FF1A6587FF1A6587FF1A6587FF1A6485FF185C7AFF185C
          7AFF185C7AFF185C7AFF185C7AFF185C7AFF185779FF143E61EE176487FF2BBC
          FFFF2BBCFFFF2BBCFFFF2BBCFFFF2BBCFFFF2BBAFCFF10455EE20000006D0000
          006B0000006B0000006B0000006B0000006B0000006B000000310E3F55E4249B
          D3FF249CD3FF249CD3FF249CD3FF239BD2FF0F445CE100000023000000000000
          00000000000000000000000000000000000000000000000000000000001B0000
          004B0000004B0000004B0000004B0000004B0000001500000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000005040371785C
          45FF423E38FF7D7B73FF7D7B73FF7D7B73FF7D7B73FF7D7B73FF7D7B73FF7D7B
          73FF7D7B73FF7D7B73FF7D7A73FF3F3830FF76573CFF050302710B090684E3AE
          82FF7C746AFFBDB9ADFF7D7B73FF7D7B73FF7D7B73FF7D7B73FF7D7B73FF7D7B
          73FF7D7B73FF7D7B73FFC6C1B6FF77695BFFDFA372FF0B0704840B090684E3AE
          82FF7C746AFFDDD8CBFFC7C2B7FFC7C2B7FFC7C2B7FFC7C2B7FFC7C2B7FFC7C2
          B7FFC7C2B7FFC7C2B7FFDFDACDFF77695BFFDFA372FF0B0704840B090684E3AE
          82FF7C746AFFCCC7BBFFA39F96FFA39F96FFA39F96FFA39F96FFA39F96FFA39F
          96FFA39F96FFA39F96FFD2CDC0FF77695BFFDFA372FF0B0704840B090684E3AE
          82FF9A8E80FFBCB9ADFF7D7B73FF7D7B73FF7D7B73FF7D7B73FF7D7B73FF7D7B
          73FF7D7B73FF7D7B73FFC6C1B6FF77695BFFDFA372FF0B0704840B090684E3AE
          82FFAD9F8EFFBFBBAFFF84817AFF84817AFF84817AFF84817AFF84817AFF8481
          7AFF84817AFF84817AFFC7C3B7FF77695BFFDFA372FF0B0704840B090684E3AE
          82FF7B7369FFEAE5D7FFE5E0D3FFE5E0D3FFE5E0D3FFE5E0D3FFE5E0D3FFE5E0
          D3FFE5E0D3FFE5E0D3FFE9E4D6FF76685AFFDFA372FF0B0704840B090684E3AE
          82FF987558FF795F49FF795F49FF795F49FF795F49FF795F49FF795F49FF795F
          49FF795F49FF795F49FF795F49FFA27C5DFFDFA372FF0B0704840B090684E3AE
          82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE
          82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFDFA372FF0B0704840B090684E3AE
          82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE
          82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFDFA372FF0B0704840B090684E3AE
          82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFE3AE
          82FFE3AE82FFE3AE82FFE3AE82FFE3AE82FFDFA372FF0B0704840B090684E3AE
          82FFE3AE82FFC2946FFF8E6D51FF8E6D51FF8E6D51FF8E6D51FF8E6D51FF8E6D
          51FF8E6D51FF8E6D51FFC99A73FFE3AE82FFDFA372FF0B0704840B090684E3AE
          82FFE3AE82FF726355FFD6D1C5FFD6D1C5FFD6D1C5FFA7A399FF4E473BFF5049
          3CFF3C372DFF655D4CFF5F4B39FFE3AE82FFDFA372FF0B0704840B090684E3AE
          82FFE3AE82FF7B6D5FFFECE7D9FFECE7D9FFECE7D9FFB5B1A6FF5A5344FF4E49
          40FF7B756DFF68604EFF907458FFE3AE82FFB8855BFF0201015D0B090684E3AE
          82FFE3AE82FF7B6D5FFFECE7D9FFECE7D9FFECE7D9FFB5B1A6FF5A5344FF433E
          36FF4B4742FF6A6250FF624E3BFFE1A97BFF342315C60000000205040371785C
          45FF795C45FF413A32FF7D7B73FF7D7B73FF7D7B73FF605E58FF302C24FF3D38
          2EFF3B362DFF3D382EFF32281EFF5A412CF70000003000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000022222226E3E3E3FDE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD8D8D8FD212121270000000000000000010100011C13
          031D433C2E4AE5E5E5FFE5E4E4FFDFDEDEFFDFDEDEFFDFDEDEFFD0CFCFFFD0CF
          CFFFD0CFCFFFD8D8D8FFD9D9D9FF43372B4A1E10031E02010002A77613B3EFA9
          1BFFEDB441FFE5E5E5FFDCDADAFFBCB8B8FFBCB8B8FFBCB8B8FF9F979AFF9F97
          9AFF9F979AFFCBC9CAFFD9D9D9FFF5983BFFFC8916FFB26110B4EEA81BFEEFA9
          1BFFEDB441FFE5E5E5FFE3E3E3FFD9D7D7FFD9D7D7FFD9D7D7FFC7C5C6FFC7C5
          C6FFC7C5C6FFD6D6D6FFD9D9D9FFF5983BFFFC8916FFFB8916FEEFA91BFFEFA9
          1BFFEDB441FFE5E5E5FFDDDCDCFFC3BFBFFFC3BFBFFFC3BFBFFFA8A1A3FFA8A1
          A3FFA8A1A3FFCDCBCCFFD9D9D9FFF5983BFFFC8916FFFC8916FFEFA91BFFEDA8
          1CFFB99248FFB2AFB0FFB2AFB0FFB2AFB0FFB2AFB0FFB2AFB0FFA09D9EFFA09D
          9EFFA09D9EFFA09D9EFFA09D9EFFB4763BFFF98817FFFC8916FFEFA91BFFE9A6
          1DFF9F7B3CFF9C7A3DFF9C7A3DFF9C7A3DFF9C7A3DFF9C7A3DFF935D2BFF935D
          2BFF935D2BFF935D2BFF935D2BFF965E2BFFF58618FFFC8916FFEFA91BFFEFAA
          20FFF4C26EFFF2B952FFEFA91BFFEFA91BFFEFA91BFFEFA91BFFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFEFA91BFFEFAB
          21FFF5C67BFFF3BC5CFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFCC9017D9EFA9
          1BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFEFA91BFFFC8916FFFC89
          16FFFC8916FFFC8916FFFC8916FFFC8916FFFC8916FFD87613DB1C1406259274
          41FFA38551FFE9CF99FFE9CF99FFE9CF99FFE9CF99FFE9CF99FFE6BB90FFE6BB
          90FFE6BB90FFE6BB90FFE6BB90FF996A40FF86572EFF1D1105250605050F5C55
          57FF767072FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFD9D9D9FFD9D9
          D9FFD9D9D9FFD9D9D9FFD9D9D9FF5E5859FF413A3CFF0404040F000000014A44
          46CD767072FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFD9D9D9FF95C1
          E7FF51A9F5FF51A9F5FF559AD6FF484347FF342F30CD00000001000000000302
          020738373855E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFD9D9D9FF73B5
          EEFF2399FEFF1D81D6D70B1620380C0B0B2E0202020700000000000000000000
          00002B2B2B30E5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFD9D9D9FF73B5
          EEFF1D81D6D7030F181900000000000000000000000000000000000000000000
          000022222226E3E3E3FDE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFD9D9D9FF6D9D
          C6D7030F18190000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000303
          0E1519196EA12727A8F02929B3FF2929B3FF2929B3FF2929B3FF2929B3FF2929
          B3FF2929B3FF2929B3FF2727A8F019196EA103030E1500000000010105082323
          95D32F2FC4FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131
          C9FF3131C9FF3131C9FF3131C9FF2F2FC4FF232395D301010508101044613030
          C6FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131
          C9FF3131C9FF3131C9FF3131C9FF3131C9FF3030C6FF101044611B1B6E903131
          C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131
          C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF1B1B6E901D1D75953131
          C9FF3131C9FF3131C9FF3434C2FF4D4DC2FF3030C5FF3131C9FF3131C9FF3030
          C5FF4E4EC2FF3434C2FF3131C9FF3131C9FF3131C9FF1D1D75951D1D76963131
          C9FF3131C9FF3131C9FFA6A6E6FFFEFEFFFF8484D3FF3030C5FF3030C5FF8585
          D4FFFEFEFFFFA4A4E6FF3131C9FF3131C9FF3131C9FF1D1D76961D1D76963131
          C9FF3131C9FF3131C9FF6A6AD8FFF9F9FEFFFEFEFFFF8686D4FF8787D4FFFEFE
          FFFFF9F9FDFF6868D8FF3131C9FF3131C9FF3131C9FF1D1D76961D1D76963131
          C9FF3131C9FF3131C9FF3131C9FF6E6ED9FFF9F9FEFFFFFFFFFFFFFFFFFFF9F9
          FDFF6D6DD9FF3131C9FF3131C9FF3131C9FF3131C9FF1D1D76961D1D76963131
          C9FF3131C9FF3131C9FF3131C9FF3030C5FFB0B0E4FFFFFFFFFFFFFFFFFFAEAE
          E3FF3030C5FF3131C9FF3131C9FF3131C9FF3131C9FF1D1D76961D1D76963131
          C9FF3131C9FF3131C9FF3030C5FF8585D4FFFEFEFFFFFCFCFEFFFCFCFEFFFEFE
          FFFF8484D3FF3030C5FF3131C9FF3131C9FF3131C9FF1D1D76961D1D76963131
          C9FF3131C9FF3131C9FF7C7CD7FFFEFEFFFFF9F9FDFF6C6CD9FF6E6ED9FFF9F9
          FEFFFEFEFFFF7B7BD6FF3131C9FF3131C9FF3131C9FF1D1D76961D1D75953131
          C9FF3131C9FF3131C9FF9898E4FFF8F8FDFF6D6DD9FF3131C9FF3131C9FF6E6E
          D9FFF8F8FDFF9696E4FF3131C9FF3131C9FF3131C9FF1D1D75951C1C72913131
          C9FF3131C9FF3131C9FF3131C9FF3939CBFF3131C9FF3131C9FF3131C9FF3131
          C9FF3939CBFF3131C9FF3131C9FF3131C9FF3131C9FF1C1C729013134D613131
          C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131
          C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF13134D61020206082929
          A6D33131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131
          C9FF3131C9FF3131C9FF3131C9FF3131C9FF2929A6D302020608000000000404
          11151F1F7FA12E2EBEF13131C9FF3131C9FF3131C9FF3131C9FF3131C9FF3131
          C9FF3131C9FF3131C9FF2E2EBEF11F1F7FA10404111500000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002919062B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000006040106C77B1BD1000000000000
          00000000000000000000000000000000000000000000301E0733000000000000
          000000000000000000000000000001010001955C149CC97C1BD3000000000000
          00000000000000000000000000000D08020D945B149BF39621FF000000000000
          0000000000000000000006030106965C149DF39621FF8D571394000000000000
          000000000000000000003D260840D4831DDFF39621FFF39621FF000000000000
          0000000000002B1A062DC0771ACAF39621FFF39621FF36210738000000000000
          0000090501098954138FF19521FDF39621FFF39621FFF39621FF110A0211452B
          09499F6216A7F09421FCF39621FFF39621FFB46F18BD00000000000000003420
          0736CD7F1CD7F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFE99020F426180528000000007C4D1182EF94
          21FBF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFEF9320FA4D2F0B5100000000000000007C4D1182EF94
          21FBF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFDB871EE641280944000000000000000000000000000000003420
          0736CD7F1CD7F39621FFF39621FFF39621FFF39621FFF39621FFE78E1FF2BC74
          19C56D430F730D08020D00000000000000000000000000000000000000000000
          0000090501098954138FF19521FDF39621FFF39621FFF39621FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003D260840D4831DDFF39621FFF39621FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000D08020D945B149BF39621FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000301E0733000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002919062B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C77B1BD10604
          0106000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C97C1BD3955C
          149C010100010000000000000000000000000000000000000000301E07330000
          00000000000000000000000000000000000000000000000000008D571394F396
          21FF965C149D0603010600000000000000000000000000000000F39621FF945B
          149B0D08020D000000000000000000000000000000000000000036210738F396
          21FFF39621FFC0771ACA2B1A062D000000000000000000000000F39621FFF396
          21FFD4831DDF3D2608400000000000000000000000000000000000000000B46F
          18BDF39621FFF39621FFF09421FC9F6216A7452B0949110A0211F39621FFF396
          21FFF39621FFF19521FD8954138F090501090000000000000000000000002618
          0528E99020F4F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFCD7F1CD73420073600000000000000000000
          00004D2F0B51EF9320FAF39621FFF39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFEF9421FB7C4D1182000000000000
          00000000000041280944DB871EE6F39621FFF39621FFF39621FFF39621FFF396
          21FFF39621FFF39621FFF39621FFF39621FFEF9421FB7C4D1182000000000000
          000000000000000000000D08020D6D430F73BC7419C5E78E1FF2F39621FFF396
          21FFF39621FFF39621FFF39621FFCD7F1CD73420073600000000000000000000
          0000000000000000000000000000000000000000000000000000F39621FFF396
          21FFF39621FFF19521FD8954138F090501090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000F39621FFF396
          21FFD4831DDF3D26084000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000F39621FF945B
          149B0D08020D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000301E07330000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000E12373D2D3AB5D33342D0FA2935A2BA0708
          191C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000003030B0C3240C8ED1219526C0507171E1B25789D2A36
          A5BD000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D1031362D3BBCE8000000000000000006081B243443
          D1FA000000000000000000000000000000000000000000000000000000000000
          00000000000000000000040510113343D0F80E123D5101010304171F65852C39
          AFCB00000000000000000000000000000000000000000000000000000000080B
          2632131A54710D11384B0000010229349CAE3646D8FF3241CFFC2E3CB9D70A0D
          282C000000000000000000000000000000000000000000000000111649632C2F
          8AE71E1B4A91292976D1252F99D4232877A33C4CE6FF3B4AE1F9040510120000
          00000000000000000000000000000000000000000000000000002A3198E70D0C
          2040000000000303070E2E3194F330349EFF3B4ADDFF3C4CE6FF1A205F6A0000
          00000000000000000000000000000000000000000000000000002C339EF10B0A
          1C3700000000020204082D3191F02B35ABF3383FBAFF4F5BCEFF4E5ACDFB6261
          58A51E1E1B2E0000000000000000000000000000000000000000171F65892B2C
          7FDD19163D7A262568C0222B89C302030B0F1F21537F8B8FCFFFBAB8C1FF9A99
          8CFFA3A393FE757469B42727243D000000000000000000000000000001021016
          48601C2373A0151B5B790203090C0000000000000000A4A09BD2C7C3BDFFA6A3
          9AF49C9C8DFE979688FF9D9D8EFF7F7F73C42F2F2A4900000000000000000000
          000000000000000000000000000000000000000000005A585573C7C3BDFFB0AD
          A8E220201D326B6B61A6A0A091FC9D9C8DFF9F9F90FE37373154000000000000
          0000000000000000000000000000000000000000000013121218C4C0BAFBC7C3
          BDFF353432440000000016161422626258979F9F90F78C8C7FD9000000000000
          00000000000000000000000000000000000000000000000000008D8A86B5C7C3
          BDFF7F7C79A30000000000000000000000000F0F0E184747406E000000000000
          000000000000000000000000000000000000000000000000000043424056C7C3
          BDFFBFBBB5F40A0A0A0D00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000006060608B0AC
          A7E1C7C3BDFF4C4A486100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001817
          171F8D8A86B483807CA800000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000008371
          5D83FFE5C8FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFED
          D9FFFEECD8FE37332F3700000000000000000000000000000000000000008F7B
          658FFFE6CAFFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFED
          D9FFFFEDD9FF433E394300000000000000000000000000000000000000008F7B
          658FFFE6CAFFFFDDB5FFFFD7A9FFFFD7A9FFFFD7A9FFFFD7A9FFFFD7A9FFFFE3
          C4FFFFEDD9FFF2BD7BF2ECBA7EECECBB81EC866B498600000000000000008F7B
          658FFFE6CAFFFFEAD2FFFFE8CEFFFFE8CEFFFFE8CEFFFFE8CEFFFFE8CEFFFFEB
          D5FFFFEDD9FFFFC680FFFFC988FFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFE0BCFFFFDCB4FFFFDCB4FFFFDCB4FFFFDCB4FFFFDCB4FFFFE5
          C7FFFFEDD9FFFEB653FFFEAE42FFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFDFBAFFFFDAAFFFFFDAAFFFFFDAAFFFFFDAAFFFFFDAAFFFFFE5
          C6FFFFEDD9FFFFC479FFFFC680FFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFEBD4FFFFEAD2FFFFEAD2FFFFEAD2FFFFEAD2FFFFEAD2FFFFEC
          D6FFFFEDD9FFFFB756FFFEB046FFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFDDB5FFFFD7A8FFFFD7A8FFFFD7A8FFFFD7A8FFFFD7A8FFFFE3
          C3FFFFEDD9FFFFBA5FFFFEB556FFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFE5C7FFFFE2C0FFFFE2C0FFFFE2C0FFFFE2C0FFFFE2C0FFFFE8
          CFFFFFEDD9FFFFC272FFFFC172FFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFE5C7FFFFE2C1FFFFE2C1FFFFE2C1FFFFE2C1FFFFE2C1FFFFE8
          CEFFFFEDD9FFFEB552FFFEAE40FFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFE9CFFFFFE9
          D0FFFFEAD2FFFFBF6DFFFFBF6FFFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFD097FFFFD9
          AFFFFFD5A5FFFEB450FFFEB85BFFFFCA8BFF9F7E579F00000000000000008F7B
          658FFFE6CAFFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFEDD9FFFFD097FFFFD3
          A0FFFFC175FFFFC886FFFFC57DFFFFC680FF9F7C509F00000000000000007968
          5579EDD5BAEDECDBC9ECF0DECAF0FFE9D1FFFFEAD3FFFFEAD3FFFFCE94FFFFC1
          77FFFFCA8AFFFEB14AFFFE9E11FFFBA522FB50350B5000000000000000000000
          0000000000000000000035271435FFBC6AFFFFCA8BFFFFCA8BFFFFCA8BFFFFCA
          8BFFFFCA8BFFFEB048FFFA9C11FB583A0C580000000000000000000000000000
          000000000000000000002A1F102AFDBA68FDFFCA8BFFFFCA8BFFFFCA8BFFFFCA
          8BFFFFCA8BFFF8AD48F958340358000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000031313033D6D6D2E2F2F2EDFFF2F2
          EDFFF2F2EDFFDFDFCFFFDCDCC9FFDCDCC9FFD5D5C2F662625971000000000000
          0000000000000000000000000000000000009D9D9AA6F2F2EDFFF2F2EDFFF2F2
          EDFFF2F2EDFFDFDFCFFFDCDCC9FFDCDCC9FFDCDCC9FFD5D5C2F6000000000000
          000000000000000000000000000000000000A6A6A3AFF2F2EDFFA3A39BFF8787
          7EFF87877EFF68685CFF626256FF646459FFD4D4C1FFDCDCC9FF000000000000
          000000000000000000000000000000000000A6A6A3AFF2F2EDFFE9E9E3FFE2E2
          DCFFE2E2DCFFCDCDBDFFC9C9B7FFCBCBB9FFDCDCC9FFDCDCC9FF071C20201D76
          86861F7F8F8F1F7F8F8F1C7C8F8F0B718D8FAAC9CFDCF2F2EDFF9A9A92FF7676
          6DFF76766DFF55554BFF4F4F45FF545449FFD4D4C1FFDCDCC9FF2EBCD5D537E1
          FFFF37E1FFFF37E1FFFF32DDFEFF14C8FAFFADE5F1FFF2F2EDFFEEEEE9FFEAEA
          E4FFEAEAE4FFD6D6C6FFD3D3C0FFD4D4C2FFDCDCC9FFDCDCC9FF37E1FFFF38DF
          FDFF4BB8C7FF4CB6C5FF46B1C2FF2797B3FFB3D6DBFFF2F2EDFF9E9E96FF7F7F
          75FF7F7F75FF5E5E54FF59594EFF5C5C50FFD4D4C1FFDCDCC9FF37E1FFFF39DD
          F9FF55A2AAFF56A0A8FF509BA4FF307F8FFFB5CED0FFF2F2EDFFF2F2EDFFF2F2
          EDFFF2F2EDFFDFDFCFFFDCDCC9FFDCDCC9FFDCDCC9FFDCDCC9FF37E1FFFF39DD
          FAFF52A9B4FF53A8B2FF4DA3AEFF2D879BFFB5D1D4FFF2F2EDFFF2F2EDFFF2F2
          EDFFF2F2EDFFDFDFCFFFDCDCC9FFD7D7C3FFD5D5C0FFD0D0BCF837E1FFFF38DE
          FBFF4EB1BEFF4FAFBBFF4AAAB8FF2A8FA7FFB3D3D7FFF2F2EDFFF2F2EDFFF2F2
          EDFFF2F2EDFFDFDFCFFFDCDCC9FFC4C4ACFFBABAA1F83838304A37E1FFFF3ADC
          F8FF589BA1FF59999EFF54949AFF337783FF9AB1B2FFF2F2EDFFF2F2EDFFF2F2
          EDFFF2F2EDFFDFDFCFFFDCDCC9FFBFBFA7F83838304A0000000037E1FFFF37E0
          FEFF47BFD1FF48BDCFFF43B8CCFF249FBFFF28A4C3FF78DAF3FF91E0F3FF8EC5
          D1DC8888858F7D7D748F7C7C718F37373145000000000000000037E1FFFF37E1
          FFFF37E1FFFF37E1FFFF32DDFEFF14C8FAFF14C8FAFF14C8FAFF14C8FAFF0E8A
          ACAF00000000000000000000000000000000000000000000000037E1FFFF37E1
          FFFF36E0FFFF2BD9FDFF27D4FCFF0DBEF7FF0FC0F7FF14C8FAFF14C8FAFF0E8A
          ACAF00000000000000000000000000000000000000000000000035D9F5F537E1
          FFFF29D7FDFF14C8FAFF11C3F8FF00AAF0FF00ABF0FF12C5F9FF14C8FAFF0D83
          A3A60000000000000000000000000000000000000000000000001863707035D8
          F5F51BCDFBFF14C8FAFF11C3F8FF00AAF0FF00AAF0FF0BBAF5FF12B2DFE30429
          3435000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000003101000197020001D9020001F9020001F90200
          01D9010001970000003100000000000000000000000000000000000000000000
          0000000000090100019A020001FE020001FF020001FF020001FF020001FF0200
          01FF020001FF020001FE0100019A000000090000000000000000000000000000
          0009020001C1020001FF020001FF020001FF020001FF020001FF020001FF0200
          01FF020001FF020001FF020001FF020001C10000000900000000000000000100
          019A020001FF020001FF020001FF020001FF020001FF01000078010001950200
          01FF020001FF020001FF020001FF020001FF0100019A00000000000000310200
          01FE020001FF020001FF020001FF020001FF020001FE000000150000003E0200
          01FF020001FF020001FF020001FF020001FF020001FE00000031010001970200
          01FF020001FF020001FF020001FF020001FF020001FF020001C6020001DF0200
          01FF020001FF020001FF020001FF020001FF020001FF01000197020001D90200
          01FF020001FF020001FF020001FF020001FF020001FF00000020010000600200
          01FF020001FF020001FF020001FF020001FF020001FF020001D9020001F90200
          01FF020001FF020001FF020001FF020001FF020001FF0100004C0000000A0200
          01C3020001FF020001FF020001FF020001FF020001FF020001F9020001F90200
          01FF020001FF020001FF020001FF020001FF020001FF020001E50000002A0000
          000A020001B8020001FF020001FF020001FF020001FF020001F9020001D90200
          01FF020001FF020001FF020001FC0100006C020001C9020001FF020001EC0000
          002400000013020001F9020001FF020001FF020001FF020001D9010001980200
          01FF020001FF020001FF020001F20000000401000044020001FF020001FF0100
          004F00000001020001EF020001FF020001FF020001FF01000198000000310200
          01FE020001FF020001FF020001FF0100007400000000010000430100004B0000
          000101000056020001FF020001FF020001FF020001FE00000031000000000100
          019A020001FF020001FF020001FF020001FF010001A90100005B010000560100
          0195020001FA020001FF020001FF020001FF0100019B00000000000000000000
          0009020001C1020001FF020001FF020001FF020001FF020001FF020001FF0200
          01FF020001FF020001FF020001FF020001C20000000900000000000000000000
          0000000000090100019A020001FE020001FF020001FF020001FF020001FF0200
          01FF020001FF020001FE0100019A000000090000000000000000000000000000
          000000000000000000000000003101000197020001D9020001F9020001F90200
          01D9010001980000003100000000000000000000000000000000}
      end>
  end
  object AdvMenuStyler1: TAdvMenuStyler
    AntiAlias = aaNone
    Background.Position = bpCenter
    Background.OffsetX = 10
    Background.OffsetY = 10
    Background.MarginX = 10
    Background.MarginY = 10
    Background.Color = clGradientInactiveCaption
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -9
    SelectedItem.NotesFont.Name = 'Segoe UI'
    SelectedItem.NotesFont.Style = []
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clWindowText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -9
    NotesFont.Name = 'Segoe UI'
    NotesFont.Style = []
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    Left = 260
    Top = 65
  end
  object OpenDialog1: TOpenDialog
    Left = 268
    Top = 121
  end
end
