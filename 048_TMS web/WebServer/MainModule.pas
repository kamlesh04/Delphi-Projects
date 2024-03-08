unit MainModule;

interface

uses
  System.SysUtils, System.Classes, Sparkle.HttpServer.Module,System.Variants,
  Sparkle.HttpServer.Context, Sparkle.Comp.Server,
  Sparkle.Comp.HttpSysDispatcher, Aurelius.Drivers.Interfaces,
  Aurelius.Comp.Connection, XData.Comp.ConnectionPool, XData.Server.Module,
  XData.Comp.Server, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.JSON, FireDAC.Stan.StorageJSON,IOUtils,
  Sparkle.Comp.CorsMiddleware, Aurelius.Sql.MySQL, Aurelius.Schema.MySQL,
  Aurelius.Drivers.FireDac,JSON,Web.HTTPApp,VCL.FlexCel.Core, FlexCel.XlsAdapter, FlexCel.Report, FlexCel.Render,
  Sphinx.WebLogin, Sparkle.Comp.JwtMiddleware;

type
  TServerContainer = class(TDataModule)
    SparkleHttpSysDispatcher: TSparkleHttpSysDispatcher;
    XDataServer: TXDataServer;
    XDataConnectionPool: TXDataConnectionPool;
    AureliusConnection: TAureliusConnection;
    FDConnection: TFDConnection;
    FDQuery: TFDQuery;
    FDBatchMove1: TFDBatchMove;
    FDBatchMoveJSONWriter1: TFDBatchMoveJSONWriter;
    FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    fdGetCounts: TFDQuery;
    FDTable: TFDTable;
    XDataServerCORS: TSparkleCorsMiddleware;
    FDTAuthUsers: TFDTable;
    FDQAuthUsers: TFDQuery;
    FDQSession: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);

    public
      fil : TextFile;

      procedure GetUsers(AStream : TStream);
      function CheckUser(username: string; password :string):boolean;
      function GetCounts: TJSONObject;
      function GenerateReport: TStream;//TWebResponse;
      function AddUsers(AName, AEmail, AUserType, APhone:string):boolean;
      function AddRides(ACurrLocation, ADestLocation, ARideStartTime,ARideEndTime:string;ARideDate:TDateTime):boolean;
      function OAuthUsers(AId, AEmail, AName, AUserSession:string; ALogout, AForceLogout:boolean):string;
      function UserSession(AEmail, AUserSession :string; ALogout,AForceLogout:boolean):string;


  end;

var
  ServerContainer: TServerContainer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TServerContainer.OAuthUsers(AId, AEmail, AName, AUserSession:string; ALogout, AForceLogout:boolean):string;
begin
  FDConnection.Connected := true;
  FDTAuthUsers.Active := true;
  Result := '';
  try
    Result := UserSession(AEmail, AUserSession,ALogout,AForceLogout);
    if not FDTAuthUsers.Locate('id;Active',VarArrayOf([AId,1]),[]) then
    begin
      FDTAuthUsers.Active := false;
      FDQAuthUsers.SQL.Add('Insert into OAuth_Users(id,Email,Name,active_session, login_time)'
        + ' Values(:id,:Email,:Name,:Active,:login_time)');
      FDQAuthUsers.ParamByName('id').Value := AId;
      FDQAuthUsers.ParamByName('Email').Value := AEmail;
      FDQAuthUsers.ParamByName('Name').Value := AName;
      FDQAuthUsers.ParamByName('Active').Value := 1;
      FDQAuthUsers.ParamByName('login_time').Value := Date;
      FDQAuthUsers.ExecSQL;

    end;

  except on E: Exception do
    Result := 'E';
  end;
end;

function TServerContainer.AddRides(ACurrLocation, ADestLocation, ARideStartTime,ARideEndTime: string;ARideDate:TDateTime): boolean;
begin
  FDConnection.Connected := true;
  Result := false;
  FDQuery.SQL.Clear;
  try
    FDQuery.SQL.Add('Insert into ride(UserId,CurrentLocation, DestinationLocation,VehicleId, RideStartDate, RideEndDate, RideStatus, RideStartTime, RideEndTime)'
      + ' Values('+ QuotedStr('014') +',:CurrLocation,:DestLocation,' + QuotedStr('1') +',:RideDate,:RideDate,'+ QuotedStr('Active')+',:RideStartTime, :RideEndTime)'
    );
    FDQuery.ParamByName('CurrLocation').Value := ACurrLocation;
    FDQuery.ParamByName('DestLocation').Value := ADestLocation;
    FDQuery.ParamByName('RideDate').Value := ARideDate;
    FDQuery.ParamByName('RideStartTime').Value := ARideStartTime;
    FDQuery.ParamByName('RideEndTime').Value := ARideEndTime;
    FDQuery.ExecSQL;
    Result := true;
  except on E: Exception do
    Result := false;
  end;

