object svTime: TsvTime
  OldCreateOrder = False
  DisplayName = 'Time_Service'
  AfterInstall = ServiceAfterInstall
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 150
  Width = 215
  object TmTimeLog: TTimer
    Interval = 60000
    OnTimer = TmTimeLogTimer
    Left = 48
  end
end
