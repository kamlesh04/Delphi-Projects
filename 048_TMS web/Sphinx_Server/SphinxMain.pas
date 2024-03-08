unit SphinxMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Sparkle.HttpServer.Module,
  Sparkle.HttpServer.Context, Sphinx.Server.Module, Aurelius.Drivers.SQLite,
  Aurelius.Engine.DatabaseManager, Aurelius.Drivers.Interfaces,
  XData.Comp.ConnectionPool, Aurelius.Comp.DBSchema, Aurelius.Comp.Connection,
  Sparkle.Comp.Server, Sparkle.Comp.HttpSysDispatcher, Sphinx.Comp.Config,
  XData.Comp.Server, Sphinx.Comp.Server, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Aurelius.Sql.MySQL, Aurelius.Schema.MySQL, Aurelius.Drivers.FireDac,
  Vcl.StdCtrls, Sparkle.Comp.CorsMiddleware, Sparkle.Module.Static,
  Sparkle.Comp.StaticServer,Bcl.Lang,System.IOUtils,
  Sparkle.Comp.BasicAuthMiddleware;

type
  TForm5 = class(TForm)
    SphinxServer1: TSphinxServer;
    SphinxConfig1: TSphinxConfig;
    SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher;
    Memo1: TMemo;
    AureliusConnection1: TAureliusConnection;
    AureliusDBSchema1: TAureliusDBSchema;
    XDataConnectionPool1: TXDataConnectionPool;
    FDConnection: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    SphinxServer1CORS: TSparkleCorsMiddleware;
    procedure FormCreate(Sender: TObject);
    procedure SphinxConfig1GetSigningData(Sender: TObject;
      Args: TGetSigningDataArgs);
    procedure SphinxConfig1ConfigureToken(Sender: TObject;
      Args: TConfigureTokenArgs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
var
  Client: TSphinxClientApp;
begin
  //SphinxConfig1.UIOptions.LoginAppFolder := TPath.Combine(TPath.GetDirectoryName(ParamStr(0)),'LoginPage') ;
  TLang.Init;
  AureliusDBSchema1.UpdateDatabase;
   // Create desktop client
  Client := SphinxConfig1.Clients.Add;
  Client.ClientId := 'desktop';
  Client.DisplayName := 'My App';
  Client.RedirectUris.Add('http://127.0.0.1');
  Client.RequireClientSecret := False;
  Client.AllowedGrantTypes := [TGrantType.gtAuthorizationCode];
  Client.ValidScopes.Add('openid');
  Client.ValidScopes.Add('email');

  // Create web client
  Client := SphinxConfig1.Clients.Add;
  Client.ClientId := 'web';
  Client.DisplayName := 'My App';
  Client.RedirectUris.Add('http://localhost:8000/WebPage/WebPage.html');
  Client.RequireClientSecret := False;
  Client.AllowedGrantTypes := [TGrantType.gtAuthorizationCode];
  Client.ValidScopes.Add('openid');
  Client.ValidScopes.Add('email');
  SparkleHttpSysDispatcher1.Start;
end;

procedure TForm5.SphinxConfig1ConfigureToken(Sender: TObject;
  Args: TConfigureTokenArgs);
  var
  TenantId: string;
begin
  TenantId := Args.User.Email.ValueOrDefault;
   Args.Token.Claims.AddOrSet('tenantId', TenantId)
end;

procedure TForm5.SphinxConfig1GetSigningData(Sender: TObject;
  Args: TGetSigningDataArgs);
begin
  Args.Data.Key := TEncoding.UTF8.GetBytes('This is the secret for JWT signing');
end;

end.