end;

function TServerContainer.AddUsers(AName, AEmail, AUserType,
  APhone: string): boolean;
begin
  FDConnection.Connected := true;
  Result := false;
  FDQuery.SQL.Clear;
  try
    FDQuery.SQL.Add('Insert into users(Name,Username,Password,Email,UserType,PhoneNumber,Status)'
      + ' Values(:Name,:Name,'+ QuotedStr('123')+',:Email,:UserType,:PhoneNumber,'+ QuotedStr('Active')+')'
    );
    FDQuery.ParamByName('Name').Value := AName; 
    FDQuery.ParamByName('Email').Value := AEmail; 
    FDQuery.ParamByName('UserType').Value := AUserType; 
    FDQuery.ParamByName('PhoneNumber').Value := APhone; 
    FDQuery.ExecSQL;
    Result := true;
  except on E: Exception do
    Result := false;
  end;
end;

function TServerContainer.UserSession(AEmail, AUserSession: string; ALogout, AForceLogout:boolean): string;
begin
  FDConnection.Connected := true;
  Result := '';
  //Check User
  try

    if AUserSession <> '' then
    begin
        FDQSession.Active := false;
        FDQSession.SQL.text := '';
        FDQSession.SQL.Add('select * from user_session where Email = :Email and id = :id and logout_time is null ;');
        FDQSession.ParamByName('Email').Value := AEmail;
        FDQSession.ParamByName('id').Value :=  StringReplace(AUserSession, '''', '', [rfReplaceAll]);
        FDQSession.Open;
        if FDQSession.RecordCount = 0 then
          Result := 'E';
        exit
    end;

    FDQSession.Active := false;
    FDQSession.SQL.text := '';
    FDQSession.SQL.Add('select * from user_session where Email = :Email and logout_time is null;');
    FDQSession.ParamByName('Email').Value := AEmail;
    FDQSession.Open;
    if (FDQSession.RecordCount = 0) or (ALogout) or (AForceLogout) then//(not FDTSession.Locate('Email;logout_time',VarArrayOf([AEmail,'null']),[])) or (ALogout) or (AForceLogout) then
    begin
      if AForceLogout then
      begin
        FDQSession.Active := false;
        FDQSession.SQL.text := '';
        FDQSession.SQL.Add('update user_session set logout_time = :logout_time'
          + ' where Email = :Email and logout_time is null'
        );
        FDQSession.ParamByName('Email').Value := AEmail;
        FDQSession.ParamByName('logout_time').Value := Date;
        FDQSession.ExecSQL;
        //Insert new entry here
        FDQSession.Active := false;
        FDQSession.SQL.text := '';
        FDQSession.SQL.Add('Insert into user_session(Email,login_time)'
          + ' Values(:Email,:login_time)'
        );
        FDQSession.ParamByName('Email').Value := AEmail;
        FDQSession.ParamByName('login_time').Value := Date;
        FDQSession.ExecSQL;

        FDQSession.Active := false;
        FDQSession.SQL.Clear;
        FDQSession.SQL.Add('select * from user_session order by id desc limit 1;');
        FDQSession.Open;
        Result := FDQSession.FieldByName('id').Value;;
      end
      else if ALogout then
      begin
      //check for session exist here
        FDQSession.Active := false;
        FDQSession.SQL.text := '';
        FDQSession.SQL.Add('update user_session set logout_time = :logout_time'
          + ' where Email = :Email and logout_time is null'
        );
        FDQSession.ParamByName('Email').Value := AEmail;
        FDQSession.ParamByName('logout_time').Value := Date;
        FDQSession.ExecSQL;
        Result := 'U';
      end
      else
      begin
        FDQSession.Active := false;
        FDQSession.SQL.text := '';
        FDQSession.SQL.Add('Insert into user_session(Email,login_time)'
          + ' Values(:Email,:login_time)'
        );
        FDQSession.ParamByName('Email').Value := AEmail;
        FDQSession.ParamByName('login_time').Value := Date;
        FDQSession.ExecSQL;

        FDQSession.Active := false;
        FDQSession.SQL.Clear;
        FDQSession.SQL.Add('select * from user_session order by id desc limit 1;');
        FDQSession.Open;
        Result := FDQSession.FieldByName('id').Value;
      end;
    end
    else
      Result :='E';


  except on E: Exception do
    Result :='E';
  end;
end;

function TServerContainer.CheckUser(username: string; password :string): boolean;
begin
  //FDConnection.Connected := true;
  Result := false;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select * from admin where username = :username and password =:password;');
  FDQuery.ParamByName('username').Value := username;
  FDQuery.ParamByName('password').Value := password;
  FDQuery.Open;
  if FDQuery.RecordCount > 0 then
    Result := true;

  AssignFile(fil,TPath.Combine(ExpandFileName(ExtractFilePath(ParamStr(0))+ '/../../'), 'log.txt'));
  Rewrite(fil);
  Writeln(fil,username);
  Writeln(fil,password);
  CloseFile(fil);
end;

procedure TServerContainer.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Connected := true;
  AssignFile(fil,TPath.Combine(ExpandFileName(ExtractFilePath(ParamStr(0))+ '/../../'), 'log.txt'));
  end;

function TServerContainer.GenerateReport: TStream;
var
  Report: TFlexCelReport;
  Xls: TExcelFile;
  Ts: TMemoryStream;
  Writer: TStreamWriter;
  Html: TFlexCelHtmlExport;
begin
  //Result :=  TWebResponse.Create(nil);
  FDQuery.Active := true;
  //Result.SetCustomHeader('Access-Control-Allow-Origin', '*');
  //Result.SetCustomHeader('Access-Control-Allow-Headers', 'X-Custom-Header, Cache-Control');

  Report := TFlexCelReport.Create(true);
  try
    Report.AddTable('data', FDTable);

    Xls := TXlsFile.Create('..\..\..\why.xls', true);
    try
      Ts := TMemoryStream.Create();
      try
        Writer := TStreamWriter.Create(Ts, TEncoding.UTF8);
        try
          Report.Run(Xls);
          Html := TFlexCelHtmlExport.Create(Xls, true);
          try
            Html.HtmlVersion := THtmlVersion.Html_5;
            Html.EmbedImages := true;
            Html.ImageResolution := 192;
            Html.Export(Writer, 'report.html', nil);
          finally
            Html.Free;
          end;

          //Result.SendStream(Ts);
          Result := Ts;
        finally
          Writer.Free;
        end;
      finally
       // Ts.Free;
      end;
    finally
      Xls.Free;
    end;
  finally
    Report.Free;
  end;

end;

function TServerContainer.GetCounts: TJSONObject;
var
  jsobj : TJSONObject;
  jspair : TJSONPair;
  jsarr : TJSONArray;
  cntUsers,cntRides,cntVehicles : integer ;
begin
  Result :=  TJSONObject.Create;
  cntUsers := 0;
  cntRides := 0 ;
  cntVehicles := 0;
  //Fetch records fro db
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select count(*) as cnt from users');
  FDQuery.Open;
  cntUsers := FDQuery.FieldByName('cnt').Value;

  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select count(*) as cnt from Ride');
  FDQuery.Open;
  cntRides := FDQuery.FieldByName('cnt').Value;

  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('select count(*) as cnt from Vehicle');
  FDQuery.Open;
  cntVehicles := FDQuery.FieldByName('cnt').Value;

  jsobj := TJSONObject.Create;
  jsarr := TJSONArray.Create;
  jspair := TJSONPair.Create('Counts',jsarr);
  try
    jsobj.AddPair(TJSONPair.Create('Users',IntToStr(cntUsers)));
    jsobj.AddPair(TJSONPair.Create('Rides',IntToStr(cntRides)));
    jsobj.AddPair(TJSONPair.Create('Vehicles',IntToStr(cntVehicles)));
    jsarr.AddElement(jsobj);
    Result.AddPair(jspair);

  Rewrite(fil);
  Writeln(fil,'***************');
  Writeln(fil,Result.ToString);
  Writeln(fil,'***************');
  finally
    CloseFile(fil);
  end;

end;

procedure TServerContainer.GetUsers(AStream: TStream);
begin
  if Assigned(AStream) then
  begin
//    FDQuery1.Open;
//    FDQuery1.SaveToStream(AStream, sfJSON);
      FDBatchMoveJSONWriter1.Stream := AStream;
      FDBatchMove1.Execute;
  end;

end;

end.
