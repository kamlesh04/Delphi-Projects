object Service_thread: TService_thread
  OldCreateOrder = False
  DisplayName = 'Service_thread'
  AfterInstall = ServiceAfterInstall
  OnExecute = ServiceExecute
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 150
  Width = 215
end
