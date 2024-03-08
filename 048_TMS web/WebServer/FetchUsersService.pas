unit FetchUsersService;

interface

uses
  XData.Server.Module,
  XData.Service.Common,MainModule, system.Classes, JSON,Web.HTTPApp;

type
  [ServiceContract]
  IFetchUsersService = interface(IInvokable)
    ['{16EBF943-2323-48C8-A311-D42B40C89DBC}']

    [HttpGet]
    function GetUsers: TStream;
    function CheckUser(username: string; password :string): boolean;

    [HttpGet]
    function GetCounts: TJSONObject;
    [HttpGet]
    function GenerateReport: TStream;//TWebResponse;
    function AddUsers(AName, AEmail, AUserType,APhone: string): boolean;
    function AddRides(ACurrLocation, ADestLocation, ARideStartTime,ARideEndTime: string;ARideDate:TDateTime): boolean;
    function OAuthUsers(AId, AEmail, AName, AUserSession:string; ALogout, AForceLogout:boolean):string;
    function UserSession(AEmail, AUserSession: string; ALogout, AForceLogout:boolean): string;
  end;

  [ServiceImplementation]
  TFetchUsersService = class(TInterfacedObject, IFetchUsersService)
  function GetUsers: TStream;
  function CheckUser(username: string; password :string): boolean;
  function GetCounts: TJSONObject;
  function GenerateReport: TStream;//TWebResponse;
  function AddUsers(AName, AEmail, AUserType,APhone: string): boolean;
  function AddRides(ACurrLocation, ADestLocation, ARideStartTime,ARideEndTime: string;ARideDate:TDateTime): boolean;
  function OAuthUsers(AId, AEmail, AName, AUserSession:string; ALogout, AForceLogout:boolean):string;
  function UserSession(AEmail, AUserSession: string; ALogout, AForceLogout:boolean): string;

  end;

implementation

{ TFetchUsersService }

function TFetchUsersService.OAuthUsers(AId, AEmail, AName, AUserSession: string; ALogout, AForceLogout:boolean): string;
begin
  Result := ServerContainer.OAuthUsers(AId, AEmail, AName, AUserSession, ALogout, AForceLogout);
end;


function TFetchUsersService.AddRides(ACurrLocation, ADestLocation,
  ARideStartTime, ARideEndTime: string; ARideDate: TDateTime): boolean;
begin
   Result := ServerContainer.AddRides(ACurrLocation,ADestLocation,
  ARideStartTime, ARideEndTime,ARideDate);
end;

function TFetchUsersService.AddUsers(AName, AEmail, AUserType,
  APhone: string): boolean;
begin
  Result := ServerContainer.AddUsers(AName, AEmail, AUserType,APhone);
end;

function TFetchUsersService.UserSession(AEmail, AUserSession: string; ALogout, AForceLogout:boolean): string;
begin
  Result := ServerContainer.UserSession(AEmail, AUserSession, ALogout, AForceLogout);
end;

function TFetchUsersService.CheckUser(username: string; password :string): boolean;
begin
  Result := ServerContainer.CheckUser(username,password);
end;

function TFetchUsersService.GenerateReport: TStream;//TWebResponse;
begin
   Result := ServerContainer.GenerateReport;
end;

function TFetchUsersService.GetCounts: TJSONObject;
begin
  Result := ServerContainer.GetCounts;
end;

function TFetchUsersService.GetUsers: TStream;
var
  res : TMemoryStream;
begin
  res:= TMemoryStream.Create;
  ServerContainer.GetUsers(res);
  Result := res;

end;

initialization
  RegisterServiceType(TypeInfo(IFetchUsersService));
  RegisterServiceType(TFetchUsersService);

end.
