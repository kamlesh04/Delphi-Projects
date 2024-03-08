unit Entities;

interface

uses
  SysUtils, 
  Generics.Collections, 
  Aurelius.Mapping.Attributes, 
  Aurelius.Types.Blob, 
  Aurelius.Types.DynamicProperties, 
  Aurelius.Types.Nullable, 
  Aurelius.Types.Proxy, 
  Aurelius.Dictionary.Classes, 
  Aurelius.Linq;

type
  Tadmin = class;
  Tlocation = class;
  Tnotification = class;
  Tride = class;
  Tusers = class;
  Tvehicle = class;
  TadminDictionary = class;
  TlocationDictionary = class;
  TnotificationDictionary = class;
  TrideDictionary = class;
  TusersDictionary = class;
  TvehicleDictionary = class;
  
  [Entity]
  [Table('admin')]
  [Id('FAdminID', TIdGenerator.IdentityOrSequence)]
  Tadmin = class
  private
    [Column('AdminID', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    FAdminID: Integer;
    
    [Column('Name', [TColumnProp.Required], 255)]
    FName: string;
    
    [Column('Username', [TColumnProp.Required], 255)]
    FUsername: string;
    
    [Column('Password', [TColumnProp.Required], 255)]
    FPassword: string;
    
    [Column('Email', [TColumnProp.Required], 225)]
    FEmail: string;
  public
    property AdminID: Integer read FAdminID write FAdminID;
    property Name: string read FName write FName;
    property Username: string read FUsername write FUsername;
    property Password: string read FPassword write FPassword;
    property Email: string read FEmail write FEmail;
  end;
  
  [Entity]
  [Table('location')]
  [UniqueKey('LocationName')]
  [Id('FLocationID', TIdGenerator.IdentityOrSequence)]
  Tlocation = class
  private
    [Column('LocationID', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    FLocationID: Integer;
    
    [Column('LocationName', [TColumnProp.Required], 255)]
    FLocationName: string;
  public
    property LocationID: Integer read FLocationID write FLocationID;
    property LocationName: string read FLocationName write FLocationName;
  end;
  
  [Entity]
  [Table('notification')]
  [Id('FNotificationID', TIdGenerator.IdentityOrSequence)]
  Tnotification = class
  private
    [Column('NotificationID', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    FNotificationID: Integer;
    
    [Column('Content', [TColumnProp.Required, TColumnProp.Lazy])]
    [DBTypeMemo]
    FContent: TBlob;
    
    [Column('Date', [TColumnProp.Required])]
    FDate: TDateTime;
    
    [Column('Status', [TColumnProp.Required], 255)]
    FStatus: string;
    
    [Association([TAssociationProp.Lazy], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('RideID', [], 'RideID')]
    FRideID: Proxy<Tride>;
    function GetRideID: Tride;
    procedure SetRideID(const Value: Tride);
  public
    property NotificationID: Integer read FNotificationID write FNotificationID;
    property Content: TBlob read FContent write FContent;
    property Date: TDateTime read FDate write FDate;
    property Status: string read FStatus write FStatus;
    property RideID: Tride read GetRideID write SetRideID;
  end;
  
  [Entity]
  [Table('ride')]
  [Id('FRideID', TIdGenerator.IdentityOrSequence)]
  Tride = class
  private
    [Column('RideID', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    FRideID: Integer;
    
    [Column('VehicleID', [TColumnProp.Required])]
    FVehicleID: Integer;
    
    [Column('RideStartDate', [TColumnProp.Required])]
    FRideStartDate: TDateTime;
    
    [Column('RideEndDate', [TColumnProp.Required])]
    FRideEndDate: TDateTime;
    
    [Column('RideStatus', [TColumnProp.Required], 255)]
    FRideStatus: string;
    
    [Column('RideStartTime', [TColumnProp.Required])]
    FRideStartTime: TDateTime;
    
    [Column('RideEndTime', [TColumnProp.Required])]
    FRideEndTime: TDateTime;
    
    [Column('ridetime', [])]
    Fridetime: Nullable<TDateTime>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('UserID', [TColumnProp.Required], 'UserID')]
    FUserID: Proxy<Tusers>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('CurrentLocation', [TColumnProp.Required], 'LocationName')]
    FCurrentLocation: Proxy<Tlocation>;
    
    [Association([TAssociationProp.Lazy, TAssociationProp.Required], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('DestinationLocation', [TColumnProp.Required], 'LocationName')]
    FDestinationLocation: Proxy<Tlocation>;
    function GetUserID: Tusers;
    procedure SetUserID(const Value: Tusers);
    function GetCurrentLocation: Tlocation;
    procedure SetCurrentLocation(const Value: Tlocation);
    function GetDestinationLocation: Tlocation;
    procedure SetDestinationLocation(const Value: Tlocation);
  public
    property RideID: Integer read FRideID write FRideID;
    property VehicleID: Integer read FVehicleID write FVehicleID;
    property RideStartDate: TDateTime read FRideStartDate write FRideStartDate;
    property RideEndDate: TDateTime read FRideEndDate write FRideEndDate;
    property RideStatus: string read FRideStatus write FRideStatus;
    property RideStartTime: TDateTime read FRideStartTime write FRideStartTime;
    property RideEndTime: TDateTime read FRideEndTime write FRideEndTime;
    property ridetime: Nullable<TDateTime> read Fridetime write Fridetime;
    property UserID: Tusers read GetUserID write SetUserID;
    property CurrentLocation: Tlocation read GetCurrentLocation write SetCurrentLocation;
    property DestinationLocation: Tlocation read GetDestinationLocation write SetDestinationLocation;
  end;
  
  [Entity]
  [Table('users')]
  [Id('FUserID', TIdGenerator.IdentityOrSequence)]
  Tusers = class
  private
    [Column('UserID', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    FUserID: Integer;
    
    [Column('Name', [TColumnProp.Required], 255)]
    FName: string;
    
    [Column('Username', [TColumnProp.Required], 255)]
    FUsername: string;
    
    [Column('Password', [TColumnProp.Required], 255)]
    FPassword: string;
    
    [Column('Email', [TColumnProp.Required], 225)]
    FEmail: string;
    
    [Column('UserType', [TColumnProp.Required], 225)]
    FUserType: string;
    
    [Column('PhoneNumber', [TColumnProp.Required], 15)]
    FPhoneNumber: string;
    
    [Column('Status', [TColumnProp.Required], 255)]
    FStatus: string;
    
    [Association([TAssociationProp.Lazy], CascadeTypeAll - [TCascadeType.Remove])]
    [JoinColumn('VehicleID', [], 'VehicleID')]
    FVehicleID: Proxy<Tvehicle>;
    function GetVehicleID: Tvehicle;
    procedure SetVehicleID(const Value: Tvehicle);
  public
    property UserID: Integer read FUserID write FUserID;
    property Name: string read FName write FName;
    property Username: string read FUsername write FUsername;
    property Password: string read FPassword write FPassword;
    property Email: string read FEmail write FEmail;
    property UserType: string read FUserType write FUserType;
    property PhoneNumber: string read FPhoneNumber write FPhoneNumber;
    property Status: string read FStatus write FStatus;
    property VehicleID: Tvehicle read GetVehicleID write SetVehicleID;
  end;
  
  [Entity]
  [Table('vehicle')]
  [Id('FVehicleID', TIdGenerator.IdentityOrSequence)]
  Tvehicle = class
  private
    [Column('VehicleID', [TColumnProp.Required, TColumnProp.NoInsert, TColumnProp.NoUpdate])]
    FVehicleID: Integer;
    
    [Column('VehicleType', [TColumnProp.Required], 255)]
    FVehicleType: string;
    
    [Column('VehicleName', [TColumnProp.Required], 255)]
    FVehicleName: string;
    
    [Column('VehicleNumberPlate', [TColumnProp.Required], 255)]
    FVehicleNumberPlate: string;
    
    [Column('VehicleCapacity', [TColumnProp.Required])]
    FVehicleCapacity: Integer;
  public
    property VehicleID: Integer read FVehicleID write FVehicleID;
    property VehicleType: string read FVehicleType write FVehicleType;
    property VehicleName: string read FVehicleName write FVehicleName;
    property VehicleNumberPlate: string read FVehicleNumberPlate write FVehicleNumberPlate;
    property VehicleCapacity: Integer read FVehicleCapacity write FVehicleCapacity;
  end;
  
  IadminDictionary = interface;
  
  IlocationDictionary = interface;
  
  InotificationDictionary = interface;
  
  IrideDictionary = interface;
  
  IusersDictionary = interface;
  
  IvehicleDictionary = interface;
  
  IadminDictionary = interface(IAureliusEntityDictionary)
    function AdminID: TLinqProjection;
    function Name: TLinqProjection;
    function Username: TLinqProjection;
    function Password: TLinqProjection;
    function Email: TLinqProjection;
  end;
  
  IlocationDictionary = interface(IAureliusEntityDictionary)
    function LocationID: TLinqProjection;
    function LocationName: TLinqProjection;
  end;
  
  InotificationDictionary = interface(IAureliusEntityDictionary)
    function NotificationID: TLinqProjection;
    function Content: TLinqProjection;
    function Date: TLinqProjection;
    function Status: TLinqProjection;
    function RideID: IrideDictionary;
  end;
  
  IrideDictionary = interface(IAureliusEntityDictionary)
    function RideID: TLinqProjection;
    function VehicleID: TLinqProjection;
    function RideStartDate: TLinqProjection;
    function RideEndDate: TLinqProjection;
    function RideStatus: TLinqProjection;
    function RideStartTime: TLinqProjection;
    function RideEndTime: TLinqProjection;
    function ridetime: TLinqProjection;
    function UserID: IusersDictionary;
    function CurrentLocation: IlocationDictionary;
    function DestinationLocation: IlocationDictionary;
  end;
  
  IusersDictionary = interface(IAureliusEntityDictionary)
    function UserID: TLinqProjection;
    function Name: TLinqProjection;
    function Username: TLinqProjection;
    function Password: TLinqProjection;
    function Email: TLinqProjection;
    function UserType: TLinqProjection;
    function PhoneNumber: TLinqProjection;
    function Status: TLinqProjection;
    function VehicleID: IvehicleDictionary;
  end;
  
  IvehicleDictionary = interface(IAureliusEntityDictionary)
    function VehicleID: TLinqProjection;
    function VehicleType: TLinqProjection;
    function VehicleName: TLinqProjection;
    function VehicleNumberPlate: TLinqProjection;
    function VehicleCapacity: TLinqProjection;
  end;
  
  TadminDictionary = class(TAureliusEntityDictionary, IadminDictionary)
  public
    function AdminID: TLinqProjection;
    function Name: TLinqProjection;
    function Username: TLinqProjection;
    function Password: TLinqProjection;
    function Email: TLinqProjection;
  end;
  
  TlocationDictionary = class(TAureliusEntityDictionary, IlocationDictionary)
  public
    function LocationID: TLinqProjection;
    function LocationName: TLinqProjection;
  end;
  
  TnotificationDictionary = class(TAureliusEntityDictionary, InotificationDictionary)
  public
    function NotificationID: TLinqProjection;
    function Content: TLinqProjection;
    function Date: TLinqProjection;
    function Status: TLinqProjection;
    function RideID: IrideDictionary;
  end;
  
  TrideDictionary = class(TAureliusEntityDictionary, IrideDictionary)
  public
    function RideID: TLinqProjection;
    function VehicleID: TLinqProjection;
    function RideStartDate: TLinqProjection;
    function RideEndDate: TLinqProjection;
    function RideStatus: TLinqProjection;
    function RideStartTime: TLinqProjection;
    function RideEndTime: TLinqProjection;
    function ridetime: TLinqProjection;
    function UserID: IusersDictionary;
    function CurrentLocation: IlocationDictionary;
    function DestinationLocation: IlocationDictionary;
  end;
  
  TusersDictionary = class(TAureliusEntityDictionary, IusersDictionary)
  public
    function UserID: TLinqProjection;
    function Name: TLinqProjection;
    function Username: TLinqProjection;
    function Password: TLinqProjection;
    function Email: TLinqProjection;
    function UserType: TLinqProjection;
    function PhoneNumber: TLinqProjection;
    function Status: TLinqProjection;
    function VehicleID: IvehicleDictionary;
  end;
  
  TvehicleDictionary = class(TAureliusEntityDictionary, IvehicleDictionary)
  public
    function VehicleID: TLinqProjection;
    function VehicleType: TLinqProjection;
    function VehicleName: TLinqProjection;
    function VehicleNumberPlate: TLinqProjection;
    function VehicleCapacity: TLinqProjection;
  end;
  
  IDictionary = interface(IAureliusDictionary)
    function admin: IadminDictionary;
    function location: IlocationDictionary;
    function notification: InotificationDictionary;
    function ride: IrideDictionary;
    function users: IusersDictionary;
    function vehicle: IvehicleDictionary;
  end;
  
  TDictionary = class(TAureliusDictionary, IDictionary)
  public
    function admin: IadminDictionary;
    function location: IlocationDictionary;
    function notification: InotificationDictionary;
    function ride: IrideDictionary;
    function users: IusersDictionary;
    function vehicle: IvehicleDictionary;
  end;
  
function Dic: IDictionary;

implementation

var
  __Dic: IDictionary;

function Dic: IDictionary;
begin
  if __Dic = nil then __Dic := TDictionary.Create;
  result := __Dic;
end;

{ Tnotification }

function Tnotification.GetRideID: Tride;
begin
  result := FRideID.Value;
end;

procedure Tnotification.SetRideID(const Value: Tride);
begin
  FRideID.Value := Value;
end;

{ Tride }

function Tride.GetUserID: Tusers;
begin
  result := FUserID.Value;
end;

procedure Tride.SetUserID(const Value: Tusers);
begin
  FUserID.Value := Value;
end;

function Tride.GetCurrentLocation: Tlocation;
begin
  result := FCurrentLocation.Value;
end;

procedure Tride.SetCurrentLocation(const Value: Tlocation);
begin
  FCurrentLocation.Value := Value;
end;

function Tride.GetDestinationLocation: Tlocation;
begin
  result := FDestinationLocation.Value;
end;

procedure Tride.SetDestinationLocation(const Value: Tlocation);
begin
  FDestinationLocation.Value := Value;
end;

{ Tusers }

function Tusers.GetVehicleID: Tvehicle;
begin
  result := FVehicleID.Value;
end;

procedure Tusers.SetVehicleID(const Value: Tvehicle);
begin
  FVehicleID.Value := Value;
end;

{ TadminDictionary }

function TadminDictionary.AdminID: TLinqProjection;
begin
  Result := Prop('AdminID');
end;

function TadminDictionary.Name: TLinqProjection;
begin
  Result := Prop('Name');
end;

function TadminDictionary.Username: TLinqProjection;
begin
  Result := Prop('Username');
end;

function TadminDictionary.Password: TLinqProjection;
begin
  Result := Prop('Password');
end;

function TadminDictionary.Email: TLinqProjection;
begin
  Result := Prop('Email');
end;

{ TlocationDictionary }

function TlocationDictionary.LocationID: TLinqProjection;
begin
  Result := Prop('LocationID');
end;

function TlocationDictionary.LocationName: TLinqProjection;
begin
  Result := Prop('LocationName');
end;

{ TnotificationDictionary }

function TnotificationDictionary.NotificationID: TLinqProjection;
begin
  Result := Prop('NotificationID');
end;

function TnotificationDictionary.Content: TLinqProjection;
begin
  Result := Prop('Content');
end;

function TnotificationDictionary.Date: TLinqProjection;
begin
  Result := Prop('Date');
end;

function TnotificationDictionary.Status: TLinqProjection;
begin
  Result := Prop('Status');
end;

function TnotificationDictionary.RideID: IrideDictionary;
begin
  Result := TrideDictionary.Create(PropName('RideID'));
end;

{ TrideDictionary }

function TrideDictionary.RideID: TLinqProjection;
begin
  Result := Prop('RideID');
end;

function TrideDictionary.VehicleID: TLinqProjection;
begin
  Result := Prop('VehicleID');
end;

function TrideDictionary.RideStartDate: TLinqProjection;
begin
  Result := Prop('RideStartDate');
end;

function TrideDictionary.RideEndDate: TLinqProjection;
begin
  Result := Prop('RideEndDate');
end;

function TrideDictionary.RideStatus: TLinqProjection;
begin
  Result := Prop('RideStatus');
end;

function TrideDictionary.RideStartTime: TLinqProjection;
begin
  Result := Prop('RideStartTime');
end;

function TrideDictionary.RideEndTime: TLinqProjection;
begin
  Result := Prop('RideEndTime');
end;

function TrideDictionary.ridetime: TLinqProjection;
begin
  Result := Prop('ridetime');
end;

function TrideDictionary.UserID: IusersDictionary;
begin
  Result := TusersDictionary.Create(PropName('UserID'));
end;

function TrideDictionary.CurrentLocation: IlocationDictionary;
begin
  Result := TlocationDictionary.Create(PropName('CurrentLocation'));
end;

function TrideDictionary.DestinationLocation: IlocationDictionary;
begin
  Result := TlocationDictionary.Create(PropName('DestinationLocation'));
end;

{ TusersDictionary }

function TusersDictionary.UserID: TLinqProjection;
begin
  Result := Prop('UserID');
end;

function TusersDictionary.Name: TLinqProjection;
begin
  Result := Prop('Name');
end;

function TusersDictionary.Username: TLinqProjection;
begin
  Result := Prop('Username');
end;

function TusersDictionary.Password: TLinqProjection;
begin
  Result := Prop('Password');
end;

function TusersDictionary.Email: TLinqProjection;
begin
  Result := Prop('Email');
end;

function TusersDictionary.UserType: TLinqProjection;
begin
  Result := Prop('UserType');
end;

function TusersDictionary.PhoneNumber: TLinqProjection;
begin
  Result := Prop('PhoneNumber');
end;

function TusersDictionary.Status: TLinqProjection;
begin
  Result := Prop('Status');
end;

function TusersDictionary.VehicleID: IvehicleDictionary;
begin
  Result := TvehicleDictionary.Create(PropName('VehicleID'));
end;

{ TvehicleDictionary }

function TvehicleDictionary.VehicleID: TLinqProjection;
begin
  Result := Prop('VehicleID');
end;

function TvehicleDictionary.VehicleType: TLinqProjection;
begin
  Result := Prop('VehicleType');
end;

function TvehicleDictionary.VehicleName: TLinqProjection;
begin
  Result := Prop('VehicleName');
end;

function TvehicleDictionary.VehicleNumberPlate: TLinqProjection;
begin
  Result := Prop('VehicleNumberPlate');
end;

function TvehicleDictionary.VehicleCapacity: TLinqProjection;
begin
  Result := Prop('VehicleCapacity');
end;

{ TDictionary }

function TDictionary.admin: IadminDictionary;
begin
  Result := TadminDictionary.Create;
end;

function TDictionary.location: IlocationDictionary;
begin
  Result := TlocationDictionary.Create;
end;

function TDictionary.notification: InotificationDictionary;
begin
  Result := TnotificationDictionary.Create;
end;

function TDictionary.ride: IrideDictionary;
begin
  Result := TrideDictionary.Create;
end;

function TDictionary.users: IusersDictionary;
begin
  Result := TusersDictionary.Create;
end;

function TDictionary.vehicle: IvehicleDictionary;
begin
  Result := TvehicleDictionary.Create;
end;

initialization
  RegisterEntity(Tadmin);
  RegisterEntity(Tlocation);
  RegisterEntity(Tnotification);
  RegisterEntity(Tride);
  RegisterEntity(Tusers);
  RegisterEntity(Tvehicle);

end.
