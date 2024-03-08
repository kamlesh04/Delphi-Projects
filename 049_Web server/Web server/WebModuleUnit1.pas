unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp,system.json, system.json.builders,
   system.json.Types,  system.json.writers;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1WebActionItem1Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1WebActionItem2Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content :=
    '<html>' +
    '<head><title>Web Server Application</title></head>' +
    '<body>Web Server Application</body>' +
    '</html>';
end;

procedure TWebModule1.WebModule1WebActionItem1Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'application/json;content=utf8';
    Response.Content := Random(100).ToString;
end;

procedure TWebModule1.WebModule1WebActionItem2Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  builder : TJSONObjectBuilder;
  jsonwriter : TJsonTextWriter;
  jsonstring : TStringWriter;
  str: string;
begin
  jsonstring:= TStringWriter.Create;
  jsonwriter:=  TJsonTextWriter.Create(jsonstring);
  jsonwriter.Formatting := TJsonFormatting.Indented;
  builder := TJSONObjectBuilder.Create(jsonwriter);
  try
   builder
      .BeginObject
      .BeginArray('Fruit')
      .BeginObject
      .Add('color','red')
      .Add('price', '180/-')
      .Add('type', 'Apple')
      .EndObject
      .BeginObject
      .Add('color','Yellow')
      .Add('price', '580/-')
      .Add('type', 'Mango')
      .EndObject
      .EndArray
      .EndObject;

    Response.Content := jsonstring.ToString;
  finally

  end;
end;

end.
