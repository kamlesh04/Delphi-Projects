object frmMultThreading: TfrmMultThreading
  Left = 0
  Top = 0
  Caption = 'Multi-Threading'
  ClientHeight = 407
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlButtons: TPanel
    Left = -7
    Top = 0
    Width = 208
    Height = 409
    TabOrder = 0
    object btnWithoutSync: TButton
      Left = 38
      Top = 24
      Width = 121
      Height = 25
      Caption = 'Without Sync'
      TabOrder = 0
      OnClick = btnWithoutSyncClick
    end
    object btnWithSync: TButton
      Left = 38
      Top = 78
      Width = 121
      Height = 25
      Caption = 'With Sync'
      TabOrder = 1
      OnClick = btnWithSyncClick
    end
    object bntTaskFuture: TButton
      Left = 38
      Top = 124
      Width = 121
      Height = 25
      Caption = 'TTask.Future'
      TabOrder = 2
      OnClick = bntTaskFutureClick
    end
    object bntParallelFor: TButton
      Left = 38
      Top = 176
      Width = 121
      Height = 25
      Caption = 'TParallel.For'
      TabOrder = 3
      OnClick = bntParallelForClick
    end
    object btnInterlocked: TButton
      Left = 38
      Top = 224
      Width = 121
      Height = 25
      Caption = 'TInterlocked'
      TabOrder = 4
      OnClick = btnInterlockedClick
    end
    object btnMonitor: TButton
      Left = 38
      Top = 272
      Width = 121
      Height = 25
      Caption = 'TMonitor'
      TabOrder = 5
    end
  end
  object pnlMian: TPanel
    Left = 207
    Top = 0
    Width = 618
    Height = 409
    TabOrder = 1
    object btnShow: TButton
      Left = 201
      Top = 8
      Width = 209
      Height = 41
      Caption = 'UI Blocked ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2763429
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnShowClick
    end
    object pbRight: TProgressBar
      Left = 339
      Top = 78
      Width = 263
      Height = 21
      TabOrder = 1
    end
    object pbLeft: TProgressBar
      Left = 40
      Top = 82
      Width = 249
      Height = 21
      TabOrder = 2
    end
    object MemLeft: TMemo
      Left = 40
      Top = 125
      Width = 257
      Height = 256
      ImeName = 'India'
      Lines.Strings = (
        '')
      TabOrder = 3
    end
    object MemRight: TMemo
      Left = 339
      Top = 125
      Width = 263
      Height = 256
      Lines.Strings = (
        '')
      TabOrder = 4
    end
  end
end
