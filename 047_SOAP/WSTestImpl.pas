{ Invokable implementation File for TWSTest which implements IWSTest }

unit WSTestImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, WSTestIntf;

type

  { TWSTest }
  TWSTest = class(TInvokableClass, IWSTest)
  public
    function test(aValue: WideString): WideString; stdcall;
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
  end;

implementation

function TWSTest.echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
begin
  { TODO : Implement method echoEnum }
  Result := Value;
end;

function TWSTest.echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
begin
  { TODO : Implement method echoDoubleArray }
  Result := Value;
end;

function TWSTest.echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
begin
  { TODO : Implement method echoMyEmployee }
  Result := Value;
end;

function TWSTest.test(aValue: WideString): WideString;
begin
  Result:= 'webservice=' + aValue;
end;

function TWSTest.echoDouble(const Value: Double): Double; stdcall;
begin
  { TODO : Implement method echoDouble }
  Result := Value;
end;


initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TWSTest);
end.

