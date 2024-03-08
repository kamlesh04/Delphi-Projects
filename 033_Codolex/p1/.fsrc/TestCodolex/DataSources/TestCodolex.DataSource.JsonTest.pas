unit TestCodolex.DataSource.JsonTest;

interface

uses
  Codolex.Adapters.EntityDataSet,
  Codolex.Database.Entity.Interfaces,
  Codolex.Database.NonPersistentEntity,
  Codolex.Database.NonPersistentEntity.Interfaces,
  Codolex.EntityDataBroker.Interfaces,
  Codolex.EntityDataBroker.NonPersistent,
  Codolex.Framework.Attributes,
  Codolex.Framework.Types,
  Codolex.Framework.Types.Binary,
  Data.DB,
  REST.Json.Types,
  System.Rtti;

type
  ITest = interface;
  IcurrentUtcOffset = interface;
  IdstDuration = interface;
  IdstInterval = interface;
  IdstOffsetToStandardTime = interface;
  IdstOffsetToUtc = interface;
  IstandardUtcOffset = interface;
  
  TTest = class;
  TcurrentUtcOffset = class;
  TdstDuration = class;
  TdstInterval = class;
  TdstOffsetToStandardTime = class;
  TdstOffsetToUtc = class;
  TstandardUtcOffset = class;
  
  TTestDataBroker = class;
  TcurrentUtcOffsetDataBroker = class;
  TdstDurationDataBroker = class;
  TdstIntervalDataBroker = class;
  TdstOffsetToStandardTimeDataBroker = class;
  TdstOffsetToUtcDataBroker = class;
  TstandardUtcOffsetDataBroker = class;
  
  TTestDataSetAdapter = class;
  TcurrentUtcOffsetDataSetAdapter = class;
  TdstDurationDataSetAdapter = class;
  TdstIntervalDataSetAdapter = class;
  TdstOffsetToStandardTimeDataSetAdapter = class;
  TdstOffsetToUtcDataSetAdapter = class;
  TstandardUtcOffsetDataSetAdapter = class;
  
  ITest = interface(INonPersistentEntity)
    ['{CBA6CABA-6603-4B6A-849F-FBBDA8AC8851}']
  
    function GetTestID: Integer;
    procedure SetTestID(const Value: Integer);
    function GettimeZone: string;
    procedure SettimeZone(const Value: string);
    function GetcurrentLocalTime: string;
    procedure SetcurrentLocalTime(const Value: string);
    function GethasDayLightSaving: Boolean;
    procedure SethasDayLightSaving(const Value: Boolean);
    function GetisDayLightSavingActive: Boolean;
    procedure SetisDayLightSavingActive(const Value: Boolean);
    function GetcurrentUtcOffsetID: Integer;
    procedure SetcurrentUtcOffsetID(const Value: Integer);
    function GetstandardUtcOffsetID: Integer;
    procedure SetstandardUtcOffsetID(const Value: Integer);
    function GetdstIntervalID: Integer;
    procedure SetdstIntervalID(const Value: Integer);
    function GetcurrentUtcOffset: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset;
    procedure SetcurrentUtcOffset(const Value: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset);
    function GetstandardUtcOffset: TestCodolex.DataSource.JsonTest.IstandardUtcOffset;
    procedure SetstandardUtcOffset(const Value: TestCodolex.DataSource.JsonTest.IstandardUtcOffset);
    function GetdstInterval: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property TestID: Integer read GetTestID write SetTestID;
    property timeZone: string read GettimeZone write SettimeZone;
    property currentLocalTime: string read GetcurrentLocalTime write SetcurrentLocalTime;
    property hasDayLightSaving: Boolean read GethasDayLightSaving write SethasDayLightSaving;
    property isDayLightSavingActive: Boolean read GetisDayLightSavingActive write SetisDayLightSavingActive;
    property currentUtcOffsetID: Integer read GetcurrentUtcOffsetID write SetcurrentUtcOffsetID;
    property standardUtcOffsetID: Integer read GetstandardUtcOffsetID write SetstandardUtcOffsetID;
    property dstIntervalID: Integer read GetdstIntervalID write SetdstIntervalID;
    property currentUtcOffset: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset read GetcurrentUtcOffset write SetcurrentUtcOffset;
    property standardUtcOffset: TestCodolex.DataSource.JsonTest.IstandardUtcOffset read GetstandardUtcOffset write SetstandardUtcOffset;
    property dstInterval: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval write SetdstInterval;
  end;
  
  TTest = class(TNonPersistentEntity, ITest)
  private
    FTestID: Integer;
    FtimeZone: string;
    FcurrentLocalTime: string;
    FhasDayLightSaving: Boolean;
    FisDayLightSavingActive: Boolean;
    FcurrentUtcOffsetID: Integer;
    FstandardUtcOffsetID: Integer;
    FdstIntervalID: Integer;
    [JSONMarshalled(False)] FcurrentUtcOffset: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset;
    [JSONMarshalled(False)] FstandardUtcOffset: TestCodolex.DataSource.JsonTest.IstandardUtcOffset;
    [JSONMarshalled(False)] FdstInterval: TestCodolex.DataSource.JsonTest.IdstInterval;
  public
    function GetTestID: Integer;
    procedure SetTestID(const Value: Integer);
    function GettimeZone: string;
    procedure SettimeZone(const Value: string);
    function GetcurrentLocalTime: string;
    procedure SetcurrentLocalTime(const Value: string);
    function GethasDayLightSaving: Boolean;
    procedure SethasDayLightSaving(const Value: Boolean);
    function GetisDayLightSavingActive: Boolean;
    procedure SetisDayLightSavingActive(const Value: Boolean);
    function GetcurrentUtcOffsetID: Integer;
    procedure SetcurrentUtcOffsetID(const Value: Integer);
    function GetstandardUtcOffsetID: Integer;
    procedure SetstandardUtcOffsetID(const Value: Integer);
    function GetdstIntervalID: Integer;
    procedure SetdstIntervalID(const Value: Integer);
    function GetcurrentUtcOffset: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset;
    procedure SetcurrentUtcOffset(const Value: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset);
    function GetstandardUtcOffset: TestCodolex.DataSource.JsonTest.IstandardUtcOffset;
    procedure SetstandardUtcOffset(const Value: TestCodolex.DataSource.JsonTest.IstandardUtcOffset);
    function GetdstInterval: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property TestID: Integer read GetTestID write SetTestID;
    property timeZone: string read GettimeZone write SettimeZone;
    property currentLocalTime: string read GetcurrentLocalTime write SetcurrentLocalTime;
    property hasDayLightSaving: Boolean read GethasDayLightSaving write SethasDayLightSaving;
    property isDayLightSavingActive: Boolean read GetisDayLightSavingActive write SetisDayLightSavingActive;
    property currentUtcOffsetID: Integer read GetcurrentUtcOffsetID write SetcurrentUtcOffsetID;
    property standardUtcOffsetID: Integer read GetstandardUtcOffsetID write SetstandardUtcOffsetID;
    property dstIntervalID: Integer read GetdstIntervalID write SetdstIntervalID;
    property currentUtcOffset: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset read GetcurrentUtcOffset write SetcurrentUtcOffset;
    property standardUtcOffset: TestCodolex.DataSource.JsonTest.IstandardUtcOffset read GetstandardUtcOffset write SetstandardUtcOffset;
    property dstInterval: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval write SetdstInterval;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.JsonTest.ITest')]
  TTestDataBroker = class(TEntityDataBrokerNonPersistent, IEntityDataBrokerNonPersistent)
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.JsonTest.ITest')]
  TTestDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  IcurrentUtcOffset = interface(INonPersistentEntity)
    ['{7F401B76-4037-4C92-A48F-D3710B5D51D1}']
  
    function GetcurrentUtcOffsetID: Integer;
    procedure SetcurrentUtcOffsetID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetTest_currentUtcOffsetID_currentUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
    procedure SetTest_currentUtcOffsetID_currentUtcOffsetID(const Value: TestCodolex.DataSource.JsonTest.ITest);
  
    property currentUtcOffsetID: Integer read GetcurrentUtcOffsetID write SetcurrentUtcOffsetID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property Test_currentUtcOffsetID_currentUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest read GetTest_currentUtcOffsetID_currentUtcOffsetID write SetTest_currentUtcOffsetID_currentUtcOffsetID;
  end;
  
  TcurrentUtcOffset = class(TNonPersistentEntity, IcurrentUtcOffset)
  private
    FcurrentUtcOffsetID: Integer;
    Fseconds: Integer;
    Fmilliseconds: Integer;
    Fticks: Integer;
    Fnanoseconds: Integer;
    [JSONMarshalled(False)] FTest_currentUtcOffsetID_currentUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
  public
    function GetcurrentUtcOffsetID: Integer;
    procedure SetcurrentUtcOffsetID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetTest_currentUtcOffsetID_currentUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
    procedure SetTest_currentUtcOffsetID_currentUtcOffsetID(const Value: TestCodolex.DataSource.JsonTest.ITest);
  
    property currentUtcOffsetID: Integer read GetcurrentUtcOffsetID write SetcurrentUtcOffsetID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property Test_currentUtcOffsetID_currentUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest read GetTest_currentUtcOffsetID_currentUtcOffsetID write SetTest_currentUtcOffsetID_currentUtcOffsetID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.JsonTest.IcurrentUtcOffset')]
  TcurrentUtcOffsetDataBroker = class(TEntityDataBrokerNonPersistent, IEntityDataBrokerNonPersistent)
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.JsonTest.IcurrentUtcOffset')]
  TcurrentUtcOffsetDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  IdstDuration = interface(INonPersistentEntity)
    ['{BCF16E86-CF27-4EAC-911A-A99D2B2DE441}']
  
    function GetdstDurationID: Integer;
    procedure SetdstDurationID(const Value: Integer);
    function Getdays: Integer;
    procedure Setdays(const Value: Integer);
    function GetnanosecondOfDay: Integer;
    procedure SetnanosecondOfDay(const Value: Integer);
    function Gethours: Integer;
    procedure Sethours(const Value: Integer);
    function Getminutes: Integer;
    procedure Setminutes(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function GetsubsecondTicks: Integer;
    procedure SetsubsecondTicks(const Value: Integer);
    function GetsubsecondNanoseconds: Integer;
    procedure SetsubsecondNanoseconds(const Value: Integer);
    function GetbclCompatibleTicks: Integer;
    procedure SetbclCompatibleTicks(const Value: Integer);
    function GettotalDays: Integer;
    procedure SettotalDays(const Value: Integer);
    function GettotalHours: Integer;
    procedure SettotalHours(const Value: Integer);
    function GettotalMinutes: Integer;
    procedure SettotalMinutes(const Value: Integer);
    function GettotalSeconds: Integer;
    procedure SettotalSeconds(const Value: Integer);
    function GettotalMilliseconds: Integer;
    procedure SettotalMilliseconds(const Value: Integer);
    function GettotalTicks: Integer;
    procedure SettotalTicks(const Value: Integer);
    function GettotalNanoseconds: Integer;
    procedure SettotalNanoseconds(const Value: Integer);
    function GetdstInterval_dstDurationID_dstDurationID: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval_dstDurationID_dstDurationID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property dstDurationID: Integer read GetdstDurationID write SetdstDurationID;
    property days: Integer read Getdays write Setdays;
    property nanosecondOfDay: Integer read GetnanosecondOfDay write SetnanosecondOfDay;
    property hours: Integer read Gethours write Sethours;
    property minutes: Integer read Getminutes write Setminutes;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property subsecondTicks: Integer read GetsubsecondTicks write SetsubsecondTicks;
    property subsecondNanoseconds: Integer read GetsubsecondNanoseconds write SetsubsecondNanoseconds;
    property bclCompatibleTicks: Integer read GetbclCompatibleTicks write SetbclCompatibleTicks;
    property totalDays: Integer read GettotalDays write SettotalDays;
    property totalHours: Integer read GettotalHours write SettotalHours;
    property totalMinutes: Integer read GettotalMinutes write SettotalMinutes;
    property totalSeconds: Integer read GettotalSeconds write SettotalSeconds;
    property totalMilliseconds: Integer read GettotalMilliseconds write SettotalMilliseconds;
    property totalTicks: Integer read GettotalTicks write SettotalTicks;
    property totalNanoseconds: Integer read GettotalNanoseconds write SettotalNanoseconds;
    property dstInterval_dstDurationID_dstDurationID: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval_dstDurationID_dstDurationID write SetdstInterval_dstDurationID_dstDurationID;
  end;
  
  TdstDuration = class(TNonPersistentEntity, IdstDuration)
  private
    FdstDurationID: Integer;
    Fdays: Integer;
    FnanosecondOfDay: Integer;
    Fhours: Integer;
    Fminutes: Integer;
    Fseconds: Integer;
    Fmilliseconds: Integer;
    FsubsecondTicks: Integer;
    FsubsecondNanoseconds: Integer;
    FbclCompatibleTicks: Integer;
    FtotalDays: Integer;
    FtotalHours: Integer;
    FtotalMinutes: Integer;
    FtotalSeconds: Integer;
    FtotalMilliseconds: Integer;
    FtotalTicks: Integer;
    FtotalNanoseconds: Integer;
    [JSONMarshalled(False)] FdstInterval_dstDurationID_dstDurationID: TestCodolex.DataSource.JsonTest.IdstInterval;
  public
    function GetdstDurationID: Integer;
    procedure SetdstDurationID(const Value: Integer);
    function Getdays: Integer;
    procedure Setdays(const Value: Integer);
    function GetnanosecondOfDay: Integer;
    procedure SetnanosecondOfDay(const Value: Integer);
    function Gethours: Integer;
    procedure Sethours(const Value: Integer);
    function Getminutes: Integer;
    procedure Setminutes(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function GetsubsecondTicks: Integer;
    procedure SetsubsecondTicks(const Value: Integer);
    function GetsubsecondNanoseconds: Integer;
    procedure SetsubsecondNanoseconds(const Value: Integer);
    function GetbclCompatibleTicks: Integer;
    procedure SetbclCompatibleTicks(const Value: Integer);
    function GettotalDays: Integer;
    procedure SettotalDays(const Value: Integer);
    function GettotalHours: Integer;
    procedure SettotalHours(const Value: Integer);
    function GettotalMinutes: Integer;
    procedure SettotalMinutes(const Value: Integer);
    function GettotalSeconds: Integer;
    procedure SettotalSeconds(const Value: Integer);
    function GettotalMilliseconds: Integer;
    procedure SettotalMilliseconds(const Value: Integer);
    function GettotalTicks: Integer;
    procedure SettotalTicks(const Value: Integer);
    function GettotalNanoseconds: Integer;
    procedure SettotalNanoseconds(const Value: Integer);
    function GetdstInterval_dstDurationID_dstDurationID: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval_dstDurationID_dstDurationID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property dstDurationID: Integer read GetdstDurationID write SetdstDurationID;
    property days: Integer read Getdays write Setdays;
    property nanosecondOfDay: Integer read GetnanosecondOfDay write SetnanosecondOfDay;
    property hours: Integer read Gethours write Sethours;
    property minutes: Integer read Getminutes write Setminutes;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property subsecondTicks: Integer read GetsubsecondTicks write SetsubsecondTicks;
    property subsecondNanoseconds: Integer read GetsubsecondNanoseconds write SetsubsecondNanoseconds;
    property bclCompatibleTicks: Integer read GetbclCompatibleTicks write SetbclCompatibleTicks;
    property totalDays: Integer read GettotalDays write SettotalDays;
    property totalHours: Integer read GettotalHours write SettotalHours;
    property totalMinutes: Integer read GettotalMinutes write SettotalMinutes;
    property totalSeconds: Integer read GettotalSeconds write SettotalSeconds;
    property totalMilliseconds: Integer read GettotalMilliseconds write SettotalMilliseconds;
    property totalTicks: Integer read GettotalTicks write SettotalTicks;
    property totalNanoseconds: Integer read GettotalNanoseconds write SettotalNanoseconds;
    property dstInterval_dstDurationID_dstDurationID: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval_dstDurationID_dstDurationID write SetdstInterval_dstDurationID_dstDurationID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.JsonTest.IdstDuration')]
  TdstDurationDataBroker = class(TEntityDataBrokerNonPersistent, IEntityDataBrokerNonPersistent)
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.JsonTest.IdstDuration')]
  TdstDurationDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  IdstInterval = interface(INonPersistentEntity)
    ['{5247065D-DC48-4E72-9F0F-456910A1E24E}']
  
    function GetdstIntervalID: Integer;
    procedure SetdstIntervalID(const Value: Integer);
    function GetdstName: string;
    procedure SetdstName(const Value: string);
    function GetdstStart: string;
    procedure SetdstStart(const Value: string);
    function GetdstEnd: string;
    procedure SetdstEnd(const Value: string);
    function GetdstOffsetToUtcID: Integer;
    procedure SetdstOffsetToUtcID(const Value: Integer);
    function GetdstOffsetToStandardTimeID: Integer;
    procedure SetdstOffsetToStandardTimeID(const Value: Integer);
    function GetdstDurationID: Integer;
    procedure SetdstDurationID(const Value: Integer);
    function GetdstOffsetToUtc: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc;
    procedure SetdstOffsetToUtc(const Value: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc);
    function GetdstOffsetToStandardTime: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime;
    procedure SetdstOffsetToStandardTime(const Value: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime);
    function GetdstDuration: TestCodolex.DataSource.JsonTest.IdstDuration;
    procedure SetdstDuration(const Value: TestCodolex.DataSource.JsonTest.IdstDuration);
    function GetTest_dstIntervalID_dstIntervalID: TestCodolex.DataSource.JsonTest.ITest;
    procedure SetTest_dstIntervalID_dstIntervalID(const Value: TestCodolex.DataSource.JsonTest.ITest);
  
    property dstIntervalID: Integer read GetdstIntervalID write SetdstIntervalID;
    property dstName: string read GetdstName write SetdstName;
    property dstStart: string read GetdstStart write SetdstStart;
    property dstEnd: string read GetdstEnd write SetdstEnd;
    property dstOffsetToUtcID: Integer read GetdstOffsetToUtcID write SetdstOffsetToUtcID;
    property dstOffsetToStandardTimeID: Integer read GetdstOffsetToStandardTimeID write SetdstOffsetToStandardTimeID;
    property dstDurationID: Integer read GetdstDurationID write SetdstDurationID;
    property dstOffsetToUtc: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc read GetdstOffsetToUtc write SetdstOffsetToUtc;
    property dstOffsetToStandardTime: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime read GetdstOffsetToStandardTime write SetdstOffsetToStandardTime;
    property dstDuration: TestCodolex.DataSource.JsonTest.IdstDuration read GetdstDuration write SetdstDuration;
    property Test_dstIntervalID_dstIntervalID: TestCodolex.DataSource.JsonTest.ITest read GetTest_dstIntervalID_dstIntervalID write SetTest_dstIntervalID_dstIntervalID;
  end;
  
  TdstInterval = class(TNonPersistentEntity, IdstInterval)
  private
    FdstIntervalID: Integer;
    FdstName: string;
    FdstStart: string;
    FdstEnd: string;
    FdstOffsetToUtcID: Integer;
    FdstOffsetToStandardTimeID: Integer;
    FdstDurationID: Integer;
    [JSONMarshalled(False)] FdstOffsetToUtc: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc;
    [JSONMarshalled(False)] FdstOffsetToStandardTime: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime;
    [JSONMarshalled(False)] FdstDuration: TestCodolex.DataSource.JsonTest.IdstDuration;
    [JSONMarshalled(False)] FTest_dstIntervalID_dstIntervalID: TestCodolex.DataSource.JsonTest.ITest;
  public
    function GetdstIntervalID: Integer;
    procedure SetdstIntervalID(const Value: Integer);
    function GetdstName: string;
    procedure SetdstName(const Value: string);
    function GetdstStart: string;
    procedure SetdstStart(const Value: string);
    function GetdstEnd: string;
    procedure SetdstEnd(const Value: string);
    function GetdstOffsetToUtcID: Integer;
    procedure SetdstOffsetToUtcID(const Value: Integer);
    function GetdstOffsetToStandardTimeID: Integer;
    procedure SetdstOffsetToStandardTimeID(const Value: Integer);
    function GetdstDurationID: Integer;
    procedure SetdstDurationID(const Value: Integer);
    function GetdstOffsetToUtc: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc;
    procedure SetdstOffsetToUtc(const Value: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc);
    function GetdstOffsetToStandardTime: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime;
    procedure SetdstOffsetToStandardTime(const Value: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime);
    function GetdstDuration: TestCodolex.DataSource.JsonTest.IdstDuration;
    procedure SetdstDuration(const Value: TestCodolex.DataSource.JsonTest.IdstDuration);
    function GetTest_dstIntervalID_dstIntervalID: TestCodolex.DataSource.JsonTest.ITest;
    procedure SetTest_dstIntervalID_dstIntervalID(const Value: TestCodolex.DataSource.JsonTest.ITest);
  
    property dstIntervalID: Integer read GetdstIntervalID write SetdstIntervalID;
    property dstName: string read GetdstName write SetdstName;
    property dstStart: string read GetdstStart write SetdstStart;
    property dstEnd: string read GetdstEnd write SetdstEnd;
    property dstOffsetToUtcID: Integer read GetdstOffsetToUtcID write SetdstOffsetToUtcID;
    property dstOffsetToStandardTimeID: Integer read GetdstOffsetToStandardTimeID write SetdstOffsetToStandardTimeID;
    property dstDurationID: Integer read GetdstDurationID write SetdstDurationID;
    property dstOffsetToUtc: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc read GetdstOffsetToUtc write SetdstOffsetToUtc;
    property dstOffsetToStandardTime: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime read GetdstOffsetToStandardTime write SetdstOffsetToStandardTime;
    property dstDuration: TestCodolex.DataSource.JsonTest.IdstDuration read GetdstDuration write SetdstDuration;
    property Test_dstIntervalID_dstIntervalID: TestCodolex.DataSource.JsonTest.ITest read GetTest_dstIntervalID_dstIntervalID write SetTest_dstIntervalID_dstIntervalID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.JsonTest.IdstInterval')]
  TdstIntervalDataBroker = class(TEntityDataBrokerNonPersistent, IEntityDataBrokerNonPersistent)
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.JsonTest.IdstInterval')]
  TdstIntervalDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  IdstOffsetToStandardTime = interface(INonPersistentEntity)
    ['{82D52D13-DDBB-4B63-A5CA-775E70036EE7}']
  
    function GetdstOffsetToStandardTimeID: Integer;
    procedure SetdstOffsetToStandardTimeID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property dstOffsetToStandardTimeID: Integer read GetdstOffsetToStandardTimeID write SetdstOffsetToStandardTimeID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property dstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID write SetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID;
  end;
  
  TdstOffsetToStandardTime = class(TNonPersistentEntity, IdstOffsetToStandardTime)
  private
    FdstOffsetToStandardTimeID: Integer;
    Fseconds: Integer;
    Fmilliseconds: Integer;
    Fticks: Integer;
    Fnanoseconds: Integer;
    [JSONMarshalled(False)] FdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID: TestCodolex.DataSource.JsonTest.IdstInterval;
  public
    function GetdstOffsetToStandardTimeID: Integer;
    procedure SetdstOffsetToStandardTimeID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property dstOffsetToStandardTimeID: Integer read GetdstOffsetToStandardTimeID write SetdstOffsetToStandardTimeID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property dstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID write SetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime')]
  TdstOffsetToStandardTimeDataBroker = class(TEntityDataBrokerNonPersistent, IEntityDataBrokerNonPersistent)
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime')]
  TdstOffsetToStandardTimeDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  IdstOffsetToUtc = interface(INonPersistentEntity)
    ['{B1FEC431-FF24-4221-930A-B57219D20086}']
  
    function GetdstOffsetToUtcID: Integer;
    procedure SetdstOffsetToUtcID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property dstOffsetToUtcID: Integer read GetdstOffsetToUtcID write SetdstOffsetToUtcID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property dstInterval_dstOffsetToUtcID_dstOffsetToUtcID: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID write SetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID;
  end;
  
  TdstOffsetToUtc = class(TNonPersistentEntity, IdstOffsetToUtc)
  private
    FdstOffsetToUtcID: Integer;
    Fseconds: Integer;
    Fmilliseconds: Integer;
    Fticks: Integer;
    Fnanoseconds: Integer;
    [JSONMarshalled(False)] FdstInterval_dstOffsetToUtcID_dstOffsetToUtcID: TestCodolex.DataSource.JsonTest.IdstInterval;
  public
    function GetdstOffsetToUtcID: Integer;
    procedure SetdstOffsetToUtcID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID: TestCodolex.DataSource.JsonTest.IdstInterval;
    procedure SetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
  
    property dstOffsetToUtcID: Integer read GetdstOffsetToUtcID write SetdstOffsetToUtcID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property dstInterval_dstOffsetToUtcID_dstOffsetToUtcID: TestCodolex.DataSource.JsonTest.IdstInterval read GetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID write SetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.JsonTest.IdstOffsetToUtc')]
  TdstOffsetToUtcDataBroker = class(TEntityDataBrokerNonPersistent, IEntityDataBrokerNonPersistent)
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.JsonTest.IdstOffsetToUtc')]
  TdstOffsetToUtcDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  IstandardUtcOffset = interface(INonPersistentEntity)
    ['{E653AA0C-22AE-4D92-8E6A-79DA25FBBA6A}']
  
    function GetstandardUtcOffsetID: Integer;
    procedure SetstandardUtcOffsetID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetTest_standardUtcOffsetID_standardUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
    procedure SetTest_standardUtcOffsetID_standardUtcOffsetID(const Value: TestCodolex.DataSource.JsonTest.ITest);
  
    property standardUtcOffsetID: Integer read GetstandardUtcOffsetID write SetstandardUtcOffsetID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property Test_standardUtcOffsetID_standardUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest read GetTest_standardUtcOffsetID_standardUtcOffsetID write SetTest_standardUtcOffsetID_standardUtcOffsetID;
  end;
  
  TstandardUtcOffset = class(TNonPersistentEntity, IstandardUtcOffset)
  private
    FstandardUtcOffsetID: Integer;
    Fseconds: Integer;
    Fmilliseconds: Integer;
    Fticks: Integer;
    Fnanoseconds: Integer;
    [JSONMarshalled(False)] FTest_standardUtcOffsetID_standardUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
  public
    function GetstandardUtcOffsetID: Integer;
    procedure SetstandardUtcOffsetID(const Value: Integer);
    function Getseconds: Integer;
    procedure Setseconds(const Value: Integer);
    function Getmilliseconds: Integer;
    procedure Setmilliseconds(const Value: Integer);
    function Getticks: Integer;
    procedure Setticks(const Value: Integer);
    function Getnanoseconds: Integer;
    procedure Setnanoseconds(const Value: Integer);
    function GetTest_standardUtcOffsetID_standardUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
    procedure SetTest_standardUtcOffsetID_standardUtcOffsetID(const Value: TestCodolex.DataSource.JsonTest.ITest);
  
    property standardUtcOffsetID: Integer read GetstandardUtcOffsetID write SetstandardUtcOffsetID;
    property seconds: Integer read Getseconds write Setseconds;
    property milliseconds: Integer read Getmilliseconds write Setmilliseconds;
    property ticks: Integer read Getticks write Setticks;
    property nanoseconds: Integer read Getnanoseconds write Setnanoseconds;
    property Test_standardUtcOffsetID_standardUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest read GetTest_standardUtcOffsetID_standardUtcOffsetID write SetTest_standardUtcOffsetID_standardUtcOffsetID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.JsonTest.IstandardUtcOffset')]
  TstandardUtcOffsetDataBroker = class(TEntityDataBrokerNonPersistent, IEntityDataBrokerNonPersistent)
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.JsonTest.IstandardUtcOffset')]
  TstandardUtcOffsetDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  
function TestDataBroker: IEntityDataBrokerNonPersistent;
function currentUtcOffsetDataBroker: IEntityDataBrokerNonPersistent;
function dstDurationDataBroker: IEntityDataBrokerNonPersistent;
function dstIntervalDataBroker: IEntityDataBrokerNonPersistent;
function dstOffsetToStandardTimeDataBroker: IEntityDataBrokerNonPersistent;
function dstOffsetToUtcDataBroker: IEntityDataBrokerNonPersistent;
function standardUtcOffsetDataBroker: IEntityDataBrokerNonPersistent;

implementation

uses
  Codolex.Framework;

function TestDataBroker: IEntityDataBrokerNonPersistent;
begin
  Result := TTestDataBroker.Create();
end;

{ TTest }

function TTest.GetTestID: Integer;
begin
  Result := FTestID;
end;

procedure TTest.SetTestID(const Value: Integer);
begin
  if FTestID <> Value then
  begin
    FTestID := Value;
    NotifyChange('TestID');
  end;
end;

function TTest.GettimeZone: string;
begin
  Result := FtimeZone;
end;

procedure TTest.SettimeZone(const Value: string);
begin
  if FtimeZone <> Value then
  begin
    FtimeZone := Value;
    NotifyChange('timeZone');
  end;
end;

function TTest.GetcurrentLocalTime: string;
begin
  Result := FcurrentLocalTime;
end;

procedure TTest.SetcurrentLocalTime(const Value: string);
begin
  if FcurrentLocalTime <> Value then
  begin
    FcurrentLocalTime := Value;
    NotifyChange('currentLocalTime');
  end;
end;

function TTest.GethasDayLightSaving: Boolean;
begin
  Result := FhasDayLightSaving;
end;

procedure TTest.SethasDayLightSaving(const Value: Boolean);
begin
  if FhasDayLightSaving <> Value then
  begin
    FhasDayLightSaving := Value;
    NotifyChange('hasDayLightSaving');
  end;
end;

function TTest.GetisDayLightSavingActive: Boolean;
begin
  Result := FisDayLightSavingActive;
end;

procedure TTest.SetisDayLightSavingActive(const Value: Boolean);
begin
  if FisDayLightSavingActive <> Value then
  begin
    FisDayLightSavingActive := Value;
    NotifyChange('isDayLightSavingActive');
  end;
end;

function TTest.GetcurrentUtcOffsetID: Integer;
begin
  Result := FcurrentUtcOffsetID;
end;

procedure TTest.SetcurrentUtcOffsetID(const Value: Integer);
begin
  if FcurrentUtcOffsetID <> Value then
  begin
    FcurrentUtcOffsetID := Value;
    NotifyChange('currentUtcOffsetID');
  end;
end;

function TTest.GetstandardUtcOffsetID: Integer;
begin
  Result := FstandardUtcOffsetID;
end;

procedure TTest.SetstandardUtcOffsetID(const Value: Integer);
begin
  if FstandardUtcOffsetID <> Value then
  begin
    FstandardUtcOffsetID := Value;
    NotifyChange('standardUtcOffsetID');
  end;
end;

function TTest.GetdstIntervalID: Integer;
begin
  Result := FdstIntervalID;
end;

procedure TTest.SetdstIntervalID(const Value: Integer);
begin
  if FdstIntervalID <> Value then
  begin
    FdstIntervalID := Value;
    NotifyChange('dstIntervalID');
  end;
end;

function TTest.GetcurrentUtcOffset: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset;
begin
  Result := FcurrentUtcOffset;
end;

procedure TTest.SetcurrentUtcOffset(const Value: TestCodolex.DataSource.JsonTest.IcurrentUtcOffset);
begin
  if FcurrentUtcOffset <> Value then
  begin
    FcurrentUtcOffset := Value;
    NotifyChange('currentUtcOffset');
  end;
end;

function TTest.GetstandardUtcOffset: TestCodolex.DataSource.JsonTest.IstandardUtcOffset;
begin
  Result := FstandardUtcOffset;
end;

procedure TTest.SetstandardUtcOffset(const Value: TestCodolex.DataSource.JsonTest.IstandardUtcOffset);
begin
  if FstandardUtcOffset <> Value then
  begin
    FstandardUtcOffset := Value;
    NotifyChange('standardUtcOffset');
  end;
end;

function TTest.GetdstInterval: TestCodolex.DataSource.JsonTest.IdstInterval;
begin
  Result := FdstInterval;
end;

procedure TTest.SetdstInterval(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
begin
  if FdstInterval <> Value then
  begin
    FdstInterval := Value;
    NotifyChange('dstInterval');
  end;
end;

{ TTestDataSetAdapter }

procedure TTestDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TTest;
  
  FDataset.FieldByName('TestID').AsInteger := Entity.TestID;
  FDataset.FieldByName('timeZone').AsString := Entity.timeZone;
  FDataset.FieldByName('currentLocalTime').AsString := Entity.currentLocalTime;
  FDataset.FieldByName('hasDayLightSaving').AsBoolean := Entity.hasDayLightSaving;
  FDataset.FieldByName('isDayLightSavingActive').AsBoolean := Entity.isDayLightSavingActive;
  FDataset.FieldByName('currentUtcOffsetID').AsInteger := Entity.currentUtcOffsetID;
  FDataset.FieldByName('standardUtcOffsetID').AsInteger := Entity.standardUtcOffsetID;
  FDataset.FieldByName('dstIntervalID').AsInteger := Entity.dstIntervalID;
end;

procedure TTestDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TTest;
  
  Entity.TestID := FDataset.FieldByName('TestID').AsInteger;
  Entity.timeZone := FDataset.FieldByName('timeZone').AsString;
  Entity.currentLocalTime := FDataset.FieldByName('currentLocalTime').AsString;
  Entity.hasDayLightSaving := FDataset.FieldByName('hasDayLightSaving').AsBoolean;
  Entity.isDayLightSavingActive := FDataset.FieldByName('isDayLightSavingActive').AsBoolean;
  Entity.currentUtcOffsetID := FDataset.FieldByName('currentUtcOffsetID').AsInteger;
  Entity.standardUtcOffsetID := FDataset.FieldByName('standardUtcOffsetID').AsInteger;
  Entity.dstIntervalID := FDataset.FieldByName('dstIntervalID').AsInteger;
end;

function TTestDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TTest.Create;
end;

procedure TTestDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TTest;
  
  if FieldName = 'TestID' then
    Value := Entity.TestID
  else
  if FieldName = 'timeZone' then
    Value := Entity.timeZone
  else
  if FieldName = 'currentLocalTime' then
    Value := Entity.currentLocalTime
  else
  if FieldName = 'hasDayLightSaving' then
    Value := Entity.hasDayLightSaving
  else
  if FieldName = 'isDayLightSavingActive' then
    Value := Entity.isDayLightSavingActive
  else
  if FieldName = 'currentUtcOffsetID' then
    Value := Entity.currentUtcOffsetID
  else
  if FieldName = 'standardUtcOffsetID' then
    Value := Entity.standardUtcOffsetID
  else
  if FieldName = 'dstIntervalID' then
    Value := Entity.dstIntervalID;
end;

procedure TTestDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TTest;
  
  if FieldName = 'TestID' then
    Entity.TestID := Value
  else
  if FieldName = 'timeZone' then
    Entity.timeZone := Value
  else
  if FieldName = 'currentLocalTime' then
    Entity.currentLocalTime := Value
  else
  if FieldName = 'hasDayLightSaving' then
    Entity.hasDayLightSaving := Value
  else
  if FieldName = 'isDayLightSavingActive' then
    Entity.isDayLightSavingActive := Value
  else
  if FieldName = 'currentUtcOffsetID' then
    Entity.currentUtcOffsetID := Value
  else
  if FieldName = 'standardUtcOffsetID' then
    Entity.standardUtcOffsetID := Value
  else
  if FieldName = 'dstIntervalID' then
    Entity.dstIntervalID := Value;
end;

procedure TTestDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'TestID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'timeZone';
  FieldDef.DataType := ftString;
  FieldDef.Size := 16;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'currentLocalTime';
  FieldDef.DataType := ftString;
  FieldDef.Size := 27;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'hasDayLightSaving';
  FieldDef.DataType := ftBoolean;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'isDayLightSavingActive';
  FieldDef.DataType := ftBoolean;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'currentUtcOffsetID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'standardUtcOffsetID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstIntervalID';
  FieldDef.DataType := ftInteger;
end;

function currentUtcOffsetDataBroker: IEntityDataBrokerNonPersistent;
begin
  Result := TcurrentUtcOffsetDataBroker.Create();
end;

{ TcurrentUtcOffset }

function TcurrentUtcOffset.GetcurrentUtcOffsetID: Integer;
begin
  Result := FcurrentUtcOffsetID;
end;

procedure TcurrentUtcOffset.SetcurrentUtcOffsetID(const Value: Integer);
begin
  if FcurrentUtcOffsetID <> Value then
  begin
    FcurrentUtcOffsetID := Value;
    NotifyChange('currentUtcOffsetID');
  end;
end;

function TcurrentUtcOffset.Getseconds: Integer;
begin
  Result := Fseconds;
end;

procedure TcurrentUtcOffset.Setseconds(const Value: Integer);
begin
  if Fseconds <> Value then
  begin
    Fseconds := Value;
    NotifyChange('seconds');
  end;
end;

function TcurrentUtcOffset.Getmilliseconds: Integer;
begin
  Result := Fmilliseconds;
end;

procedure TcurrentUtcOffset.Setmilliseconds(const Value: Integer);
begin
  if Fmilliseconds <> Value then
  begin
    Fmilliseconds := Value;
    NotifyChange('milliseconds');
  end;
end;

function TcurrentUtcOffset.Getticks: Integer;
begin
  Result := Fticks;
end;

procedure TcurrentUtcOffset.Setticks(const Value: Integer);
begin
  if Fticks <> Value then
  begin
    Fticks := Value;
    NotifyChange('ticks');
  end;
end;

function TcurrentUtcOffset.Getnanoseconds: Integer;
begin
  Result := Fnanoseconds;
end;

procedure TcurrentUtcOffset.Setnanoseconds(const Value: Integer);
begin
  if Fnanoseconds <> Value then
  begin
    Fnanoseconds := Value;
    NotifyChange('nanoseconds');
  end;
end;

function TcurrentUtcOffset.GetTest_currentUtcOffsetID_currentUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
begin
  Result := FTest_currentUtcOffsetID_currentUtcOffsetID;
end;

procedure TcurrentUtcOffset.SetTest_currentUtcOffsetID_currentUtcOffsetID(const Value: TestCodolex.DataSource.JsonTest.ITest);
begin
  if FTest_currentUtcOffsetID_currentUtcOffsetID <> Value then
  begin
    FTest_currentUtcOffsetID_currentUtcOffsetID := Value;
    NotifyChange('Test_currentUtcOffsetID_currentUtcOffsetID');
  end;
end;

{ TcurrentUtcOffsetDataSetAdapter }

procedure TcurrentUtcOffsetDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TcurrentUtcOffset;
  
  FDataset.FieldByName('currentUtcOffsetID').AsInteger := Entity.currentUtcOffsetID;
  FDataset.FieldByName('seconds').AsInteger := Entity.seconds;
  FDataset.FieldByName('milliseconds').AsInteger := Entity.milliseconds;
  FDataset.FieldByName('ticks').AsInteger := Entity.ticks;
  FDataset.FieldByName('nanoseconds').AsInteger := Entity.nanoseconds;
end;

procedure TcurrentUtcOffsetDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TcurrentUtcOffset;
  
  Entity.currentUtcOffsetID := FDataset.FieldByName('currentUtcOffsetID').AsInteger;
  Entity.seconds := FDataset.FieldByName('seconds').AsInteger;
  Entity.milliseconds := FDataset.FieldByName('milliseconds').AsInteger;
  Entity.ticks := FDataset.FieldByName('ticks').AsInteger;
  Entity.nanoseconds := FDataset.FieldByName('nanoseconds').AsInteger;
end;

function TcurrentUtcOffsetDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TcurrentUtcOffset.Create;
end;

procedure TcurrentUtcOffsetDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TcurrentUtcOffset;
  
  if FieldName = 'currentUtcOffsetID' then
    Value := Entity.currentUtcOffsetID
  else
  if FieldName = 'seconds' then
    Value := Entity.seconds
  else
  if FieldName = 'milliseconds' then
    Value := Entity.milliseconds
  else
  if FieldName = 'ticks' then
    Value := Entity.ticks
  else
  if FieldName = 'nanoseconds' then
    Value := Entity.nanoseconds;
end;

procedure TcurrentUtcOffsetDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TcurrentUtcOffset;
  
  if FieldName = 'currentUtcOffsetID' then
    Entity.currentUtcOffsetID := Value
  else
  if FieldName = 'seconds' then
    Entity.seconds := Value
  else
  if FieldName = 'milliseconds' then
    Entity.milliseconds := Value
  else
  if FieldName = 'ticks' then
    Entity.ticks := Value
  else
  if FieldName = 'nanoseconds' then
    Entity.nanoseconds := Value;
end;

procedure TcurrentUtcOffsetDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'currentUtcOffsetID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'seconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'milliseconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ticks';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'nanoseconds';
  FieldDef.DataType := ftInteger;
end;

function dstDurationDataBroker: IEntityDataBrokerNonPersistent;
begin
  Result := TdstDurationDataBroker.Create();
end;

{ TdstDuration }

function TdstDuration.GetdstDurationID: Integer;
begin
  Result := FdstDurationID;
end;

procedure TdstDuration.SetdstDurationID(const Value: Integer);
begin
  if FdstDurationID <> Value then
  begin
    FdstDurationID := Value;
    NotifyChange('dstDurationID');
  end;
end;

function TdstDuration.Getdays: Integer;
begin
  Result := Fdays;
end;

procedure TdstDuration.Setdays(const Value: Integer);
begin
  if Fdays <> Value then
  begin
    Fdays := Value;
    NotifyChange('days');
  end;
end;

function TdstDuration.GetnanosecondOfDay: Integer;
begin
  Result := FnanosecondOfDay;
end;

procedure TdstDuration.SetnanosecondOfDay(const Value: Integer);
begin
  if FnanosecondOfDay <> Value then
  begin
    FnanosecondOfDay := Value;
    NotifyChange('nanosecondOfDay');
  end;
end;

function TdstDuration.Gethours: Integer;
begin
  Result := Fhours;
end;

procedure TdstDuration.Sethours(const Value: Integer);
begin
  if Fhours <> Value then
  begin
    Fhours := Value;
    NotifyChange('hours');
  end;
end;

function TdstDuration.Getminutes: Integer;
begin
  Result := Fminutes;
end;

procedure TdstDuration.Setminutes(const Value: Integer);
begin
  if Fminutes <> Value then
  begin
    Fminutes := Value;
    NotifyChange('minutes');
  end;
end;

function TdstDuration.Getseconds: Integer;
begin
  Result := Fseconds;
end;

procedure TdstDuration.Setseconds(const Value: Integer);
begin
  if Fseconds <> Value then
  begin
    Fseconds := Value;
    NotifyChange('seconds');
  end;
end;

function TdstDuration.Getmilliseconds: Integer;
begin
  Result := Fmilliseconds;
end;

procedure TdstDuration.Setmilliseconds(const Value: Integer);
begin
  if Fmilliseconds <> Value then
  begin
    Fmilliseconds := Value;
    NotifyChange('milliseconds');
  end;
end;

function TdstDuration.GetsubsecondTicks: Integer;
begin
  Result := FsubsecondTicks;
end;

procedure TdstDuration.SetsubsecondTicks(const Value: Integer);
begin
  if FsubsecondTicks <> Value then
  begin
    FsubsecondTicks := Value;
    NotifyChange('subsecondTicks');
  end;
end;

function TdstDuration.GetsubsecondNanoseconds: Integer;
begin
  Result := FsubsecondNanoseconds;
end;

procedure TdstDuration.SetsubsecondNanoseconds(const Value: Integer);
begin
  if FsubsecondNanoseconds <> Value then
  begin
    FsubsecondNanoseconds := Value;
    NotifyChange('subsecondNanoseconds');
  end;
end;

function TdstDuration.GetbclCompatibleTicks: Integer;
begin
  Result := FbclCompatibleTicks;
end;

procedure TdstDuration.SetbclCompatibleTicks(const Value: Integer);
begin
  if FbclCompatibleTicks <> Value then
  begin
    FbclCompatibleTicks := Value;
    NotifyChange('bclCompatibleTicks');
  end;
end;

function TdstDuration.GettotalDays: Integer;
begin
  Result := FtotalDays;
end;

procedure TdstDuration.SettotalDays(const Value: Integer);
begin
  if FtotalDays <> Value then
  begin
    FtotalDays := Value;
    NotifyChange('totalDays');
  end;
end;

function TdstDuration.GettotalHours: Integer;
begin
  Result := FtotalHours;
end;

procedure TdstDuration.SettotalHours(const Value: Integer);
begin
  if FtotalHours <> Value then
  begin
    FtotalHours := Value;
    NotifyChange('totalHours');
  end;
end;

function TdstDuration.GettotalMinutes: Integer;
begin
  Result := FtotalMinutes;
end;

procedure TdstDuration.SettotalMinutes(const Value: Integer);
begin
  if FtotalMinutes <> Value then
  begin
    FtotalMinutes := Value;
    NotifyChange('totalMinutes');
  end;
end;

function TdstDuration.GettotalSeconds: Integer;
begin
  Result := FtotalSeconds;
end;

procedure TdstDuration.SettotalSeconds(const Value: Integer);
begin
  if FtotalSeconds <> Value then
  begin
    FtotalSeconds := Value;
    NotifyChange('totalSeconds');
  end;
end;

function TdstDuration.GettotalMilliseconds: Integer;
begin
  Result := FtotalMilliseconds;
end;

procedure TdstDuration.SettotalMilliseconds(const Value: Integer);
begin
  if FtotalMilliseconds <> Value then
  begin
    FtotalMilliseconds := Value;
    NotifyChange('totalMilliseconds');
  end;
end;

function TdstDuration.GettotalTicks: Integer;
begin
  Result := FtotalTicks;
end;

procedure TdstDuration.SettotalTicks(const Value: Integer);
begin
  if FtotalTicks <> Value then
  begin
    FtotalTicks := Value;
    NotifyChange('totalTicks');
  end;
end;

function TdstDuration.GettotalNanoseconds: Integer;
begin
  Result := FtotalNanoseconds;
end;

procedure TdstDuration.SettotalNanoseconds(const Value: Integer);
begin
  if FtotalNanoseconds <> Value then
  begin
    FtotalNanoseconds := Value;
    NotifyChange('totalNanoseconds');
  end;
end;

function TdstDuration.GetdstInterval_dstDurationID_dstDurationID: TestCodolex.DataSource.JsonTest.IdstInterval;
begin
  Result := FdstInterval_dstDurationID_dstDurationID;
end;

procedure TdstDuration.SetdstInterval_dstDurationID_dstDurationID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
begin
  if FdstInterval_dstDurationID_dstDurationID <> Value then
  begin
    FdstInterval_dstDurationID_dstDurationID := Value;
    NotifyChange('dstInterval_dstDurationID_dstDurationID');
  end;
end;

{ TdstDurationDataSetAdapter }

procedure TdstDurationDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TdstDuration;
  
  FDataset.FieldByName('dstDurationID').AsInteger := Entity.dstDurationID;
  FDataset.FieldByName('days').AsInteger := Entity.days;
  FDataset.FieldByName('nanosecondOfDay').AsInteger := Entity.nanosecondOfDay;
  FDataset.FieldByName('hours').AsInteger := Entity.hours;
  FDataset.FieldByName('minutes').AsInteger := Entity.minutes;
  FDataset.FieldByName('seconds').AsInteger := Entity.seconds;
  FDataset.FieldByName('milliseconds').AsInteger := Entity.milliseconds;
  FDataset.FieldByName('subsecondTicks').AsInteger := Entity.subsecondTicks;
  FDataset.FieldByName('subsecondNanoseconds').AsInteger := Entity.subsecondNanoseconds;
  FDataset.FieldByName('bclCompatibleTicks').AsInteger := Entity.bclCompatibleTicks;
  FDataset.FieldByName('totalDays').AsInteger := Entity.totalDays;
  FDataset.FieldByName('totalHours').AsInteger := Entity.totalHours;
  FDataset.FieldByName('totalMinutes').AsInteger := Entity.totalMinutes;
  FDataset.FieldByName('totalSeconds').AsInteger := Entity.totalSeconds;
  FDataset.FieldByName('totalMilliseconds').AsInteger := Entity.totalMilliseconds;
  FDataset.FieldByName('totalTicks').AsInteger := Entity.totalTicks;
  FDataset.FieldByName('totalNanoseconds').AsInteger := Entity.totalNanoseconds;
end;

procedure TdstDurationDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TdstDuration;
  
  Entity.dstDurationID := FDataset.FieldByName('dstDurationID').AsInteger;
  Entity.days := FDataset.FieldByName('days').AsInteger;
  Entity.nanosecondOfDay := FDataset.FieldByName('nanosecondOfDay').AsInteger;
  Entity.hours := FDataset.FieldByName('hours').AsInteger;
  Entity.minutes := FDataset.FieldByName('minutes').AsInteger;
  Entity.seconds := FDataset.FieldByName('seconds').AsInteger;
  Entity.milliseconds := FDataset.FieldByName('milliseconds').AsInteger;
  Entity.subsecondTicks := FDataset.FieldByName('subsecondTicks').AsInteger;
  Entity.subsecondNanoseconds := FDataset.FieldByName('subsecondNanoseconds').AsInteger;
  Entity.bclCompatibleTicks := FDataset.FieldByName('bclCompatibleTicks').AsInteger;
  Entity.totalDays := FDataset.FieldByName('totalDays').AsInteger;
  Entity.totalHours := FDataset.FieldByName('totalHours').AsInteger;
  Entity.totalMinutes := FDataset.FieldByName('totalMinutes').AsInteger;
  Entity.totalSeconds := FDataset.FieldByName('totalSeconds').AsInteger;
  Entity.totalMilliseconds := FDataset.FieldByName('totalMilliseconds').AsInteger;
  Entity.totalTicks := FDataset.FieldByName('totalTicks').AsInteger;
  Entity.totalNanoseconds := FDataset.FieldByName('totalNanoseconds').AsInteger;
end;

function TdstDurationDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TdstDuration.Create;
end;

procedure TdstDurationDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstDuration;
  
  if FieldName = 'dstDurationID' then
    Value := Entity.dstDurationID
  else
  if FieldName = 'days' then
    Value := Entity.days
  else
  if FieldName = 'nanosecondOfDay' then
    Value := Entity.nanosecondOfDay
  else
  if FieldName = 'hours' then
    Value := Entity.hours
  else
  if FieldName = 'minutes' then
    Value := Entity.minutes
  else
  if FieldName = 'seconds' then
    Value := Entity.seconds
  else
  if FieldName = 'milliseconds' then
    Value := Entity.milliseconds
  else
  if FieldName = 'subsecondTicks' then
    Value := Entity.subsecondTicks
  else
  if FieldName = 'subsecondNanoseconds' then
    Value := Entity.subsecondNanoseconds
  else
  if FieldName = 'bclCompatibleTicks' then
    Value := Entity.bclCompatibleTicks
  else
  if FieldName = 'totalDays' then
    Value := Entity.totalDays
  else
  if FieldName = 'totalHours' then
    Value := Entity.totalHours
  else
  if FieldName = 'totalMinutes' then
    Value := Entity.totalMinutes
  else
  if FieldName = 'totalSeconds' then
    Value := Entity.totalSeconds
  else
  if FieldName = 'totalMilliseconds' then
    Value := Entity.totalMilliseconds
  else
  if FieldName = 'totalTicks' then
    Value := Entity.totalTicks
  else
  if FieldName = 'totalNanoseconds' then
    Value := Entity.totalNanoseconds;
end;

procedure TdstDurationDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstDuration;
  
  if FieldName = 'dstDurationID' then
    Entity.dstDurationID := Value
  else
  if FieldName = 'days' then
    Entity.days := Value
  else
  if FieldName = 'nanosecondOfDay' then
    Entity.nanosecondOfDay := Value
  else
  if FieldName = 'hours' then
    Entity.hours := Value
  else
  if FieldName = 'minutes' then
    Entity.minutes := Value
  else
  if FieldName = 'seconds' then
    Entity.seconds := Value
  else
  if FieldName = 'milliseconds' then
    Entity.milliseconds := Value
  else
  if FieldName = 'subsecondTicks' then
    Entity.subsecondTicks := Value
  else
  if FieldName = 'subsecondNanoseconds' then
    Entity.subsecondNanoseconds := Value
  else
  if FieldName = 'bclCompatibleTicks' then
    Entity.bclCompatibleTicks := Value
  else
  if FieldName = 'totalDays' then
    Entity.totalDays := Value
  else
  if FieldName = 'totalHours' then
    Entity.totalHours := Value
  else
  if FieldName = 'totalMinutes' then
    Entity.totalMinutes := Value
  else
  if FieldName = 'totalSeconds' then
    Entity.totalSeconds := Value
  else
  if FieldName = 'totalMilliseconds' then
    Entity.totalMilliseconds := Value
  else
  if FieldName = 'totalTicks' then
    Entity.totalTicks := Value
  else
  if FieldName = 'totalNanoseconds' then
    Entity.totalNanoseconds := Value;
end;

procedure TdstDurationDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstDurationID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'days';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'nanosecondOfDay';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'hours';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'minutes';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'seconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'milliseconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'subsecondTicks';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'subsecondNanoseconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'bclCompatibleTicks';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'totalDays';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'totalHours';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'totalMinutes';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'totalSeconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'totalMilliseconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'totalTicks';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'totalNanoseconds';
  FieldDef.DataType := ftInteger;
end;

function dstIntervalDataBroker: IEntityDataBrokerNonPersistent;
begin
  Result := TdstIntervalDataBroker.Create();
end;

{ TdstInterval }

function TdstInterval.GetdstIntervalID: Integer;
begin
  Result := FdstIntervalID;
end;

procedure TdstInterval.SetdstIntervalID(const Value: Integer);
begin
  if FdstIntervalID <> Value then
  begin
    FdstIntervalID := Value;
    NotifyChange('dstIntervalID');
  end;
end;

function TdstInterval.GetdstName: string;
begin
  Result := FdstName;
end;

procedure TdstInterval.SetdstName(const Value: string);
begin
  if FdstName <> Value then
  begin
    FdstName := Value;
    NotifyChange('dstName');
  end;
end;

function TdstInterval.GetdstStart: string;
begin
  Result := FdstStart;
end;

procedure TdstInterval.SetdstStart(const Value: string);
begin
  if FdstStart <> Value then
  begin
    FdstStart := Value;
    NotifyChange('dstStart');
  end;
end;

function TdstInterval.GetdstEnd: string;
begin
  Result := FdstEnd;
end;

procedure TdstInterval.SetdstEnd(const Value: string);
begin
  if FdstEnd <> Value then
  begin
    FdstEnd := Value;
    NotifyChange('dstEnd');
  end;
end;

function TdstInterval.GetdstOffsetToUtcID: Integer;
begin
  Result := FdstOffsetToUtcID;
end;

procedure TdstInterval.SetdstOffsetToUtcID(const Value: Integer);
begin
  if FdstOffsetToUtcID <> Value then
  begin
    FdstOffsetToUtcID := Value;
    NotifyChange('dstOffsetToUtcID');
  end;
end;

function TdstInterval.GetdstOffsetToStandardTimeID: Integer;
begin
  Result := FdstOffsetToStandardTimeID;
end;

procedure TdstInterval.SetdstOffsetToStandardTimeID(const Value: Integer);
begin
  if FdstOffsetToStandardTimeID <> Value then
  begin
    FdstOffsetToStandardTimeID := Value;
    NotifyChange('dstOffsetToStandardTimeID');
  end;
end;

function TdstInterval.GetdstDurationID: Integer;
begin
  Result := FdstDurationID;
end;

procedure TdstInterval.SetdstDurationID(const Value: Integer);
begin
  if FdstDurationID <> Value then
  begin
    FdstDurationID := Value;
    NotifyChange('dstDurationID');
  end;
end;

function TdstInterval.GetdstOffsetToUtc: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc;
begin
  Result := FdstOffsetToUtc;
end;

procedure TdstInterval.SetdstOffsetToUtc(const Value: TestCodolex.DataSource.JsonTest.IdstOffsetToUtc);
begin
  if FdstOffsetToUtc <> Value then
  begin
    FdstOffsetToUtc := Value;
    NotifyChange('dstOffsetToUtc');
  end;
end;

function TdstInterval.GetdstOffsetToStandardTime: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime;
begin
  Result := FdstOffsetToStandardTime;
end;

procedure TdstInterval.SetdstOffsetToStandardTime(const Value: TestCodolex.DataSource.JsonTest.IdstOffsetToStandardTime);
begin
  if FdstOffsetToStandardTime <> Value then
  begin
    FdstOffsetToStandardTime := Value;
    NotifyChange('dstOffsetToStandardTime');
  end;
end;

function TdstInterval.GetdstDuration: TestCodolex.DataSource.JsonTest.IdstDuration;
begin
  Result := FdstDuration;
end;

procedure TdstInterval.SetdstDuration(const Value: TestCodolex.DataSource.JsonTest.IdstDuration);
begin
  if FdstDuration <> Value then
  begin
    FdstDuration := Value;
    NotifyChange('dstDuration');
  end;
end;

function TdstInterval.GetTest_dstIntervalID_dstIntervalID: TestCodolex.DataSource.JsonTest.ITest;
begin
  Result := FTest_dstIntervalID_dstIntervalID;
end;

procedure TdstInterval.SetTest_dstIntervalID_dstIntervalID(const Value: TestCodolex.DataSource.JsonTest.ITest);
begin
  if FTest_dstIntervalID_dstIntervalID <> Value then
  begin
    FTest_dstIntervalID_dstIntervalID := Value;
    NotifyChange('Test_dstIntervalID_dstIntervalID');
  end;
end;

{ TdstIntervalDataSetAdapter }

procedure TdstIntervalDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TdstInterval;
  
  FDataset.FieldByName('dstIntervalID').AsInteger := Entity.dstIntervalID;
  FDataset.FieldByName('dstName').AsString := Entity.dstName;
  FDataset.FieldByName('dstStart').AsString := Entity.dstStart;
  FDataset.FieldByName('dstEnd').AsString := Entity.dstEnd;
  FDataset.FieldByName('dstOffsetToUtcID').AsInteger := Entity.dstOffsetToUtcID;
  FDataset.FieldByName('dstOffsetToStandardTimeID').AsInteger := Entity.dstOffsetToStandardTimeID;
  FDataset.FieldByName('dstDurationID').AsInteger := Entity.dstDurationID;
end;

procedure TdstIntervalDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TdstInterval;
  
  Entity.dstIntervalID := FDataset.FieldByName('dstIntervalID').AsInteger;
  Entity.dstName := FDataset.FieldByName('dstName').AsString;
  Entity.dstStart := FDataset.FieldByName('dstStart').AsString;
  Entity.dstEnd := FDataset.FieldByName('dstEnd').AsString;
  Entity.dstOffsetToUtcID := FDataset.FieldByName('dstOffsetToUtcID').AsInteger;
  Entity.dstOffsetToStandardTimeID := FDataset.FieldByName('dstOffsetToStandardTimeID').AsInteger;
  Entity.dstDurationID := FDataset.FieldByName('dstDurationID').AsInteger;
end;

function TdstIntervalDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TdstInterval.Create;
end;

procedure TdstIntervalDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstInterval;
  
  if FieldName = 'dstIntervalID' then
    Value := Entity.dstIntervalID
  else
  if FieldName = 'dstName' then
    Value := Entity.dstName
  else
  if FieldName = 'dstStart' then
    Value := Entity.dstStart
  else
  if FieldName = 'dstEnd' then
    Value := Entity.dstEnd
  else
  if FieldName = 'dstOffsetToUtcID' then
    Value := Entity.dstOffsetToUtcID
  else
  if FieldName = 'dstOffsetToStandardTimeID' then
    Value := Entity.dstOffsetToStandardTimeID
  else
  if FieldName = 'dstDurationID' then
    Value := Entity.dstDurationID;
end;

procedure TdstIntervalDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstInterval;
  
  if FieldName = 'dstIntervalID' then
    Entity.dstIntervalID := Value
  else
  if FieldName = 'dstName' then
    Entity.dstName := Value
  else
  if FieldName = 'dstStart' then
    Entity.dstStart := Value
  else
  if FieldName = 'dstEnd' then
    Entity.dstEnd := Value
  else
  if FieldName = 'dstOffsetToUtcID' then
    Entity.dstOffsetToUtcID := Value
  else
  if FieldName = 'dstOffsetToStandardTimeID' then
    Entity.dstOffsetToStandardTimeID := Value
  else
  if FieldName = 'dstDurationID' then
    Entity.dstDurationID := Value;
end;

procedure TdstIntervalDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstIntervalID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstName';
  FieldDef.DataType := ftString;
  FieldDef.Size := 4;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstStart';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstEnd';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstOffsetToUtcID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstOffsetToStandardTimeID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstDurationID';
  FieldDef.DataType := ftInteger;
end;

function dstOffsetToStandardTimeDataBroker: IEntityDataBrokerNonPersistent;
begin
  Result := TdstOffsetToStandardTimeDataBroker.Create();
end;

{ TdstOffsetToStandardTime }

function TdstOffsetToStandardTime.GetdstOffsetToStandardTimeID: Integer;
begin
  Result := FdstOffsetToStandardTimeID;
end;

procedure TdstOffsetToStandardTime.SetdstOffsetToStandardTimeID(const Value: Integer);
begin
  if FdstOffsetToStandardTimeID <> Value then
  begin
    FdstOffsetToStandardTimeID := Value;
    NotifyChange('dstOffsetToStandardTimeID');
  end;
end;

function TdstOffsetToStandardTime.Getseconds: Integer;
begin
  Result := Fseconds;
end;

procedure TdstOffsetToStandardTime.Setseconds(const Value: Integer);
begin
  if Fseconds <> Value then
  begin
    Fseconds := Value;
    NotifyChange('seconds');
  end;
end;

function TdstOffsetToStandardTime.Getmilliseconds: Integer;
begin
  Result := Fmilliseconds;
end;

procedure TdstOffsetToStandardTime.Setmilliseconds(const Value: Integer);
begin
  if Fmilliseconds <> Value then
  begin
    Fmilliseconds := Value;
    NotifyChange('milliseconds');
  end;
end;

function TdstOffsetToStandardTime.Getticks: Integer;
begin
  Result := Fticks;
end;

procedure TdstOffsetToStandardTime.Setticks(const Value: Integer);
begin
  if Fticks <> Value then
  begin
    Fticks := Value;
    NotifyChange('ticks');
  end;
end;

function TdstOffsetToStandardTime.Getnanoseconds: Integer;
begin
  Result := Fnanoseconds;
end;

procedure TdstOffsetToStandardTime.Setnanoseconds(const Value: Integer);
begin
  if Fnanoseconds <> Value then
  begin
    Fnanoseconds := Value;
    NotifyChange('nanoseconds');
  end;
end;

function TdstOffsetToStandardTime.GetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID: TestCodolex.DataSource.JsonTest.IdstInterval;
begin
  Result := FdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID;
end;

procedure TdstOffsetToStandardTime.SetdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
begin
  if FdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID <> Value then
  begin
    FdstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID := Value;
    NotifyChange('dstInterval_dstOffsetToStandardTimeID_dstOffsetToStandardTimeID');
  end;
end;

{ TdstOffsetToStandardTimeDataSetAdapter }

procedure TdstOffsetToStandardTimeDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToStandardTime;
  
  FDataset.FieldByName('dstOffsetToStandardTimeID').AsInteger := Entity.dstOffsetToStandardTimeID;
  FDataset.FieldByName('seconds').AsInteger := Entity.seconds;
  FDataset.FieldByName('milliseconds').AsInteger := Entity.milliseconds;
  FDataset.FieldByName('ticks').AsInteger := Entity.ticks;
  FDataset.FieldByName('nanoseconds').AsInteger := Entity.nanoseconds;
end;

procedure TdstOffsetToStandardTimeDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToStandardTime;
  
  Entity.dstOffsetToStandardTimeID := FDataset.FieldByName('dstOffsetToStandardTimeID').AsInteger;
  Entity.seconds := FDataset.FieldByName('seconds').AsInteger;
  Entity.milliseconds := FDataset.FieldByName('milliseconds').AsInteger;
  Entity.ticks := FDataset.FieldByName('ticks').AsInteger;
  Entity.nanoseconds := FDataset.FieldByName('nanoseconds').AsInteger;
end;

function TdstOffsetToStandardTimeDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TdstOffsetToStandardTime.Create;
end;

procedure TdstOffsetToStandardTimeDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToStandardTime;
  
  if FieldName = 'dstOffsetToStandardTimeID' then
    Value := Entity.dstOffsetToStandardTimeID
  else
  if FieldName = 'seconds' then
    Value := Entity.seconds
  else
  if FieldName = 'milliseconds' then
    Value := Entity.milliseconds
  else
  if FieldName = 'ticks' then
    Value := Entity.ticks
  else
  if FieldName = 'nanoseconds' then
    Value := Entity.nanoseconds;
end;

procedure TdstOffsetToStandardTimeDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToStandardTime;
  
  if FieldName = 'dstOffsetToStandardTimeID' then
    Entity.dstOffsetToStandardTimeID := Value
  else
  if FieldName = 'seconds' then
    Entity.seconds := Value
  else
  if FieldName = 'milliseconds' then
    Entity.milliseconds := Value
  else
  if FieldName = 'ticks' then
    Entity.ticks := Value
  else
  if FieldName = 'nanoseconds' then
    Entity.nanoseconds := Value;
end;

procedure TdstOffsetToStandardTimeDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstOffsetToStandardTimeID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'seconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'milliseconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ticks';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'nanoseconds';
  FieldDef.DataType := ftInteger;
end;

function dstOffsetToUtcDataBroker: IEntityDataBrokerNonPersistent;
begin
  Result := TdstOffsetToUtcDataBroker.Create();
end;

{ TdstOffsetToUtc }

function TdstOffsetToUtc.GetdstOffsetToUtcID: Integer;
begin
  Result := FdstOffsetToUtcID;
end;

procedure TdstOffsetToUtc.SetdstOffsetToUtcID(const Value: Integer);
begin
  if FdstOffsetToUtcID <> Value then
  begin
    FdstOffsetToUtcID := Value;
    NotifyChange('dstOffsetToUtcID');
  end;
end;

function TdstOffsetToUtc.Getseconds: Integer;
begin
  Result := Fseconds;
end;

procedure TdstOffsetToUtc.Setseconds(const Value: Integer);
begin
  if Fseconds <> Value then
  begin
    Fseconds := Value;
    NotifyChange('seconds');
  end;
end;

function TdstOffsetToUtc.Getmilliseconds: Integer;
begin
  Result := Fmilliseconds;
end;

procedure TdstOffsetToUtc.Setmilliseconds(const Value: Integer);
begin
  if Fmilliseconds <> Value then
  begin
    Fmilliseconds := Value;
    NotifyChange('milliseconds');
  end;
end;

function TdstOffsetToUtc.Getticks: Integer;
begin
  Result := Fticks;
end;

procedure TdstOffsetToUtc.Setticks(const Value: Integer);
begin
  if Fticks <> Value then
  begin
    Fticks := Value;
    NotifyChange('ticks');
  end;
end;

function TdstOffsetToUtc.Getnanoseconds: Integer;
begin
  Result := Fnanoseconds;
end;

procedure TdstOffsetToUtc.Setnanoseconds(const Value: Integer);
begin
  if Fnanoseconds <> Value then
  begin
    Fnanoseconds := Value;
    NotifyChange('nanoseconds');
  end;
end;

function TdstOffsetToUtc.GetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID: TestCodolex.DataSource.JsonTest.IdstInterval;
begin
  Result := FdstInterval_dstOffsetToUtcID_dstOffsetToUtcID;
end;

procedure TdstOffsetToUtc.SetdstInterval_dstOffsetToUtcID_dstOffsetToUtcID(const Value: TestCodolex.DataSource.JsonTest.IdstInterval);
begin
  if FdstInterval_dstOffsetToUtcID_dstOffsetToUtcID <> Value then
  begin
    FdstInterval_dstOffsetToUtcID_dstOffsetToUtcID := Value;
    NotifyChange('dstInterval_dstOffsetToUtcID_dstOffsetToUtcID');
  end;
end;

{ TdstOffsetToUtcDataSetAdapter }

procedure TdstOffsetToUtcDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToUtc;
  
  FDataset.FieldByName('dstOffsetToUtcID').AsInteger := Entity.dstOffsetToUtcID;
  FDataset.FieldByName('seconds').AsInteger := Entity.seconds;
  FDataset.FieldByName('milliseconds').AsInteger := Entity.milliseconds;
  FDataset.FieldByName('ticks').AsInteger := Entity.ticks;
  FDataset.FieldByName('nanoseconds').AsInteger := Entity.nanoseconds;
end;

procedure TdstOffsetToUtcDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToUtc;
  
  Entity.dstOffsetToUtcID := FDataset.FieldByName('dstOffsetToUtcID').AsInteger;
  Entity.seconds := FDataset.FieldByName('seconds').AsInteger;
  Entity.milliseconds := FDataset.FieldByName('milliseconds').AsInteger;
  Entity.ticks := FDataset.FieldByName('ticks').AsInteger;
  Entity.nanoseconds := FDataset.FieldByName('nanoseconds').AsInteger;
end;

function TdstOffsetToUtcDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TdstOffsetToUtc.Create;
end;

procedure TdstOffsetToUtcDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToUtc;
  
  if FieldName = 'dstOffsetToUtcID' then
    Value := Entity.dstOffsetToUtcID
  else
  if FieldName = 'seconds' then
    Value := Entity.seconds
  else
  if FieldName = 'milliseconds' then
    Value := Entity.milliseconds
  else
  if FieldName = 'ticks' then
    Value := Entity.ticks
  else
  if FieldName = 'nanoseconds' then
    Value := Entity.nanoseconds;
end;

procedure TdstOffsetToUtcDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TdstOffsetToUtc;
  
  if FieldName = 'dstOffsetToUtcID' then
    Entity.dstOffsetToUtcID := Value
  else
  if FieldName = 'seconds' then
    Entity.seconds := Value
  else
  if FieldName = 'milliseconds' then
    Entity.milliseconds := Value
  else
  if FieldName = 'ticks' then
    Entity.ticks := Value
  else
  if FieldName = 'nanoseconds' then
    Entity.nanoseconds := Value;
end;

procedure TdstOffsetToUtcDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'dstOffsetToUtcID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'seconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'milliseconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ticks';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'nanoseconds';
  FieldDef.DataType := ftInteger;
end;

function standardUtcOffsetDataBroker: IEntityDataBrokerNonPersistent;
begin
  Result := TstandardUtcOffsetDataBroker.Create();
end;

{ TstandardUtcOffset }

function TstandardUtcOffset.GetstandardUtcOffsetID: Integer;
begin
  Result := FstandardUtcOffsetID;
end;

procedure TstandardUtcOffset.SetstandardUtcOffsetID(const Value: Integer);
begin
  if FstandardUtcOffsetID <> Value then
  begin
    FstandardUtcOffsetID := Value;
    NotifyChange('standardUtcOffsetID');
  end;
end;

function TstandardUtcOffset.Getseconds: Integer;
begin
  Result := Fseconds;
end;

procedure TstandardUtcOffset.Setseconds(const Value: Integer);
begin
  if Fseconds <> Value then
  begin
    Fseconds := Value;
    NotifyChange('seconds');
  end;
end;

function TstandardUtcOffset.Getmilliseconds: Integer;
begin
  Result := Fmilliseconds;
end;

procedure TstandardUtcOffset.Setmilliseconds(const Value: Integer);
begin
  if Fmilliseconds <> Value then
  begin
    Fmilliseconds := Value;
    NotifyChange('milliseconds');
  end;
end;

function TstandardUtcOffset.Getticks: Integer;
begin
  Result := Fticks;
end;

procedure TstandardUtcOffset.Setticks(const Value: Integer);
begin
  if Fticks <> Value then
  begin
    Fticks := Value;
    NotifyChange('ticks');
  end;
end;

function TstandardUtcOffset.Getnanoseconds: Integer;
begin
  Result := Fnanoseconds;
end;

procedure TstandardUtcOffset.Setnanoseconds(const Value: Integer);
begin
  if Fnanoseconds <> Value then
  begin
    Fnanoseconds := Value;
    NotifyChange('nanoseconds');
  end;
end;

function TstandardUtcOffset.GetTest_standardUtcOffsetID_standardUtcOffsetID: TestCodolex.DataSource.JsonTest.ITest;
begin
  Result := FTest_standardUtcOffsetID_standardUtcOffsetID;
end;

procedure TstandardUtcOffset.SetTest_standardUtcOffsetID_standardUtcOffsetID(const Value: TestCodolex.DataSource.JsonTest.ITest);
begin
  if FTest_standardUtcOffsetID_standardUtcOffsetID <> Value then
  begin
    FTest_standardUtcOffsetID_standardUtcOffsetID := Value;
    NotifyChange('Test_standardUtcOffsetID_standardUtcOffsetID');
  end;
end;

{ TstandardUtcOffsetDataSetAdapter }

procedure TstandardUtcOffsetDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TstandardUtcOffset;
  
  FDataset.FieldByName('standardUtcOffsetID').AsInteger := Entity.standardUtcOffsetID;
  FDataset.FieldByName('seconds').AsInteger := Entity.seconds;
  FDataset.FieldByName('milliseconds').AsInteger := Entity.milliseconds;
  FDataset.FieldByName('ticks').AsInteger := Entity.ticks;
  FDataset.FieldByName('nanoseconds').AsInteger := Entity.nanoseconds;
end;

procedure TstandardUtcOffsetDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TstandardUtcOffset;
  
  Entity.standardUtcOffsetID := FDataset.FieldByName('standardUtcOffsetID').AsInteger;
  Entity.seconds := FDataset.FieldByName('seconds').AsInteger;
  Entity.milliseconds := FDataset.FieldByName('milliseconds').AsInteger;
  Entity.ticks := FDataset.FieldByName('ticks').AsInteger;
  Entity.nanoseconds := FDataset.FieldByName('nanoseconds').AsInteger;
end;

function TstandardUtcOffsetDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TstandardUtcOffset.Create;
end;

procedure TstandardUtcOffsetDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TstandardUtcOffset;
  
  if FieldName = 'standardUtcOffsetID' then
    Value := Entity.standardUtcOffsetID
  else
  if FieldName = 'seconds' then
    Value := Entity.seconds
  else
  if FieldName = 'milliseconds' then
    Value := Entity.milliseconds
  else
  if FieldName = 'ticks' then
    Value := Entity.ticks
  else
  if FieldName = 'nanoseconds' then
    Value := Entity.nanoseconds;
end;

procedure TstandardUtcOffsetDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TstandardUtcOffset;
  
  if FieldName = 'standardUtcOffsetID' then
    Entity.standardUtcOffsetID := Value
  else
  if FieldName = 'seconds' then
    Entity.seconds := Value
  else
  if FieldName = 'milliseconds' then
    Entity.milliseconds := Value
  else
  if FieldName = 'ticks' then
    Entity.ticks := Value
  else
  if FieldName = 'nanoseconds' then
    Entity.nanoseconds := Value;
end;

procedure TstandardUtcOffsetDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'standardUtcOffsetID';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'seconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'milliseconds';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ticks';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'nanoseconds';
  FieldDef.DataType := ftInteger;
end;

end.