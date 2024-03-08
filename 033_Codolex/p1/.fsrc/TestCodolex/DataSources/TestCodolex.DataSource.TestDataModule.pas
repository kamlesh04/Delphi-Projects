unit TestCodolex.DataSource.TestDataModule;

interface

uses
  Codolex.Adapters.EntityDataSet,
  Codolex.Collections,
  Codolex.Database.Entity.Interfaces,
  Codolex.Database.PersistentEntity,
  Codolex.Database.PersistentEntity.Interfaces,
  Codolex.Database.Query.Interfaces,
  Codolex.Database.Runtime.Interfaces,
  Codolex.EntityDataBroker.Interfaces,
  Codolex.EntityDataBroker.Persistent,
  Codolex.Framework.Attributes,
  Codolex.Framework.Types,
  Codolex.Framework.Types.Binary,
  Codolex.Framework.Types.Proxy,
  Data.DB,
  REST.Json.Types,
  System.Rtti;

type
  ICOUNTRY = interface;
  ICUSTOMER = interface;
  IDEPARTMENT = interface;
  IEMPLOYEE = interface;
  IEMPLOYEE1 = interface;
  IEMPLOYEE_PROJECT = interface;
  IJOB = interface;
  IPROJECT = interface;
  IPROJ_DEPT_BUDGET = interface;
  ISALARY_HISTORY = interface;
  ISALES = interface;
  
  TCOUNTRY = class;
  TCUSTOMER = class;
  TDEPARTMENT = class;
  TEMPLOYEE = class;
  TEMPLOYEE1 = class;
  TEMPLOYEE_PROJECT = class;
  TJOB = class;
  TPROJECT = class;
  TPROJ_DEPT_BUDGET = class;
  TSALARY_HISTORY = class;
  TSALES = class;
  
  TCOUNTRYDataBroker = class;
  TCUSTOMERDataBroker = class;
  TDEPARTMENTDataBroker = class;
  TEMPLOYEEDataBroker = class;
  TEMPLOYEE1DataBroker = class;
  TEMPLOYEE_PROJECTDataBroker = class;
  TJOBDataBroker = class;
  TPROJECTDataBroker = class;
  TPROJ_DEPT_BUDGETDataBroker = class;
  TSALARY_HISTORYDataBroker = class;
  TSALESDataBroker = class;
  
  TCOUNTRYDataSetAdapter = class;
  TCUSTOMERDataSetAdapter = class;
  TDEPARTMENTDataSetAdapter = class;
  TEMPLOYEEDataSetAdapter = class;
  TEMPLOYEE1DataSetAdapter = class;
  TEMPLOYEE_PROJECTDataSetAdapter = class;
  TJOBDataSetAdapter = class;
  TPROJECTDataSetAdapter = class;
  TPROJ_DEPT_BUDGETDataSetAdapter = class;
  TSALARY_HISTORYDataSetAdapter = class;
  TSALESDataSetAdapter = class;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.ICOUNTRY')]
  ICOUNTRY = interface(IPersistentEntity)
    ['{0AAF1349-7472-49B5-8F96-238D974E3ADE}']
  
    function GetCOUNTRY: string;
    procedure SetCOUNTRY(const Value: string);
    function GetCURRENCY: string;
    procedure SetCURRENCY(const Value: string);
    function GetCUSTOMER_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER>;
    procedure SetCUSTOMER_COUNTRY_COUNTRYList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER>);
    function GetJOB_JOB_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB>;
    procedure SetJOB_JOB_COUNTRY_COUNTRYList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB>);
  
    property COUNTRY: string read GetCOUNTRY write SetCOUNTRY;
    property CURRENCY: string read GetCURRENCY write SetCURRENCY;
    property CUSTOMER_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER> read GetCUSTOMER_COUNTRY_COUNTRYList write SetCUSTOMER_COUNTRY_COUNTRYList;
    property JOB_JOB_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB> read GetJOB_JOB_COUNTRY_COUNTRYList write SetJOB_JOB_COUNTRY_COUNTRYList;
  end;
  
  TCOUNTRY = class(TPersistentEntity, ICOUNTRY)
  private
    FCOUNTRY: string;
    FCURRENCY: string;
    [JSONMarshalled(False)] FCUSTOMER_COUNTRY_COUNTRYList: IProxy<TestCodolex.DataSource.TestDataModule.ICUSTOMER>;
    [JSONMarshalled(False)] FJOB_JOB_COUNTRY_COUNTRYList: IProxy<TestCodolex.DataSource.TestDataModule.IJOB>;
  public
    function GetCOUNTRY: string;
    procedure SetCOUNTRY(const Value: string);
    function GetCURRENCY: string;
    procedure SetCURRENCY(const Value: string);
    function GetCUSTOMER_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER>;
    procedure SetCUSTOMER_COUNTRY_COUNTRYList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER>);
    function GetJOB_JOB_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB>;
    procedure SetJOB_JOB_COUNTRY_COUNTRYList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB>);
  
    property COUNTRY: string read GetCOUNTRY write SetCOUNTRY;
    property CURRENCY: string read GetCURRENCY write SetCURRENCY;
    property CUSTOMER_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER> read GetCUSTOMER_COUNTRY_COUNTRYList write SetCUSTOMER_COUNTRY_COUNTRYList;
    property JOB_JOB_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB> read GetJOB_JOB_COUNTRY_COUNTRYList write SetJOB_JOB_COUNTRY_COUNTRYList;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.ICOUNTRY')]
  TCOUNTRYDataBroker = class(TEntityDataBrokerPersistent<ICOUNTRY>, IEntityDataBrokerPersistent<ICOUNTRY>)
  protected
    function TableName: string; override;
    function CreateFromDataset: ICOUNTRY; override;
    function CastEntity(const Entity: ICodolexEntity): ICOUNTRY; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.ICOUNTRY')]
  TCOUNTRYDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.ICUSTOMER')]
  ICUSTOMER = interface(IPersistentEntity)
    ['{88DFC8F3-2ABF-4463-B8E3-DD4A12701241}']
  
    function GetCUST_NO: Integer;
    procedure SetCUST_NO(const Value: Integer);
    function GetCUSTOMER: string;
    procedure SetCUSTOMER(const Value: string);
    function GetCONTACT_FIRST: string;
    procedure SetCONTACT_FIRST(const Value: string);
    function GetCONTACT_LAST: string;
    procedure SetCONTACT_LAST(const Value: string);
    function GetPHONE_NO: string;
    procedure SetPHONE_NO(const Value: string);
    function GetADDRESS_LINE1: string;
    procedure SetADDRESS_LINE1(const Value: string);
    function GetADDRESS_LINE2: string;
    procedure SetADDRESS_LINE2(const Value: string);
    function GetCITY: string;
    procedure SetCITY(const Value: string);
    function GetSTATE_PROVINCE: string;
    procedure SetSTATE_PROVINCE(const Value: string);
    function GetCOUNTRY: string;
    procedure SetCOUNTRY(const Value: string);
    function GetPOSTAL_CODE: string;
    procedure SetPOSTAL_CODE(const Value: string);
    function GetON_HOLD: string;
    procedure SetON_HOLD(const Value: string);
    function GetCOUNTRY_COUNTRY_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY;
    procedure SetCOUNTRY_COUNTRY_COUNTRY(const Value: TestCodolex.DataSource.TestDataModule.ICOUNTRY);
    function GetSALES_CUST_NO_CUST_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>;
    procedure SetSALES_CUST_NO_CUST_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>);
  
    property CUST_NO: Integer read GetCUST_NO write SetCUST_NO;
    property CUSTOMER: string read GetCUSTOMER write SetCUSTOMER;
    property CONTACT_FIRST: string read GetCONTACT_FIRST write SetCONTACT_FIRST;
    property CONTACT_LAST: string read GetCONTACT_LAST write SetCONTACT_LAST;
    property PHONE_NO: string read GetPHONE_NO write SetPHONE_NO;
    property ADDRESS_LINE1: string read GetADDRESS_LINE1 write SetADDRESS_LINE1;
    property ADDRESS_LINE2: string read GetADDRESS_LINE2 write SetADDRESS_LINE2;
    property CITY: string read GetCITY write SetCITY;
    property STATE_PROVINCE: string read GetSTATE_PROVINCE write SetSTATE_PROVINCE;
    property COUNTRY: string read GetCOUNTRY write SetCOUNTRY;
    property POSTAL_CODE: string read GetPOSTAL_CODE write SetPOSTAL_CODE;
    property ON_HOLD: string read GetON_HOLD write SetON_HOLD;
    property COUNTRY_COUNTRY_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY read GetCOUNTRY_COUNTRY_COUNTRY write SetCOUNTRY_COUNTRY_COUNTRY;
    property SALES_CUST_NO_CUST_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES> read GetSALES_CUST_NO_CUST_NOList write SetSALES_CUST_NO_CUST_NOList;
  end;
  
  TCUSTOMER = class(TPersistentEntity, ICUSTOMER)
  private
    FCUST_NO: Integer;
    FCUSTOMER: string;
    FCONTACT_FIRST: string;
    FCONTACT_LAST: string;
    FPHONE_NO: string;
    FADDRESS_LINE1: string;
    FADDRESS_LINE2: string;
    FCITY: string;
    FSTATE_PROVINCE: string;
    FCOUNTRY: string;
    FPOSTAL_CODE: string;
    FON_HOLD: string;
    [JSONMarshalled(False)] FCOUNTRY_COUNTRY_COUNTRY: IProxy<TestCodolex.DataSource.TestDataModule.ICOUNTRY>;
    [JSONMarshalled(False)] FSALES_CUST_NO_CUST_NOList: IProxy<TestCodolex.DataSource.TestDataModule.ISALES>;
  public
    function GetCUST_NO: Integer;
    procedure SetCUST_NO(const Value: Integer);
    function GetCUSTOMER: string;
    procedure SetCUSTOMER(const Value: string);
    function GetCONTACT_FIRST: string;
    procedure SetCONTACT_FIRST(const Value: string);
    function GetCONTACT_LAST: string;
    procedure SetCONTACT_LAST(const Value: string);
    function GetPHONE_NO: string;
    procedure SetPHONE_NO(const Value: string);
    function GetADDRESS_LINE1: string;
    procedure SetADDRESS_LINE1(const Value: string);
    function GetADDRESS_LINE2: string;
    procedure SetADDRESS_LINE2(const Value: string);
    function GetCITY: string;
    procedure SetCITY(const Value: string);
    function GetSTATE_PROVINCE: string;
    procedure SetSTATE_PROVINCE(const Value: string);
    function GetCOUNTRY: string;
    procedure SetCOUNTRY(const Value: string);
    function GetPOSTAL_CODE: string;
    procedure SetPOSTAL_CODE(const Value: string);
    function GetON_HOLD: string;
    procedure SetON_HOLD(const Value: string);
    function GetCOUNTRY_COUNTRY_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY;
    procedure SetCOUNTRY_COUNTRY_COUNTRY(const Value: TestCodolex.DataSource.TestDataModule.ICOUNTRY);
    function GetSALES_CUST_NO_CUST_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>;
    procedure SetSALES_CUST_NO_CUST_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>);
  
    property CUST_NO: Integer read GetCUST_NO write SetCUST_NO;
    property CUSTOMER: string read GetCUSTOMER write SetCUSTOMER;
    property CONTACT_FIRST: string read GetCONTACT_FIRST write SetCONTACT_FIRST;
    property CONTACT_LAST: string read GetCONTACT_LAST write SetCONTACT_LAST;
    property PHONE_NO: string read GetPHONE_NO write SetPHONE_NO;
    property ADDRESS_LINE1: string read GetADDRESS_LINE1 write SetADDRESS_LINE1;
    property ADDRESS_LINE2: string read GetADDRESS_LINE2 write SetADDRESS_LINE2;
    property CITY: string read GetCITY write SetCITY;
    property STATE_PROVINCE: string read GetSTATE_PROVINCE write SetSTATE_PROVINCE;
    property COUNTRY: string read GetCOUNTRY write SetCOUNTRY;
    property POSTAL_CODE: string read GetPOSTAL_CODE write SetPOSTAL_CODE;
    property ON_HOLD: string read GetON_HOLD write SetON_HOLD;
    property COUNTRY_COUNTRY_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY read GetCOUNTRY_COUNTRY_COUNTRY write SetCOUNTRY_COUNTRY_COUNTRY;
    property SALES_CUST_NO_CUST_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES> read GetSALES_CUST_NO_CUST_NOList write SetSALES_CUST_NO_CUST_NOList;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.ICUSTOMER')]
  TCUSTOMERDataBroker = class(TEntityDataBrokerPersistent<ICUSTOMER>, IEntityDataBrokerPersistent<ICUSTOMER>)
  protected
    function TableName: string; override;
    function CreateFromDataset: ICUSTOMER; override;
    function CastEntity(const Entity: ICodolexEntity): ICUSTOMER; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.ICUSTOMER')]
  TCUSTOMERDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.IDEPARTMENT')]
  IDEPARTMENT = interface(IPersistentEntity)
    ['{98C892E3-4BCE-42CF-91AD-EF3F155A93AA}']
  
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
    function GetDEPARTMENT: string;
    procedure SetDEPARTMENT(const Value: string);
    function GetHEAD_DEPT: string;
    procedure SetHEAD_DEPT(const Value: string);
    function GetMNGR_NO: Integer;
    procedure SetMNGR_NO(const Value: Integer);
    function GetBUDGET: Double;
    procedure SetBUDGET(const Value: Double);
    function GetLOCATION: string;
    procedure SetLOCATION(const Value: string);
    function GetPHONE_NO: string;
    procedure SetPHONE_NO(const Value: string);
    function GetDEPARTMENT_DEPT_NO_HEAD_DEPT: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
    procedure SetDEPARTMENT_DEPT_NO_HEAD_DEPT(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
    function GetEMPLOYEE_EMP_NO_MNGR_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_MNGR_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
    function GetEMPLOYEE_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
    procedure SetEMPLOYEE_DEPT_NO_DEPT_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>);
    function GetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
    procedure SetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>);
  
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
    property DEPARTMENT: string read GetDEPARTMENT write SetDEPARTMENT;
    property HEAD_DEPT: string read GetHEAD_DEPT write SetHEAD_DEPT;
    property MNGR_NO: Integer read GetMNGR_NO write SetMNGR_NO;
    property BUDGET: Double read GetBUDGET write SetBUDGET;
    property LOCATION: string read GetLOCATION write SetLOCATION;
    property PHONE_NO: string read GetPHONE_NO write SetPHONE_NO;
    property DEPARTMENT_DEPT_NO_HEAD_DEPT: TestCodolex.DataSource.TestDataModule.IDEPARTMENT read GetDEPARTMENT_DEPT_NO_HEAD_DEPT write SetDEPARTMENT_DEPT_NO_HEAD_DEPT;
    property EMPLOYEE_EMP_NO_MNGR_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_MNGR_NO write SetEMPLOYEE_EMP_NO_MNGR_NO;
    property EMPLOYEE_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE> read GetEMPLOYEE_DEPT_NO_DEPT_NOList write SetEMPLOYEE_DEPT_NO_DEPT_NOList;
    property PROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET> read GetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList write SetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList;
  end;
  
  TDEPARTMENT = class(TPersistentEntity, IDEPARTMENT)
  private
    FDEPT_NO: string;
    FDEPARTMENT: string;
    FHEAD_DEPT: string;
    FMNGR_NO: Integer;
    FBUDGET: Double;
    FLOCATION: string;
    FPHONE_NO: string;
    [JSONMarshalled(False)] FDEPARTMENT_DEPT_NO_HEAD_DEPT: IProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>;
    [JSONMarshalled(False)] FEMPLOYEE_EMP_NO_MNGR_NO: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
    [JSONMarshalled(False)] FEMPLOYEE_DEPT_NO_DEPT_NOList: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
    [JSONMarshalled(False)] FPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList: IProxy<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
  public
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
    function GetDEPARTMENT: string;
    procedure SetDEPARTMENT(const Value: string);
    function GetHEAD_DEPT: string;
    procedure SetHEAD_DEPT(const Value: string);
    function GetMNGR_NO: Integer;
    procedure SetMNGR_NO(const Value: Integer);
    function GetBUDGET: Double;
    procedure SetBUDGET(const Value: Double);
    function GetLOCATION: string;
    procedure SetLOCATION(const Value: string);
    function GetPHONE_NO: string;
    procedure SetPHONE_NO(const Value: string);
    function GetDEPARTMENT_DEPT_NO_HEAD_DEPT: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
    procedure SetDEPARTMENT_DEPT_NO_HEAD_DEPT(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
    function GetEMPLOYEE_EMP_NO_MNGR_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_MNGR_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
    function GetEMPLOYEE_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
    procedure SetEMPLOYEE_DEPT_NO_DEPT_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>);
    function GetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
    procedure SetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>);
  
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
    property DEPARTMENT: string read GetDEPARTMENT write SetDEPARTMENT;
    property HEAD_DEPT: string read GetHEAD_DEPT write SetHEAD_DEPT;
    property MNGR_NO: Integer read GetMNGR_NO write SetMNGR_NO;
    property BUDGET: Double read GetBUDGET write SetBUDGET;
    property LOCATION: string read GetLOCATION write SetLOCATION;
    property PHONE_NO: string read GetPHONE_NO write SetPHONE_NO;
    property DEPARTMENT_DEPT_NO_HEAD_DEPT: TestCodolex.DataSource.TestDataModule.IDEPARTMENT read GetDEPARTMENT_DEPT_NO_HEAD_DEPT write SetDEPARTMENT_DEPT_NO_HEAD_DEPT;
    property EMPLOYEE_EMP_NO_MNGR_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_MNGR_NO write SetEMPLOYEE_EMP_NO_MNGR_NO;
    property EMPLOYEE_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE> read GetEMPLOYEE_DEPT_NO_DEPT_NOList write SetEMPLOYEE_DEPT_NO_DEPT_NOList;
    property PROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET> read GetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList write SetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.IDEPARTMENT')]
  TDEPARTMENTDataBroker = class(TEntityDataBrokerPersistent<IDEPARTMENT>, IEntityDataBrokerPersistent<IDEPARTMENT>)
  protected
    function TableName: string; override;
    function CreateFromDataset: IDEPARTMENT; override;
    function CastEntity(const Entity: ICodolexEntity): IDEPARTMENT; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.IDEPARTMENT')]
  TDEPARTMENTDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.IEMPLOYEE')]
  IEMPLOYEE = interface(IPersistentEntity)
    ['{DFF9187E-0910-4FEA-AC06-7C22E7B8FCED}']
  
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetFIRST_NAME: string;
    procedure SetFIRST_NAME(const Value: string);
    function GetLAST_NAME: string;
    procedure SetLAST_NAME(const Value: string);
    function GetPHONE_EXT: string;
    procedure SetPHONE_EXT(const Value: string);
    function GetHIRE_DATE: TDateTime;
    procedure SetHIRE_DATE(const Value: TDateTime);
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
    function GetJOB_CODE: string;
    procedure SetJOB_CODE(const Value: string);
    function GetJOB_GRADE: Integer;
    procedure SetJOB_GRADE(const Value: Integer);
    function GetJOB_COUNTRY: string;
    procedure SetJOB_COUNTRY(const Value: string);
    function GetSALARY: Double;
    procedure SetSALARY(const Value: Double);
    function GetFULL_NAME: string;
    procedure SetFULL_NAME(const Value: string);
    function GetDEPARTMENT_MNGR_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>;
    procedure SetDEPARTMENT_MNGR_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>);
    function GetDEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
    procedure SetDEPARTMENT_DEPT_NO_DEPT_NO(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
    function GetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
    procedure SetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>);
    function GetPROJECT_TEAM_LEADER_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT>;
    procedure SetPROJECT_TEAM_LEADER_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT>);
    function GetSALARY_HISTORY_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>;
    procedure SetSALARY_HISTORY_EMP_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>);
    function GetSALES_SALES_REP_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>;
    procedure SetSALES_SALES_REP_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property FIRST_NAME: string read GetFIRST_NAME write SetFIRST_NAME;
    property LAST_NAME: string read GetLAST_NAME write SetLAST_NAME;
    property PHONE_EXT: string read GetPHONE_EXT write SetPHONE_EXT;
    property HIRE_DATE: TDateTime read GetHIRE_DATE write SetHIRE_DATE;
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
    property JOB_CODE: string read GetJOB_CODE write SetJOB_CODE;
    property JOB_GRADE: Integer read GetJOB_GRADE write SetJOB_GRADE;
    property JOB_COUNTRY: string read GetJOB_COUNTRY write SetJOB_COUNTRY;
    property SALARY: Double read GetSALARY write SetSALARY;
    property FULL_NAME: string read GetFULL_NAME write SetFULL_NAME;
    property DEPARTMENT_MNGR_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT> read GetDEPARTMENT_MNGR_NO_EMP_NOList write SetDEPARTMENT_MNGR_NO_EMP_NOList;
    property DEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT read GetDEPARTMENT_DEPT_NO_DEPT_NO write SetDEPARTMENT_DEPT_NO_DEPT_NO;
    property EMPLOYEE_PROJECT_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT> read GetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList write SetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList;
    property PROJECT_TEAM_LEADER_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT> read GetPROJECT_TEAM_LEADER_EMP_NOList write SetPROJECT_TEAM_LEADER_EMP_NOList;
    property SALARY_HISTORY_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY> read GetSALARY_HISTORY_EMP_NO_EMP_NOList write SetSALARY_HISTORY_EMP_NO_EMP_NOList;
    property SALES_SALES_REP_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES> read GetSALES_SALES_REP_EMP_NOList write SetSALES_SALES_REP_EMP_NOList;
  end;
  
  TEMPLOYEE = class(TPersistentEntity, IEMPLOYEE)
  private
    FEMP_NO: Integer;
    FFIRST_NAME: string;
    FLAST_NAME: string;
    FPHONE_EXT: string;
    FHIRE_DATE: TDateTime;
    FDEPT_NO: string;
    FJOB_CODE: string;
    FJOB_GRADE: Integer;
    FJOB_COUNTRY: string;
    FSALARY: Double;
    FFULL_NAME: string;
    [JSONMarshalled(False)] FDEPARTMENT_MNGR_NO_EMP_NOList: IProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>;
    [JSONMarshalled(False)] FDEPARTMENT_DEPT_NO_DEPT_NO: IProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>;
    [JSONMarshalled(False)] FEMPLOYEE_PROJECT_EMP_NO_EMP_NOList: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
    [JSONMarshalled(False)] FPROJECT_TEAM_LEADER_EMP_NOList: IProxy<TestCodolex.DataSource.TestDataModule.IPROJECT>;
    [JSONMarshalled(False)] FSALARY_HISTORY_EMP_NO_EMP_NOList: IProxy<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>;
    [JSONMarshalled(False)] FSALES_SALES_REP_EMP_NOList: IProxy<TestCodolex.DataSource.TestDataModule.ISALES>;
  public
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetFIRST_NAME: string;
    procedure SetFIRST_NAME(const Value: string);
    function GetLAST_NAME: string;
    procedure SetLAST_NAME(const Value: string);
    function GetPHONE_EXT: string;
    procedure SetPHONE_EXT(const Value: string);
    function GetHIRE_DATE: TDateTime;
    procedure SetHIRE_DATE(const Value: TDateTime);
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
    function GetJOB_CODE: string;
    procedure SetJOB_CODE(const Value: string);
    function GetJOB_GRADE: Integer;
    procedure SetJOB_GRADE(const Value: Integer);
    function GetJOB_COUNTRY: string;
    procedure SetJOB_COUNTRY(const Value: string);
    function GetSALARY: Double;
    procedure SetSALARY(const Value: Double);
    function GetFULL_NAME: string;
    procedure SetFULL_NAME(const Value: string);
    function GetDEPARTMENT_MNGR_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>;
    procedure SetDEPARTMENT_MNGR_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>);
    function GetDEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
    procedure SetDEPARTMENT_DEPT_NO_DEPT_NO(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
    function GetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
    procedure SetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>);
    function GetPROJECT_TEAM_LEADER_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT>;
    procedure SetPROJECT_TEAM_LEADER_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT>);
    function GetSALARY_HISTORY_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>;
    procedure SetSALARY_HISTORY_EMP_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>);
    function GetSALES_SALES_REP_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>;
    procedure SetSALES_SALES_REP_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property FIRST_NAME: string read GetFIRST_NAME write SetFIRST_NAME;
    property LAST_NAME: string read GetLAST_NAME write SetLAST_NAME;
    property PHONE_EXT: string read GetPHONE_EXT write SetPHONE_EXT;
    property HIRE_DATE: TDateTime read GetHIRE_DATE write SetHIRE_DATE;
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
    property JOB_CODE: string read GetJOB_CODE write SetJOB_CODE;
    property JOB_GRADE: Integer read GetJOB_GRADE write SetJOB_GRADE;
    property JOB_COUNTRY: string read GetJOB_COUNTRY write SetJOB_COUNTRY;
    property SALARY: Double read GetSALARY write SetSALARY;
    property FULL_NAME: string read GetFULL_NAME write SetFULL_NAME;
    property DEPARTMENT_MNGR_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT> read GetDEPARTMENT_MNGR_NO_EMP_NOList write SetDEPARTMENT_MNGR_NO_EMP_NOList;
    property DEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT read GetDEPARTMENT_DEPT_NO_DEPT_NO write SetDEPARTMENT_DEPT_NO_DEPT_NO;
    property EMPLOYEE_PROJECT_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT> read GetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList write SetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList;
    property PROJECT_TEAM_LEADER_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT> read GetPROJECT_TEAM_LEADER_EMP_NOList write SetPROJECT_TEAM_LEADER_EMP_NOList;
    property SALARY_HISTORY_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY> read GetSALARY_HISTORY_EMP_NO_EMP_NOList write SetSALARY_HISTORY_EMP_NO_EMP_NOList;
    property SALES_SALES_REP_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES> read GetSALES_SALES_REP_EMP_NOList write SetSALES_SALES_REP_EMP_NOList;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.IEMPLOYEE')]
  TEMPLOYEEDataBroker = class(TEntityDataBrokerPersistent<IEMPLOYEE>, IEntityDataBrokerPersistent<IEMPLOYEE>)
  protected
    function TableName: string; override;
    function CreateFromDataset: IEMPLOYEE; override;
    function CastEntity(const Entity: ICodolexEntity): IEMPLOYEE; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.IEMPLOYEE')]
  TEMPLOYEEDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.IEMPLOYEE1')]
  IEMPLOYEE1 = interface(IPersistentEntity)
    ['{A4637EDA-9F6E-40B5-8867-395B4095B99A}']
  
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetFIRST_NAME: string;
    procedure SetFIRST_NAME(const Value: string);
    function GetLAST_NAME: string;
    procedure SetLAST_NAME(const Value: string);
    function GetHIRE_DATE: TDateTime;
    procedure SetHIRE_DATE(const Value: TDateTime);
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property FIRST_NAME: string read GetFIRST_NAME write SetFIRST_NAME;
    property LAST_NAME: string read GetLAST_NAME write SetLAST_NAME;
    property HIRE_DATE: TDateTime read GetHIRE_DATE write SetHIRE_DATE;
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
  end;
  
  TEMPLOYEE1 = class(TPersistentEntity, IEMPLOYEE1)
  private
    FEMP_NO: Integer;
    FFIRST_NAME: string;
    FLAST_NAME: string;
    FHIRE_DATE: TDateTime;
    FDEPT_NO: string;
  public
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetFIRST_NAME: string;
    procedure SetFIRST_NAME(const Value: string);
    function GetLAST_NAME: string;
    procedure SetLAST_NAME(const Value: string);
    function GetHIRE_DATE: TDateTime;
    procedure SetHIRE_DATE(const Value: TDateTime);
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property FIRST_NAME: string read GetFIRST_NAME write SetFIRST_NAME;
    property LAST_NAME: string read GetLAST_NAME write SetLAST_NAME;
    property HIRE_DATE: TDateTime read GetHIRE_DATE write SetHIRE_DATE;
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.IEMPLOYEE1')]
  TEMPLOYEE1DataBroker = class(TEntityDataBrokerPersistent<IEMPLOYEE1>, IEntityDataBrokerPersistent<IEMPLOYEE1>)
  protected
    function TableName: string; override;
    function CreateFromDataset: IEMPLOYEE1; override;
    function CastEntity(const Entity: ICodolexEntity): IEMPLOYEE1; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.IEMPLOYEE1')]
  TEMPLOYEE1DataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT')]
  IEMPLOYEE_PROJECT = interface(IPersistentEntity)
    ['{F30D42E4-9A83-40CD-BBEE-8816D55EFB3A}']
  
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetPROJ_ID: string;
    procedure SetPROJ_ID(const Value: string);
    function GetEMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_EMP_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
    function GetPROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT;
    procedure SetPROJECT_PROJ_ID_PROJ_ID(const Value: TestCodolex.DataSource.TestDataModule.IPROJECT);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property PROJ_ID: string read GetPROJ_ID write SetPROJ_ID;
    property EMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_EMP_NO write SetEMPLOYEE_EMP_NO_EMP_NO;
    property PROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT read GetPROJECT_PROJ_ID_PROJ_ID write SetPROJECT_PROJ_ID_PROJ_ID;
  end;
  
  TEMPLOYEE_PROJECT = class(TPersistentEntity, IEMPLOYEE_PROJECT)
  private
    FEMP_NO: Integer;
    FPROJ_ID: string;
    [JSONMarshalled(False)] FEMPLOYEE_EMP_NO_EMP_NO: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
    [JSONMarshalled(False)] FPROJECT_PROJ_ID_PROJ_ID: IProxy<TestCodolex.DataSource.TestDataModule.IPROJECT>;
  public
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetPROJ_ID: string;
    procedure SetPROJ_ID(const Value: string);
    function GetEMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_EMP_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
    function GetPROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT;
    procedure SetPROJECT_PROJ_ID_PROJ_ID(const Value: TestCodolex.DataSource.TestDataModule.IPROJECT);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property PROJ_ID: string read GetPROJ_ID write SetPROJ_ID;
    property EMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_EMP_NO write SetEMPLOYEE_EMP_NO_EMP_NO;
    property PROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT read GetPROJECT_PROJ_ID_PROJ_ID write SetPROJECT_PROJ_ID_PROJ_ID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT')]
  TEMPLOYEE_PROJECTDataBroker = class(TEntityDataBrokerPersistent<IEMPLOYEE_PROJECT>, IEntityDataBrokerPersistent<IEMPLOYEE_PROJECT>)
  protected
    function TableName: string; override;
    function CreateFromDataset: IEMPLOYEE_PROJECT; override;
    function CastEntity(const Entity: ICodolexEntity): IEMPLOYEE_PROJECT; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT')]
  TEMPLOYEE_PROJECTDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.IJOB')]
  IJOB = interface(IPersistentEntity)
    ['{460AC223-D494-420C-B88D-160832F0D936}']
  
    function GetJOB_CODE: string;
    procedure SetJOB_CODE(const Value: string);
    function GetJOB_GRADE: Integer;
    procedure SetJOB_GRADE(const Value: Integer);
    function GetJOB_COUNTRY: string;
    procedure SetJOB_COUNTRY(const Value: string);
    function GetJOB_TITLE: string;
    procedure SetJOB_TITLE(const Value: string);
    function GetMIN_SALARY: Double;
    procedure SetMIN_SALARY(const Value: Double);
    function GetMAX_SALARY: Double;
    procedure SetMAX_SALARY(const Value: Double);
    function GetJOB_REQUIREMENT: string;
    procedure SetJOB_REQUIREMENT(const Value: string);
    function GetLANGUAGE_REQ: string;
    procedure SetLANGUAGE_REQ(const Value: string);
    function GetCOUNTRY_COUNTRY_JOB_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY;
    procedure SetCOUNTRY_COUNTRY_JOB_COUNTRY(const Value: TestCodolex.DataSource.TestDataModule.ICOUNTRY);
  
    property JOB_CODE: string read GetJOB_CODE write SetJOB_CODE;
    property JOB_GRADE: Integer read GetJOB_GRADE write SetJOB_GRADE;
    property JOB_COUNTRY: string read GetJOB_COUNTRY write SetJOB_COUNTRY;
    property JOB_TITLE: string read GetJOB_TITLE write SetJOB_TITLE;
    property MIN_SALARY: Double read GetMIN_SALARY write SetMIN_SALARY;
    property MAX_SALARY: Double read GetMAX_SALARY write SetMAX_SALARY;
    property JOB_REQUIREMENT: string read GetJOB_REQUIREMENT write SetJOB_REQUIREMENT;
    property LANGUAGE_REQ: string read GetLANGUAGE_REQ write SetLANGUAGE_REQ;
    property COUNTRY_COUNTRY_JOB_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY read GetCOUNTRY_COUNTRY_JOB_COUNTRY write SetCOUNTRY_COUNTRY_JOB_COUNTRY;
  end;
  
  TJOB = class(TPersistentEntity, IJOB)
  private
    FJOB_CODE: string;
    FJOB_GRADE: Integer;
    FJOB_COUNTRY: string;
    FJOB_TITLE: string;
    FMIN_SALARY: Double;
    FMAX_SALARY: Double;
    FJOB_REQUIREMENT: string;
    FLANGUAGE_REQ: string;
    [JSONMarshalled(False)] FCOUNTRY_COUNTRY_JOB_COUNTRY: IProxy<TestCodolex.DataSource.TestDataModule.ICOUNTRY>;
  public
    function GetJOB_CODE: string;
    procedure SetJOB_CODE(const Value: string);
    function GetJOB_GRADE: Integer;
    procedure SetJOB_GRADE(const Value: Integer);
    function GetJOB_COUNTRY: string;
    procedure SetJOB_COUNTRY(const Value: string);
    function GetJOB_TITLE: string;
    procedure SetJOB_TITLE(const Value: string);
    function GetMIN_SALARY: Double;
    procedure SetMIN_SALARY(const Value: Double);
    function GetMAX_SALARY: Double;
    procedure SetMAX_SALARY(const Value: Double);
    function GetJOB_REQUIREMENT: string;
    procedure SetJOB_REQUIREMENT(const Value: string);
    function GetLANGUAGE_REQ: string;
    procedure SetLANGUAGE_REQ(const Value: string);
    function GetCOUNTRY_COUNTRY_JOB_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY;
    procedure SetCOUNTRY_COUNTRY_JOB_COUNTRY(const Value: TestCodolex.DataSource.TestDataModule.ICOUNTRY);
  
    property JOB_CODE: string read GetJOB_CODE write SetJOB_CODE;
    property JOB_GRADE: Integer read GetJOB_GRADE write SetJOB_GRADE;
    property JOB_COUNTRY: string read GetJOB_COUNTRY write SetJOB_COUNTRY;
    property JOB_TITLE: string read GetJOB_TITLE write SetJOB_TITLE;
    property MIN_SALARY: Double read GetMIN_SALARY write SetMIN_SALARY;
    property MAX_SALARY: Double read GetMAX_SALARY write SetMAX_SALARY;
    property JOB_REQUIREMENT: string read GetJOB_REQUIREMENT write SetJOB_REQUIREMENT;
    property LANGUAGE_REQ: string read GetLANGUAGE_REQ write SetLANGUAGE_REQ;
    property COUNTRY_COUNTRY_JOB_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY read GetCOUNTRY_COUNTRY_JOB_COUNTRY write SetCOUNTRY_COUNTRY_JOB_COUNTRY;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.IJOB')]
  TJOBDataBroker = class(TEntityDataBrokerPersistent<IJOB>, IEntityDataBrokerPersistent<IJOB>)
  protected
    function TableName: string; override;
    function CreateFromDataset: IJOB; override;
    function CastEntity(const Entity: ICodolexEntity): IJOB; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.IJOB')]
  TJOBDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.IPROJECT')]
  IPROJECT = interface(IPersistentEntity)
    ['{4BA47AFC-87BB-498A-8755-8209B0E8D6F2}']
  
    function GetPROJ_ID: string;
    procedure SetPROJ_ID(const Value: string);
    function GetPROJ_NAME: string;
    procedure SetPROJ_NAME(const Value: string);
    function GetPROJ_DESC: string;
    procedure SetPROJ_DESC(const Value: string);
    function GetTEAM_LEADER: Integer;
    procedure SetTEAM_LEADER(const Value: Integer);
    function GetPRODUCT: string;
    procedure SetPRODUCT(const Value: string);
    function GetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
    procedure SetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>);
    function GetEMPLOYEE_EMP_NO_TEAM_LEADER: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_TEAM_LEADER(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
    function GetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
    procedure SetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>);
  
    property PROJ_ID: string read GetPROJ_ID write SetPROJ_ID;
    property PROJ_NAME: string read GetPROJ_NAME write SetPROJ_NAME;
    property PROJ_DESC: string read GetPROJ_DESC write SetPROJ_DESC;
    property TEAM_LEADER: Integer read GetTEAM_LEADER write SetTEAM_LEADER;
    property PRODUCT: string read GetPRODUCT write SetPRODUCT;
    property EMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT> read GetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList write SetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList;
    property EMPLOYEE_EMP_NO_TEAM_LEADER: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_TEAM_LEADER write SetEMPLOYEE_EMP_NO_TEAM_LEADER;
    property PROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET> read GetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList write SetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList;
  end;
  
  TPROJECT = class(TPersistentEntity, IPROJECT)
  private
    FPROJ_ID: string;
    FPROJ_NAME: string;
    FPROJ_DESC: string;
    FTEAM_LEADER: Integer;
    FPRODUCT: string;
    [JSONMarshalled(False)] FEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
    [JSONMarshalled(False)] FEMPLOYEE_EMP_NO_TEAM_LEADER: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
    [JSONMarshalled(False)] FPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList: IProxy<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
  public
    function GetPROJ_ID: string;
    procedure SetPROJ_ID(const Value: string);
    function GetPROJ_NAME: string;
    procedure SetPROJ_NAME(const Value: string);
    function GetPROJ_DESC: string;
    procedure SetPROJ_DESC(const Value: string);
    function GetTEAM_LEADER: Integer;
    procedure SetTEAM_LEADER(const Value: Integer);
    function GetPRODUCT: string;
    procedure SetPRODUCT(const Value: string);
    function GetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
    procedure SetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>);
    function GetEMPLOYEE_EMP_NO_TEAM_LEADER: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_TEAM_LEADER(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
    function GetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
    procedure SetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>);
  
    property PROJ_ID: string read GetPROJ_ID write SetPROJ_ID;
    property PROJ_NAME: string read GetPROJ_NAME write SetPROJ_NAME;
    property PROJ_DESC: string read GetPROJ_DESC write SetPROJ_DESC;
    property TEAM_LEADER: Integer read GetTEAM_LEADER write SetTEAM_LEADER;
    property PRODUCT: string read GetPRODUCT write SetPRODUCT;
    property EMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT> read GetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList write SetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList;
    property EMPLOYEE_EMP_NO_TEAM_LEADER: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_TEAM_LEADER write SetEMPLOYEE_EMP_NO_TEAM_LEADER;
    property PROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET> read GetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList write SetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.IPROJECT')]
  TPROJECTDataBroker = class(TEntityDataBrokerPersistent<IPROJECT>, IEntityDataBrokerPersistent<IPROJECT>)
  protected
    function TableName: string; override;
    function CreateFromDataset: IPROJECT; override;
    function CastEntity(const Entity: ICodolexEntity): IPROJECT; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.IPROJECT')]
  TPROJECTDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET')]
  IPROJ_DEPT_BUDGET = interface(IPersistentEntity)
    ['{FE170F43-C80E-4012-A56B-C455B01F29DC}']
  
    function GetFISCAL_YEAR: Integer;
    procedure SetFISCAL_YEAR(const Value: Integer);
    function GetPROJ_ID: string;
    procedure SetPROJ_ID(const Value: string);
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
    function GetQUART_HEAD_CNT: Integer;
    procedure SetQUART_HEAD_CNT(const Value: Integer);
    function GetPROJECTED_BUDGET: Double;
    procedure SetPROJECTED_BUDGET(const Value: Double);
    function GetDEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
    procedure SetDEPARTMENT_DEPT_NO_DEPT_NO(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
    function GetPROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT;
    procedure SetPROJECT_PROJ_ID_PROJ_ID(const Value: TestCodolex.DataSource.TestDataModule.IPROJECT);
  
    property FISCAL_YEAR: Integer read GetFISCAL_YEAR write SetFISCAL_YEAR;
    property PROJ_ID: string read GetPROJ_ID write SetPROJ_ID;
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
    property QUART_HEAD_CNT: Integer read GetQUART_HEAD_CNT write SetQUART_HEAD_CNT;
    property PROJECTED_BUDGET: Double read GetPROJECTED_BUDGET write SetPROJECTED_BUDGET;
    property DEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT read GetDEPARTMENT_DEPT_NO_DEPT_NO write SetDEPARTMENT_DEPT_NO_DEPT_NO;
    property PROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT read GetPROJECT_PROJ_ID_PROJ_ID write SetPROJECT_PROJ_ID_PROJ_ID;
  end;
  
  TPROJ_DEPT_BUDGET = class(TPersistentEntity, IPROJ_DEPT_BUDGET)
  private
    FFISCAL_YEAR: Integer;
    FPROJ_ID: string;
    FDEPT_NO: string;
    FQUART_HEAD_CNT: Integer;
    FPROJECTED_BUDGET: Double;
    [JSONMarshalled(False)] FDEPARTMENT_DEPT_NO_DEPT_NO: IProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>;
    [JSONMarshalled(False)] FPROJECT_PROJ_ID_PROJ_ID: IProxy<TestCodolex.DataSource.TestDataModule.IPROJECT>;
  public
    function GetFISCAL_YEAR: Integer;
    procedure SetFISCAL_YEAR(const Value: Integer);
    function GetPROJ_ID: string;
    procedure SetPROJ_ID(const Value: string);
    function GetDEPT_NO: string;
    procedure SetDEPT_NO(const Value: string);
    function GetQUART_HEAD_CNT: Integer;
    procedure SetQUART_HEAD_CNT(const Value: Integer);
    function GetPROJECTED_BUDGET: Double;
    procedure SetPROJECTED_BUDGET(const Value: Double);
    function GetDEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
    procedure SetDEPARTMENT_DEPT_NO_DEPT_NO(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
    function GetPROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT;
    procedure SetPROJECT_PROJ_ID_PROJ_ID(const Value: TestCodolex.DataSource.TestDataModule.IPROJECT);
  
    property FISCAL_YEAR: Integer read GetFISCAL_YEAR write SetFISCAL_YEAR;
    property PROJ_ID: string read GetPROJ_ID write SetPROJ_ID;
    property DEPT_NO: string read GetDEPT_NO write SetDEPT_NO;
    property QUART_HEAD_CNT: Integer read GetQUART_HEAD_CNT write SetQUART_HEAD_CNT;
    property PROJECTED_BUDGET: Double read GetPROJECTED_BUDGET write SetPROJECTED_BUDGET;
    property DEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT read GetDEPARTMENT_DEPT_NO_DEPT_NO write SetDEPARTMENT_DEPT_NO_DEPT_NO;
    property PROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT read GetPROJECT_PROJ_ID_PROJ_ID write SetPROJECT_PROJ_ID_PROJ_ID;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET')]
  TPROJ_DEPT_BUDGETDataBroker = class(TEntityDataBrokerPersistent<IPROJ_DEPT_BUDGET>, IEntityDataBrokerPersistent<IPROJ_DEPT_BUDGET>)
  protected
    function TableName: string; override;
    function CreateFromDataset: IPROJ_DEPT_BUDGET; override;
    function CastEntity(const Entity: ICodolexEntity): IPROJ_DEPT_BUDGET; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET')]
  TPROJ_DEPT_BUDGETDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY')]
  ISALARY_HISTORY = interface(IPersistentEntity)
    ['{A2212546-E1DA-482E-8AEC-706EBA706715}']
  
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetCHANGE_DATE: TDateTime;
    procedure SetCHANGE_DATE(const Value: TDateTime);
    function GetUPDATER_ID: string;
    procedure SetUPDATER_ID(const Value: string);
    function GetOLD_SALARY: Double;
    procedure SetOLD_SALARY(const Value: Double);
    function GetPERCENT_CHANGE: Double;
    procedure SetPERCENT_CHANGE(const Value: Double);
    function GetNEW_SALARY: Double;
    procedure SetNEW_SALARY(const Value: Double);
    function GetEMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_EMP_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property CHANGE_DATE: TDateTime read GetCHANGE_DATE write SetCHANGE_DATE;
    property UPDATER_ID: string read GetUPDATER_ID write SetUPDATER_ID;
    property OLD_SALARY: Double read GetOLD_SALARY write SetOLD_SALARY;
    property PERCENT_CHANGE: Double read GetPERCENT_CHANGE write SetPERCENT_CHANGE;
    property NEW_SALARY: Double read GetNEW_SALARY write SetNEW_SALARY;
    property EMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_EMP_NO write SetEMPLOYEE_EMP_NO_EMP_NO;
  end;
  
  TSALARY_HISTORY = class(TPersistentEntity, ISALARY_HISTORY)
  private
    FEMP_NO: Integer;
    FCHANGE_DATE: TDateTime;
    FUPDATER_ID: string;
    FOLD_SALARY: Double;
    FPERCENT_CHANGE: Double;
    FNEW_SALARY: Double;
    [JSONMarshalled(False)] FEMPLOYEE_EMP_NO_EMP_NO: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
  public
    function GetEMP_NO: Integer;
    procedure SetEMP_NO(const Value: Integer);
    function GetCHANGE_DATE: TDateTime;
    procedure SetCHANGE_DATE(const Value: TDateTime);
    function GetUPDATER_ID: string;
    procedure SetUPDATER_ID(const Value: string);
    function GetOLD_SALARY: Double;
    procedure SetOLD_SALARY(const Value: Double);
    function GetPERCENT_CHANGE: Double;
    procedure SetPERCENT_CHANGE(const Value: Double);
    function GetNEW_SALARY: Double;
    procedure SetNEW_SALARY(const Value: Double);
    function GetEMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_EMP_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
  
    property EMP_NO: Integer read GetEMP_NO write SetEMP_NO;
    property CHANGE_DATE: TDateTime read GetCHANGE_DATE write SetCHANGE_DATE;
    property UPDATER_ID: string read GetUPDATER_ID write SetUPDATER_ID;
    property OLD_SALARY: Double read GetOLD_SALARY write SetOLD_SALARY;
    property PERCENT_CHANGE: Double read GetPERCENT_CHANGE write SetPERCENT_CHANGE;
    property NEW_SALARY: Double read GetNEW_SALARY write SetNEW_SALARY;
    property EMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_EMP_NO write SetEMPLOYEE_EMP_NO_EMP_NO;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY')]
  TSALARY_HISTORYDataBroker = class(TEntityDataBrokerPersistent<ISALARY_HISTORY>, IEntityDataBrokerPersistent<ISALARY_HISTORY>)
  protected
    function TableName: string; override;
    function CreateFromDataset: ISALARY_HISTORY; override;
    function CastEntity(const Entity: ICodolexEntity): ISALARY_HISTORY; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY')]
  TSALARY_HISTORYDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  [DataEntity('TestCodolex.DataSource.TestDataModule.ISALES')]
  ISALES = interface(IPersistentEntity)
    ['{22818FA9-66C3-493F-9692-654B36CC0944}']
  
    function GetPO_NUMBER: string;
    procedure SetPO_NUMBER(const Value: string);
    function GetCUST_NO: Integer;
    procedure SetCUST_NO(const Value: Integer);
    function GetSALES_REP: Integer;
    procedure SetSALES_REP(const Value: Integer);
    function GetORDER_STATUS: string;
    procedure SetORDER_STATUS(const Value: string);
    function GetORDER_DATE: TDateTime;
    procedure SetORDER_DATE(const Value: TDateTime);
    function GetSHIP_DATE: TDateTime;
    procedure SetSHIP_DATE(const Value: TDateTime);
    function GetDATE_NEEDED: TDateTime;
    procedure SetDATE_NEEDED(const Value: TDateTime);
    function GetPAID: string;
    procedure SetPAID(const Value: string);
    function GetQTY_ORDERED: Integer;
    procedure SetQTY_ORDERED(const Value: Integer);
    function GetTOTAL_VALUE: Double;
    procedure SetTOTAL_VALUE(const Value: Double);
    function GetDISCOUNT: Integer;
    procedure SetDISCOUNT(const Value: Integer);
    function GetITEM_TYPE: string;
    procedure SetITEM_TYPE(const Value: string);
    function GetAGED: Double;
    procedure SetAGED(const Value: Double);
    function GetCUSTOMER_CUST_NO_CUST_NO: TestCodolex.DataSource.TestDataModule.ICUSTOMER;
    procedure SetCUSTOMER_CUST_NO_CUST_NO(const Value: TestCodolex.DataSource.TestDataModule.ICUSTOMER);
    function GetEMPLOYEE_EMP_NO_SALES_REP: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_SALES_REP(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
  
    property PO_NUMBER: string read GetPO_NUMBER write SetPO_NUMBER;
    property CUST_NO: Integer read GetCUST_NO write SetCUST_NO;
    property SALES_REP: Integer read GetSALES_REP write SetSALES_REP;
    property ORDER_STATUS: string read GetORDER_STATUS write SetORDER_STATUS;
    property ORDER_DATE: TDateTime read GetORDER_DATE write SetORDER_DATE;
    property SHIP_DATE: TDateTime read GetSHIP_DATE write SetSHIP_DATE;
    property DATE_NEEDED: TDateTime read GetDATE_NEEDED write SetDATE_NEEDED;
    property PAID: string read GetPAID write SetPAID;
    property QTY_ORDERED: Integer read GetQTY_ORDERED write SetQTY_ORDERED;
    property TOTAL_VALUE: Double read GetTOTAL_VALUE write SetTOTAL_VALUE;
    property DISCOUNT: Integer read GetDISCOUNT write SetDISCOUNT;
    property ITEM_TYPE: string read GetITEM_TYPE write SetITEM_TYPE;
    property AGED: Double read GetAGED write SetAGED;
    property CUSTOMER_CUST_NO_CUST_NO: TestCodolex.DataSource.TestDataModule.ICUSTOMER read GetCUSTOMER_CUST_NO_CUST_NO write SetCUSTOMER_CUST_NO_CUST_NO;
    property EMPLOYEE_EMP_NO_SALES_REP: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_SALES_REP write SetEMPLOYEE_EMP_NO_SALES_REP;
  end;
  
  TSALES = class(TPersistentEntity, ISALES)
  private
    FPO_NUMBER: string;
    FCUST_NO: Integer;
    FSALES_REP: Integer;
    FORDER_STATUS: string;
    FORDER_DATE: TDateTime;
    FSHIP_DATE: TDateTime;
    FDATE_NEEDED: TDateTime;
    FPAID: string;
    FQTY_ORDERED: Integer;
    FTOTAL_VALUE: Double;
    FDISCOUNT: Integer;
    FITEM_TYPE: string;
    FAGED: Double;
    [JSONMarshalled(False)] FCUSTOMER_CUST_NO_CUST_NO: IProxy<TestCodolex.DataSource.TestDataModule.ICUSTOMER>;
    [JSONMarshalled(False)] FEMPLOYEE_EMP_NO_SALES_REP: IProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
  public
    function GetPO_NUMBER: string;
    procedure SetPO_NUMBER(const Value: string);
    function GetCUST_NO: Integer;
    procedure SetCUST_NO(const Value: Integer);
    function GetSALES_REP: Integer;
    procedure SetSALES_REP(const Value: Integer);
    function GetORDER_STATUS: string;
    procedure SetORDER_STATUS(const Value: string);
    function GetORDER_DATE: TDateTime;
    procedure SetORDER_DATE(const Value: TDateTime);
    function GetSHIP_DATE: TDateTime;
    procedure SetSHIP_DATE(const Value: TDateTime);
    function GetDATE_NEEDED: TDateTime;
    procedure SetDATE_NEEDED(const Value: TDateTime);
    function GetPAID: string;
    procedure SetPAID(const Value: string);
    function GetQTY_ORDERED: Integer;
    procedure SetQTY_ORDERED(const Value: Integer);
    function GetTOTAL_VALUE: Double;
    procedure SetTOTAL_VALUE(const Value: Double);
    function GetDISCOUNT: Integer;
    procedure SetDISCOUNT(const Value: Integer);
    function GetITEM_TYPE: string;
    procedure SetITEM_TYPE(const Value: string);
    function GetAGED: Double;
    procedure SetAGED(const Value: Double);
    function GetCUSTOMER_CUST_NO_CUST_NO: TestCodolex.DataSource.TestDataModule.ICUSTOMER;
    procedure SetCUSTOMER_CUST_NO_CUST_NO(const Value: TestCodolex.DataSource.TestDataModule.ICUSTOMER);
    function GetEMPLOYEE_EMP_NO_SALES_REP: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
    procedure SetEMPLOYEE_EMP_NO_SALES_REP(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
  
    property PO_NUMBER: string read GetPO_NUMBER write SetPO_NUMBER;
    property CUST_NO: Integer read GetCUST_NO write SetCUST_NO;
    property SALES_REP: Integer read GetSALES_REP write SetSALES_REP;
    property ORDER_STATUS: string read GetORDER_STATUS write SetORDER_STATUS;
    property ORDER_DATE: TDateTime read GetORDER_DATE write SetORDER_DATE;
    property SHIP_DATE: TDateTime read GetSHIP_DATE write SetSHIP_DATE;
    property DATE_NEEDED: TDateTime read GetDATE_NEEDED write SetDATE_NEEDED;
    property PAID: string read GetPAID write SetPAID;
    property QTY_ORDERED: Integer read GetQTY_ORDERED write SetQTY_ORDERED;
    property TOTAL_VALUE: Double read GetTOTAL_VALUE write SetTOTAL_VALUE;
    property DISCOUNT: Integer read GetDISCOUNT write SetDISCOUNT;
    property ITEM_TYPE: string read GetITEM_TYPE write SetITEM_TYPE;
    property AGED: Double read GetAGED write SetAGED;
    property CUSTOMER_CUST_NO_CUST_NO: TestCodolex.DataSource.TestDataModule.ICUSTOMER read GetCUSTOMER_CUST_NO_CUST_NO write SetCUSTOMER_CUST_NO_CUST_NO;
    property EMPLOYEE_EMP_NO_SALES_REP: TestCodolex.DataSource.TestDataModule.IEMPLOYEE read GetEMPLOYEE_EMP_NO_SALES_REP write SetEMPLOYEE_EMP_NO_SALES_REP;
  end;
  
  [EntityDataBroker('TestCodolex.DataSource.TestDataModule.ISALES')]
  TSALESDataBroker = class(TEntityDataBrokerPersistent<ISALES>, IEntityDataBrokerPersistent<ISALES>)
  protected
    function TableName: string; override;
    function CreateFromDataset: ISALES; override;
    function CastEntity(const Entity: ICodolexEntity): ISALES; override;
    function GetInsertStatement: string; override;
    function GetUpdateStatement: string; override;
    function GetSelectStatement: string; override;
    function GetPrimaryKeyFields: TArray<IRuntimeField>; override;
    procedure SetParams(const Params: IDatabaseParams); override;
    procedure SetPrimaryKeyValue(const Value: TValue); override;
  end;
  
  [EntityDataSetAdapter('TestCodolex.DataSource.TestDataModule.ISALES')]
  TSALESDataSetAdapter = class(TCodolexEntityDataSetAdapter)
  protected
    procedure MapToDataSet; override;
    procedure MapToEntity; override;
    function CreateNewEntity: ICodolexEntity; override;
    procedure GetFieldValueFromEntity(const FieldName: string; var Value: Variant); override;
    procedure SetFieldValueInEntity(const FieldName: string; const Value: Variant); override;
    procedure AddFieldDefsTo(const FieldDefs: TFieldDefs); override;
  end;
  
  
function COUNTRYDataBroker: IEntityDataBrokerPersistent<ICOUNTRY>;
function CUSTOMERDataBroker: IEntityDataBrokerPersistent<ICUSTOMER>;
function DEPARTMENTDataBroker: IEntityDataBrokerPersistent<IDEPARTMENT>;
function EMPLOYEEDataBroker: IEntityDataBrokerPersistent<IEMPLOYEE>;
function EMPLOYEE1DataBroker: IEntityDataBrokerPersistent<IEMPLOYEE1>;
function EMPLOYEE_PROJECTDataBroker: IEntityDataBrokerPersistent<IEMPLOYEE_PROJECT>;
function JOBDataBroker: IEntityDataBrokerPersistent<IJOB>;
function PROJECTDataBroker: IEntityDataBrokerPersistent<IPROJECT>;
function PROJ_DEPT_BUDGETDataBroker: IEntityDataBrokerPersistent<IPROJ_DEPT_BUDGET>;
function SALARY_HISTORYDataBroker: IEntityDataBrokerPersistent<ISALARY_HISTORY>;
function SALESDataBroker: IEntityDataBrokerPersistent<ISALES>;

implementation

uses
  Codolex.Database.Runtime.Field,
  Codolex.Framework;

function COUNTRYDataBroker: IEntityDataBrokerPersistent<ICOUNTRY>;
begin
  Result := TCOUNTRYDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TCOUNTRY }

function TCOUNTRY.GetCOUNTRY: string;
begin
  Result := FCOUNTRY;
end;

procedure TCOUNTRY.SetCOUNTRY(const Value: string);
begin
  if FCOUNTRY <> Value then
  begin
    FCOUNTRY := Value;
    NotifyChange('COUNTRY');
  end;
end;

function TCOUNTRY.GetCURRENCY: string;
begin
  Result := FCURRENCY;
end;

procedure TCOUNTRY.SetCURRENCY(const Value: string);
begin
  if FCURRENCY <> Value then
  begin
    FCURRENCY := Value;
    NotifyChange('CURRENCY');
  end;
end;

function TCOUNTRY.GetCUSTOMER_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER>;
begin
  if not Assigned(FCUSTOMER_COUNTRY_COUNTRYList) then
    FCUSTOMER_COUNTRY_COUNTRYList := TProxy<TestCodolex.DataSource.TestDataModule.ICUSTOMER>.Create(CUSTOMERDataBroker, 'COUNTRY', FCOUNTRY);
  
  Result := FCUSTOMER_COUNTRY_COUNTRYList.Values;
end;

procedure TCOUNTRY.SetCUSTOMER_COUNTRY_COUNTRYList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ICUSTOMER>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TCOUNTRY.GetJOB_JOB_COUNTRY_COUNTRYList: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB>;
begin
  if not Assigned(FJOB_JOB_COUNTRY_COUNTRYList) then
    FJOB_JOB_COUNTRY_COUNTRYList := TProxy<TestCodolex.DataSource.TestDataModule.IJOB>.Create(JOBDataBroker, 'JOB_COUNTRY', FCOUNTRY);
  
  Result := FJOB_JOB_COUNTRY_COUNTRYList.Values;
end;

procedure TCOUNTRY.SetJOB_JOB_COUNTRY_COUNTRYList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IJOB>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TCOUNTRYDataBroker }

function TCOUNTRYDataBroker.CreateFromDataset: ICOUNTRY;
begin
  inherited;

  var Adapter := TCOUNTRYDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as ICOUNTRY;
  Adapter.Free;
end;

function TCOUNTRYDataBroker.CastEntity(const Entity: ICodolexEntity): ICOUNTRY;
begin
  inherited;
  Result := Entity as ICOUNTRY;
end;

function TCOUNTRYDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'COUNTRY AS COUNTRY, ' + sLineBreak +
    'CURRENCY AS CURRENCY ' + sLineBreak +
    'FROM COUNTRY ';
end;

function TCOUNTRYDataBroker.TableName: string;
begin
  inherited;
  Result := 'COUNTRY';
end;

function TCOUNTRYDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO COUNTRY (' +
    '  COUNTRY' + sLineBreak +
    ', CURRENCY' + sLineBreak +
    ') VALUES (' +
    '  :COUNTRY' + sLineBreak +
    ', :CURRENCY' + sLineBreak +
    ')';
end;

function TCOUNTRYDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE COUNTRY SET ' +
    '  CURRENCY = :CURRENCY' + sLineBreak +
    ' WHERE ' +
    '  COUNTRY = :COUNTRY' + sLineBreak +
    '';
end;

function TCOUNTRYDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 1);
  Result[0] := TRuntimeField.Create('COUNTRY','COUNTRY',ftString);
end;

procedure TCOUNTRYDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('COUNTRY') then Params.ParamByName('COUNTRY').AsString := FEntity.COUNTRY;
  if Params.HasParam('CURRENCY') then Params.ParamByName('CURRENCY').AsString := FEntity.CURRENCY;
end;

procedure TCOUNTRYDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
  FEntity.COUNTRY := Value.AsString;
end;

{ TCOUNTRYDataSetAdapter }

procedure TCOUNTRYDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TCOUNTRY;
  
  FDataset.FieldByName('COUNTRY').AsString := Entity.COUNTRY;
  FDataset.FieldByName('CURRENCY').AsString := Entity.CURRENCY;
end;

procedure TCOUNTRYDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TCOUNTRY;
  
  Entity.COUNTRY := FDataset.FieldByName('COUNTRY').AsString;
  Entity.CURRENCY := FDataset.FieldByName('CURRENCY').AsString;
end;

function TCOUNTRYDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TCOUNTRY.Create;
end;

procedure TCOUNTRYDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TCOUNTRY;
  
  if FieldName = 'COUNTRY' then
    Value := Entity.COUNTRY
  else
  if FieldName = 'CURRENCY' then
    Value := Entity.CURRENCY;
end;

procedure TCOUNTRYDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TCOUNTRY;
  
  if FieldName = 'COUNTRY' then
    Entity.COUNTRY := Value
  else
  if FieldName = 'CURRENCY' then
    Entity.CURRENCY := Value;
end;

procedure TCOUNTRYDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'COUNTRY';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CURRENCY';
  FieldDef.DataType := ftString;
  FieldDef.Size := 10;
end;

function CUSTOMERDataBroker: IEntityDataBrokerPersistent<ICUSTOMER>;
begin
  Result := TCUSTOMERDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TCUSTOMER }

function TCUSTOMER.GetCUST_NO: Integer;
begin
  Result := FCUST_NO;
end;

procedure TCUSTOMER.SetCUST_NO(const Value: Integer);
begin
  if FCUST_NO <> Value then
  begin
    FCUST_NO := Value;
    NotifyChange('CUST_NO');
  end;
end;

function TCUSTOMER.GetCUSTOMER: string;
begin
  Result := FCUSTOMER;
end;

procedure TCUSTOMER.SetCUSTOMER(const Value: string);
begin
  if FCUSTOMER <> Value then
  begin
    FCUSTOMER := Value;
    NotifyChange('CUSTOMER');
  end;
end;

function TCUSTOMER.GetCONTACT_FIRST: string;
begin
  Result := FCONTACT_FIRST;
end;

procedure TCUSTOMER.SetCONTACT_FIRST(const Value: string);
begin
  if FCONTACT_FIRST <> Value then
  begin
    FCONTACT_FIRST := Value;
    NotifyChange('CONTACT_FIRST');
  end;
end;

function TCUSTOMER.GetCONTACT_LAST: string;
begin
  Result := FCONTACT_LAST;
end;

procedure TCUSTOMER.SetCONTACT_LAST(const Value: string);
begin
  if FCONTACT_LAST <> Value then
  begin
    FCONTACT_LAST := Value;
    NotifyChange('CONTACT_LAST');
  end;
end;

function TCUSTOMER.GetPHONE_NO: string;
begin
  Result := FPHONE_NO;
end;

procedure TCUSTOMER.SetPHONE_NO(const Value: string);
begin
  if FPHONE_NO <> Value then
  begin
    FPHONE_NO := Value;
    NotifyChange('PHONE_NO');
  end;
end;

function TCUSTOMER.GetADDRESS_LINE1: string;
begin
  Result := FADDRESS_LINE1;
end;

procedure TCUSTOMER.SetADDRESS_LINE1(const Value: string);
begin
  if FADDRESS_LINE1 <> Value then
  begin
    FADDRESS_LINE1 := Value;
    NotifyChange('ADDRESS_LINE1');
  end;
end;

function TCUSTOMER.GetADDRESS_LINE2: string;
begin
  Result := FADDRESS_LINE2;
end;

procedure TCUSTOMER.SetADDRESS_LINE2(const Value: string);
begin
  if FADDRESS_LINE2 <> Value then
  begin
    FADDRESS_LINE2 := Value;
    NotifyChange('ADDRESS_LINE2');
  end;
end;

function TCUSTOMER.GetCITY: string;
begin
  Result := FCITY;
end;

procedure TCUSTOMER.SetCITY(const Value: string);
begin
  if FCITY <> Value then
  begin
    FCITY := Value;
    NotifyChange('CITY');
  end;
end;

function TCUSTOMER.GetSTATE_PROVINCE: string;
begin
  Result := FSTATE_PROVINCE;
end;

procedure TCUSTOMER.SetSTATE_PROVINCE(const Value: string);
begin
  if FSTATE_PROVINCE <> Value then
  begin
    FSTATE_PROVINCE := Value;
    NotifyChange('STATE_PROVINCE');
  end;
end;

function TCUSTOMER.GetCOUNTRY: string;
begin
  Result := FCOUNTRY;
end;

procedure TCUSTOMER.SetCOUNTRY(const Value: string);
begin
  if FCOUNTRY <> Value then
  begin
    FCOUNTRY := Value;
    NotifyChange('COUNTRY');
  end;
end;

function TCUSTOMER.GetPOSTAL_CODE: string;
begin
  Result := FPOSTAL_CODE;
end;

procedure TCUSTOMER.SetPOSTAL_CODE(const Value: string);
begin
  if FPOSTAL_CODE <> Value then
  begin
    FPOSTAL_CODE := Value;
    NotifyChange('POSTAL_CODE');
  end;
end;

function TCUSTOMER.GetON_HOLD: string;
begin
  Result := FON_HOLD;
end;

procedure TCUSTOMER.SetON_HOLD(const Value: string);
begin
  if FON_HOLD <> Value then
  begin
    FON_HOLD := Value;
    NotifyChange('ON_HOLD');
  end;
end;

function TCUSTOMER.GetCOUNTRY_COUNTRY_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY;
begin
  if not Assigned(FCOUNTRY_COUNTRY_COUNTRY) then
    FCOUNTRY_COUNTRY_COUNTRY := TProxy<TestCodolex.DataSource.TestDataModule.ICOUNTRY>.Create(COUNTRYDataBroker, 'COUNTRY', FCOUNTRY);
  
  Result := FCOUNTRY_COUNTRY_COUNTRY.Value;
end;

procedure TCUSTOMER.SetCOUNTRY_COUNTRY_COUNTRY(const Value: TestCodolex.DataSource.TestDataModule.ICOUNTRY);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TCUSTOMER.GetSALES_CUST_NO_CUST_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>;
begin
  if not Assigned(FSALES_CUST_NO_CUST_NOList) then
    FSALES_CUST_NO_CUST_NOList := TProxy<TestCodolex.DataSource.TestDataModule.ISALES>.Create(SALESDataBroker, 'CUST_NO', FCUST_NO);
  
  Result := FSALES_CUST_NO_CUST_NOList.Values;
end;

procedure TCUSTOMER.SetSALES_CUST_NO_CUST_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TCUSTOMERDataBroker }

function TCUSTOMERDataBroker.CreateFromDataset: ICUSTOMER;
begin
  inherited;

  var Adapter := TCUSTOMERDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as ICUSTOMER;
  Adapter.Free;
end;

function TCUSTOMERDataBroker.CastEntity(const Entity: ICodolexEntity): ICUSTOMER;
begin
  inherited;
  Result := Entity as ICUSTOMER;
end;

function TCUSTOMERDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'CUST_NO AS CUST_NO, ' + sLineBreak +
    'CUSTOMER AS CUSTOMER, ' + sLineBreak +
    'CONTACT_FIRST AS CONTACT_FIRST, ' + sLineBreak +
    'CONTACT_LAST AS CONTACT_LAST, ' + sLineBreak +
    'PHONE_NO AS PHONE_NO, ' + sLineBreak +
    'ADDRESS_LINE1 AS ADDRESS_LINE1, ' + sLineBreak +
    'ADDRESS_LINE2 AS ADDRESS_LINE2, ' + sLineBreak +
    'CITY AS CITY, ' + sLineBreak +
    'STATE_PROVINCE AS STATE_PROVINCE, ' + sLineBreak +
    'COUNTRY AS COUNTRY, ' + sLineBreak +
    'POSTAL_CODE AS POSTAL_CODE, ' + sLineBreak +
    'ON_HOLD AS ON_HOLD ' + sLineBreak +
    'FROM CUSTOMER ';
end;

function TCUSTOMERDataBroker.TableName: string;
begin
  inherited;
  Result := 'CUSTOMER';
end;

function TCUSTOMERDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO CUSTOMER (' +
    '  CUST_NO' + sLineBreak +
    ', CUSTOMER' + sLineBreak +
    ', CONTACT_FIRST' + sLineBreak +
    ', CONTACT_LAST' + sLineBreak +
    ', PHONE_NO' + sLineBreak +
    ', ADDRESS_LINE1' + sLineBreak +
    ', ADDRESS_LINE2' + sLineBreak +
    ', CITY' + sLineBreak +
    ', STATE_PROVINCE' + sLineBreak +
    ', COUNTRY' + sLineBreak +
    ', POSTAL_CODE' + sLineBreak +
    ', ON_HOLD' + sLineBreak +
    ') VALUES (' +
    '  :CUST_NO' + sLineBreak +
    ', :CUSTOMER' + sLineBreak +
    ', :CONTACT_FIRST' + sLineBreak +
    ', :CONTACT_LAST' + sLineBreak +
    ', :PHONE_NO' + sLineBreak +
    ', :ADDRESS_LINE1' + sLineBreak +
    ', :ADDRESS_LINE2' + sLineBreak +
    ', :CITY' + sLineBreak +
    ', :STATE_PROVINCE' + sLineBreak +
    ', :COUNTRY' + sLineBreak +
    ', :POSTAL_CODE' + sLineBreak +
    ', :ON_HOLD' + sLineBreak +
    ')';
end;

function TCUSTOMERDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE CUSTOMER SET ' +
    '  CUSTOMER = :CUSTOMER' + sLineBreak +
    ', CONTACT_FIRST = :CONTACT_FIRST' + sLineBreak +
    ', CONTACT_LAST = :CONTACT_LAST' + sLineBreak +
    ', PHONE_NO = :PHONE_NO' + sLineBreak +
    ', ADDRESS_LINE1 = :ADDRESS_LINE1' + sLineBreak +
    ', ADDRESS_LINE2 = :ADDRESS_LINE2' + sLineBreak +
    ', CITY = :CITY' + sLineBreak +
    ', STATE_PROVINCE = :STATE_PROVINCE' + sLineBreak +
    ', COUNTRY = :COUNTRY' + sLineBreak +
    ', POSTAL_CODE = :POSTAL_CODE' + sLineBreak +
    ', ON_HOLD = :ON_HOLD' + sLineBreak +
    ' WHERE ' +
    '  CUST_NO = :CUST_NO' + sLineBreak +
    '';
end;

function TCUSTOMERDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 1);
  Result[0] := TRuntimeField.Create('CUST_NO','CUST_NO',ftInteger);
end;

procedure TCUSTOMERDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('CUST_NO') then Params.ParamByName('CUST_NO').AsInteger := FEntity.CUST_NO;
  if Params.HasParam('CUSTOMER') then Params.ParamByName('CUSTOMER').AsString := FEntity.CUSTOMER;
  if Params.HasParam('CONTACT_FIRST') then Params.ParamByName('CONTACT_FIRST').AsString := FEntity.CONTACT_FIRST;
  if Params.HasParam('CONTACT_LAST') then Params.ParamByName('CONTACT_LAST').AsString := FEntity.CONTACT_LAST;
  if Params.HasParam('PHONE_NO') then Params.ParamByName('PHONE_NO').AsString := FEntity.PHONE_NO;
  if Params.HasParam('ADDRESS_LINE1') then Params.ParamByName('ADDRESS_LINE1').AsString := FEntity.ADDRESS_LINE1;
  if Params.HasParam('ADDRESS_LINE2') then Params.ParamByName('ADDRESS_LINE2').AsString := FEntity.ADDRESS_LINE2;
  if Params.HasParam('CITY') then Params.ParamByName('CITY').AsString := FEntity.CITY;
  if Params.HasParam('STATE_PROVINCE') then Params.ParamByName('STATE_PROVINCE').AsString := FEntity.STATE_PROVINCE;
  if Params.HasParam('COUNTRY') then Params.ParamByName('COUNTRY').AsString := FEntity.COUNTRY;
  if Params.HasParam('POSTAL_CODE') then Params.ParamByName('POSTAL_CODE').AsString := FEntity.POSTAL_CODE;
  if Params.HasParam('ON_HOLD') then Params.ParamByName('ON_HOLD').AsString := FEntity.ON_HOLD;
end;

procedure TCUSTOMERDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
  FEntity.CUST_NO := Value.AsInteger;
end;

{ TCUSTOMERDataSetAdapter }

procedure TCUSTOMERDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TCUSTOMER;
  
  FDataset.FieldByName('CUST_NO').AsInteger := Entity.CUST_NO;
  FDataset.FieldByName('CUSTOMER').AsString := Entity.CUSTOMER;
  FDataset.FieldByName('CONTACT_FIRST').AsString := Entity.CONTACT_FIRST;
  FDataset.FieldByName('CONTACT_LAST').AsString := Entity.CONTACT_LAST;
  FDataset.FieldByName('PHONE_NO').AsString := Entity.PHONE_NO;
  FDataset.FieldByName('ADDRESS_LINE1').AsString := Entity.ADDRESS_LINE1;
  FDataset.FieldByName('ADDRESS_LINE2').AsString := Entity.ADDRESS_LINE2;
  FDataset.FieldByName('CITY').AsString := Entity.CITY;
  FDataset.FieldByName('STATE_PROVINCE').AsString := Entity.STATE_PROVINCE;
  FDataset.FieldByName('COUNTRY').AsString := Entity.COUNTRY;
  FDataset.FieldByName('POSTAL_CODE').AsString := Entity.POSTAL_CODE;
  FDataset.FieldByName('ON_HOLD').AsString := Entity.ON_HOLD;
end;

procedure TCUSTOMERDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TCUSTOMER;
  
  Entity.CUST_NO := FDataset.FieldByName('CUST_NO').AsInteger;
  Entity.CUSTOMER := FDataset.FieldByName('CUSTOMER').AsString;
  Entity.CONTACT_FIRST := FDataset.FieldByName('CONTACT_FIRST').AsString;
  Entity.CONTACT_LAST := FDataset.FieldByName('CONTACT_LAST').AsString;
  Entity.PHONE_NO := FDataset.FieldByName('PHONE_NO').AsString;
  Entity.ADDRESS_LINE1 := FDataset.FieldByName('ADDRESS_LINE1').AsString;
  Entity.ADDRESS_LINE2 := FDataset.FieldByName('ADDRESS_LINE2').AsString;
  Entity.CITY := FDataset.FieldByName('CITY').AsString;
  Entity.STATE_PROVINCE := FDataset.FieldByName('STATE_PROVINCE').AsString;
  Entity.COUNTRY := FDataset.FieldByName('COUNTRY').AsString;
  Entity.POSTAL_CODE := FDataset.FieldByName('POSTAL_CODE').AsString;
  Entity.ON_HOLD := FDataset.FieldByName('ON_HOLD').AsString;
end;

function TCUSTOMERDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TCUSTOMER.Create;
end;

procedure TCUSTOMERDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TCUSTOMER;
  
  if FieldName = 'CUST_NO' then
    Value := Entity.CUST_NO
  else
  if FieldName = 'CUSTOMER' then
    Value := Entity.CUSTOMER
  else
  if FieldName = 'CONTACT_FIRST' then
    Value := Entity.CONTACT_FIRST
  else
  if FieldName = 'CONTACT_LAST' then
    Value := Entity.CONTACT_LAST
  else
  if FieldName = 'PHONE_NO' then
    Value := Entity.PHONE_NO
  else
  if FieldName = 'ADDRESS_LINE1' then
    Value := Entity.ADDRESS_LINE1
  else
  if FieldName = 'ADDRESS_LINE2' then
    Value := Entity.ADDRESS_LINE2
  else
  if FieldName = 'CITY' then
    Value := Entity.CITY
  else
  if FieldName = 'STATE_PROVINCE' then
    Value := Entity.STATE_PROVINCE
  else
  if FieldName = 'COUNTRY' then
    Value := Entity.COUNTRY
  else
  if FieldName = 'POSTAL_CODE' then
    Value := Entity.POSTAL_CODE
  else
  if FieldName = 'ON_HOLD' then
    Value := Entity.ON_HOLD;
end;

procedure TCUSTOMERDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TCUSTOMER;
  
  if FieldName = 'CUST_NO' then
    Entity.CUST_NO := Value
  else
  if FieldName = 'CUSTOMER' then
    Entity.CUSTOMER := Value
  else
  if FieldName = 'CONTACT_FIRST' then
    Entity.CONTACT_FIRST := Value
  else
  if FieldName = 'CONTACT_LAST' then
    Entity.CONTACT_LAST := Value
  else
  if FieldName = 'PHONE_NO' then
    Entity.PHONE_NO := Value
  else
  if FieldName = 'ADDRESS_LINE1' then
    Entity.ADDRESS_LINE1 := Value
  else
  if FieldName = 'ADDRESS_LINE2' then
    Entity.ADDRESS_LINE2 := Value
  else
  if FieldName = 'CITY' then
    Entity.CITY := Value
  else
  if FieldName = 'STATE_PROVINCE' then
    Entity.STATE_PROVINCE := Value
  else
  if FieldName = 'COUNTRY' then
    Entity.COUNTRY := Value
  else
  if FieldName = 'POSTAL_CODE' then
    Entity.POSTAL_CODE := Value
  else
  if FieldName = 'ON_HOLD' then
    Entity.ON_HOLD := Value;
end;

procedure TCUSTOMERDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CUST_NO';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CUSTOMER';
  FieldDef.DataType := ftString;
  FieldDef.Size := 25;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CONTACT_FIRST';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CONTACT_LAST';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PHONE_NO';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ADDRESS_LINE1';
  FieldDef.DataType := ftString;
  FieldDef.Size := 30;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ADDRESS_LINE2';
  FieldDef.DataType := ftString;
  FieldDef.Size := 30;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CITY';
  FieldDef.DataType := ftString;
  FieldDef.Size := 25;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'STATE_PROVINCE';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'COUNTRY';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'POSTAL_CODE';
  FieldDef.DataType := ftString;
  FieldDef.Size := 12;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ON_HOLD';
  FieldDef.DataType := ftString;
  FieldDef.Size := 1;
end;

function DEPARTMENTDataBroker: IEntityDataBrokerPersistent<IDEPARTMENT>;
begin
  Result := TDEPARTMENTDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TDEPARTMENT }

function TDEPARTMENT.GetDEPT_NO: string;
begin
  Result := FDEPT_NO;
end;

procedure TDEPARTMENT.SetDEPT_NO(const Value: string);
begin
  if FDEPT_NO <> Value then
  begin
    FDEPT_NO := Value;
    NotifyChange('DEPT_NO');
  end;
end;

function TDEPARTMENT.GetDEPARTMENT: string;
begin
  Result := FDEPARTMENT;
end;

procedure TDEPARTMENT.SetDEPARTMENT(const Value: string);
begin
  if FDEPARTMENT <> Value then
  begin
    FDEPARTMENT := Value;
    NotifyChange('DEPARTMENT');
  end;
end;

function TDEPARTMENT.GetHEAD_DEPT: string;
begin
  Result := FHEAD_DEPT;
end;

procedure TDEPARTMENT.SetHEAD_DEPT(const Value: string);
begin
  if FHEAD_DEPT <> Value then
  begin
    FHEAD_DEPT := Value;
    NotifyChange('HEAD_DEPT');
  end;
end;

function TDEPARTMENT.GetMNGR_NO: Integer;
begin
  Result := FMNGR_NO;
end;

procedure TDEPARTMENT.SetMNGR_NO(const Value: Integer);
begin
  if FMNGR_NO <> Value then
  begin
    FMNGR_NO := Value;
    NotifyChange('MNGR_NO');
  end;
end;

function TDEPARTMENT.GetBUDGET: Double;
begin
  Result := FBUDGET;
end;

procedure TDEPARTMENT.SetBUDGET(const Value: Double);
begin
  if FBUDGET <> Value then
  begin
    FBUDGET := Value;
    NotifyChange('BUDGET');
  end;
end;

function TDEPARTMENT.GetLOCATION: string;
begin
  Result := FLOCATION;
end;

procedure TDEPARTMENT.SetLOCATION(const Value: string);
begin
  if FLOCATION <> Value then
  begin
    FLOCATION := Value;
    NotifyChange('LOCATION');
  end;
end;

function TDEPARTMENT.GetPHONE_NO: string;
begin
  Result := FPHONE_NO;
end;

procedure TDEPARTMENT.SetPHONE_NO(const Value: string);
begin
  if FPHONE_NO <> Value then
  begin
    FPHONE_NO := Value;
    NotifyChange('PHONE_NO');
  end;
end;

function TDEPARTMENT.GetDEPARTMENT_DEPT_NO_HEAD_DEPT: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
begin
  if not Assigned(FDEPARTMENT_DEPT_NO_HEAD_DEPT) then
    FDEPARTMENT_DEPT_NO_HEAD_DEPT := TProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>.Create(DEPARTMENTDataBroker, 'DEPT_NO', FHEAD_DEPT);
  
  Result := FDEPARTMENT_DEPT_NO_HEAD_DEPT.Value;
end;

procedure TDEPARTMENT.SetDEPARTMENT_DEPT_NO_HEAD_DEPT(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TDEPARTMENT.GetEMPLOYEE_EMP_NO_MNGR_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
begin
  if not Assigned(FEMPLOYEE_EMP_NO_MNGR_NO) then
    FEMPLOYEE_EMP_NO_MNGR_NO := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>.Create(EMPLOYEEDataBroker, 'EMP_NO', FMNGR_NO);
  
  Result := FEMPLOYEE_EMP_NO_MNGR_NO.Value;
end;

procedure TDEPARTMENT.SetEMPLOYEE_EMP_NO_MNGR_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TDEPARTMENT.GetEMPLOYEE_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>;
begin
  if not Assigned(FEMPLOYEE_DEPT_NO_DEPT_NOList) then
    FEMPLOYEE_DEPT_NO_DEPT_NOList := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>.Create(EMPLOYEEDataBroker, 'DEPT_NO', FDEPT_NO);
  
  Result := FEMPLOYEE_DEPT_NO_DEPT_NOList.Values;
end;

procedure TDEPARTMENT.SetEMPLOYEE_DEPT_NO_DEPT_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TDEPARTMENT.GetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
begin
  if not Assigned(FPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList) then
    FPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList := TProxy<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>.Create(PROJ_DEPT_BUDGETDataBroker, 'DEPT_NO', FDEPT_NO);
  
  Result := FPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList.Values;
end;

procedure TDEPARTMENT.SetPROJ_DEPT_BUDGET_DEPT_NO_DEPT_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TDEPARTMENTDataBroker }

function TDEPARTMENTDataBroker.CreateFromDataset: IDEPARTMENT;
begin
  inherited;

  var Adapter := TDEPARTMENTDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as IDEPARTMENT;
  Adapter.Free;
end;

function TDEPARTMENTDataBroker.CastEntity(const Entity: ICodolexEntity): IDEPARTMENT;
begin
  inherited;
  Result := Entity as IDEPARTMENT;
end;

function TDEPARTMENTDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'DEPT_NO AS DEPT_NO, ' + sLineBreak +
    'DEPARTMENT AS DEPARTMENT, ' + sLineBreak +
    'HEAD_DEPT AS HEAD_DEPT, ' + sLineBreak +
    'MNGR_NO AS MNGR_NO, ' + sLineBreak +
    'BUDGET AS BUDGET, ' + sLineBreak +
    'LOCATION AS LOCATION, ' + sLineBreak +
    'PHONE_NO AS PHONE_NO ' + sLineBreak +
    'FROM DEPARTMENT ';
end;

function TDEPARTMENTDataBroker.TableName: string;
begin
  inherited;
  Result := 'DEPARTMENT';
end;

function TDEPARTMENTDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO DEPARTMENT (' +
    '  DEPT_NO' + sLineBreak +
    ', DEPARTMENT' + sLineBreak +
    ', HEAD_DEPT' + sLineBreak +
    ', MNGR_NO' + sLineBreak +
    ', BUDGET' + sLineBreak +
    ', LOCATION' + sLineBreak +
    ', PHONE_NO' + sLineBreak +
    ') VALUES (' +
    '  :DEPT_NO' + sLineBreak +
    ', :DEPARTMENT' + sLineBreak +
    ', :HEAD_DEPT' + sLineBreak +
    ', :MNGR_NO' + sLineBreak +
    ', :BUDGET' + sLineBreak +
    ', :LOCATION' + sLineBreak +
    ', :PHONE_NO' + sLineBreak +
    ')';
end;

function TDEPARTMENTDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE DEPARTMENT SET ' +
    '  DEPARTMENT = :DEPARTMENT' + sLineBreak +
    ', HEAD_DEPT = :HEAD_DEPT' + sLineBreak +
    ', MNGR_NO = :MNGR_NO' + sLineBreak +
    ', BUDGET = :BUDGET' + sLineBreak +
    ', LOCATION = :LOCATION' + sLineBreak +
    ', PHONE_NO = :PHONE_NO' + sLineBreak +
    ' WHERE ' +
    '  DEPT_NO = :DEPT_NO' + sLineBreak +
    '';
end;

function TDEPARTMENTDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 1);
  Result[0] := TRuntimeField.Create('DEPT_NO','DEPT_NO',ftString);
end;

procedure TDEPARTMENTDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('DEPT_NO') then Params.ParamByName('DEPT_NO').AsString := FEntity.DEPT_NO;
  if Params.HasParam('DEPARTMENT') then Params.ParamByName('DEPARTMENT').AsString := FEntity.DEPARTMENT;
  if Params.HasParam('HEAD_DEPT') then Params.ParamByName('HEAD_DEPT').AsString := FEntity.HEAD_DEPT;
  if Params.HasParam('MNGR_NO') then Params.ParamByName('MNGR_NO').AsInteger := FEntity.MNGR_NO;
  if Params.HasParam('BUDGET') then Params.ParamByName('BUDGET').AsFloat := FEntity.BUDGET;
  if Params.HasParam('LOCATION') then Params.ParamByName('LOCATION').AsString := FEntity.LOCATION;
  if Params.HasParam('PHONE_NO') then Params.ParamByName('PHONE_NO').AsString := FEntity.PHONE_NO;
end;

procedure TDEPARTMENTDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
  FEntity.DEPT_NO := Value.AsString;
end;

{ TDEPARTMENTDataSetAdapter }

procedure TDEPARTMENTDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TDEPARTMENT;
  
  FDataset.FieldByName('DEPT_NO').AsString := Entity.DEPT_NO;
  FDataset.FieldByName('DEPARTMENT').AsString := Entity.DEPARTMENT;
  FDataset.FieldByName('HEAD_DEPT').AsString := Entity.HEAD_DEPT;
  FDataset.FieldByName('MNGR_NO').AsInteger := Entity.MNGR_NO;
  FDataset.FieldByName('BUDGET').AsFloat := Entity.BUDGET;
  FDataset.FieldByName('LOCATION').AsString := Entity.LOCATION;
  FDataset.FieldByName('PHONE_NO').AsString := Entity.PHONE_NO;
end;

procedure TDEPARTMENTDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TDEPARTMENT;
  
  Entity.DEPT_NO := FDataset.FieldByName('DEPT_NO').AsString;
  Entity.DEPARTMENT := FDataset.FieldByName('DEPARTMENT').AsString;
  Entity.HEAD_DEPT := FDataset.FieldByName('HEAD_DEPT').AsString;
  Entity.MNGR_NO := FDataset.FieldByName('MNGR_NO').AsInteger;
  Entity.BUDGET := FDataset.FieldByName('BUDGET').AsFloat;
  Entity.LOCATION := FDataset.FieldByName('LOCATION').AsString;
  Entity.PHONE_NO := FDataset.FieldByName('PHONE_NO').AsString;
end;

function TDEPARTMENTDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TDEPARTMENT.Create;
end;

procedure TDEPARTMENTDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TDEPARTMENT;
  
  if FieldName = 'DEPT_NO' then
    Value := Entity.DEPT_NO
  else
  if FieldName = 'DEPARTMENT' then
    Value := Entity.DEPARTMENT
  else
  if FieldName = 'HEAD_DEPT' then
    Value := Entity.HEAD_DEPT
  else
  if FieldName = 'MNGR_NO' then
    Value := Entity.MNGR_NO
  else
  if FieldName = 'BUDGET' then
    Value := Entity.BUDGET
  else
  if FieldName = 'LOCATION' then
    Value := Entity.LOCATION
  else
  if FieldName = 'PHONE_NO' then
    Value := Entity.PHONE_NO;
end;

procedure TDEPARTMENTDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TDEPARTMENT;
  
  if FieldName = 'DEPT_NO' then
    Entity.DEPT_NO := Value
  else
  if FieldName = 'DEPARTMENT' then
    Entity.DEPARTMENT := Value
  else
  if FieldName = 'HEAD_DEPT' then
    Entity.HEAD_DEPT := Value
  else
  if FieldName = 'MNGR_NO' then
    Entity.MNGR_NO := Value
  else
  if FieldName = 'BUDGET' then
    Entity.BUDGET := Value
  else
  if FieldName = 'LOCATION' then
    Entity.LOCATION := Value
  else
  if FieldName = 'PHONE_NO' then
    Entity.PHONE_NO := Value;
end;

procedure TDEPARTMENTDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'DEPT_NO';
  FieldDef.DataType := ftString;
  FieldDef.Size := 3;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'DEPARTMENT';
  FieldDef.DataType := ftString;
  FieldDef.Size := 25;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'HEAD_DEPT';
  FieldDef.DataType := ftString;
  FieldDef.Size := 3;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'MNGR_NO';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'BUDGET';
  FieldDef.DataType := ftFloat;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'LOCATION';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PHONE_NO';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
end;

function EMPLOYEEDataBroker: IEntityDataBrokerPersistent<IEMPLOYEE>;
begin
  Result := TEMPLOYEEDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TEMPLOYEE }

function TEMPLOYEE.GetEMP_NO: Integer;
begin
  Result := FEMP_NO;
end;

procedure TEMPLOYEE.SetEMP_NO(const Value: Integer);
begin
  if FEMP_NO <> Value then
  begin
    FEMP_NO := Value;
    NotifyChange('EMP_NO');
  end;
end;

function TEMPLOYEE.GetFIRST_NAME: string;
begin
  Result := FFIRST_NAME;
end;

procedure TEMPLOYEE.SetFIRST_NAME(const Value: string);
begin
  if FFIRST_NAME <> Value then
  begin
    FFIRST_NAME := Value;
    NotifyChange('FIRST_NAME');
  end;
end;

function TEMPLOYEE.GetLAST_NAME: string;
begin
  Result := FLAST_NAME;
end;

procedure TEMPLOYEE.SetLAST_NAME(const Value: string);
begin
  if FLAST_NAME <> Value then
  begin
    FLAST_NAME := Value;
    NotifyChange('LAST_NAME');
  end;
end;

function TEMPLOYEE.GetPHONE_EXT: string;
begin
  Result := FPHONE_EXT;
end;

procedure TEMPLOYEE.SetPHONE_EXT(const Value: string);
begin
  if FPHONE_EXT <> Value then
  begin
    FPHONE_EXT := Value;
    NotifyChange('PHONE_EXT');
  end;
end;

function TEMPLOYEE.GetHIRE_DATE: TDateTime;
begin
  Result := FHIRE_DATE;
end;

procedure TEMPLOYEE.SetHIRE_DATE(const Value: TDateTime);
begin
  if FHIRE_DATE <> Value then
  begin
    FHIRE_DATE := Value;
    NotifyChange('HIRE_DATE');
  end;
end;

function TEMPLOYEE.GetDEPT_NO: string;
begin
  Result := FDEPT_NO;
end;

procedure TEMPLOYEE.SetDEPT_NO(const Value: string);
begin
  if FDEPT_NO <> Value then
  begin
    FDEPT_NO := Value;
    NotifyChange('DEPT_NO');
  end;
end;

function TEMPLOYEE.GetJOB_CODE: string;
begin
  Result := FJOB_CODE;
end;

procedure TEMPLOYEE.SetJOB_CODE(const Value: string);
begin
  if FJOB_CODE <> Value then
  begin
    FJOB_CODE := Value;
    NotifyChange('JOB_CODE');
  end;
end;

function TEMPLOYEE.GetJOB_GRADE: Integer;
begin
  Result := FJOB_GRADE;
end;

procedure TEMPLOYEE.SetJOB_GRADE(const Value: Integer);
begin
  if FJOB_GRADE <> Value then
  begin
    FJOB_GRADE := Value;
    NotifyChange('JOB_GRADE');
  end;
end;

function TEMPLOYEE.GetJOB_COUNTRY: string;
begin
  Result := FJOB_COUNTRY;
end;

procedure TEMPLOYEE.SetJOB_COUNTRY(const Value: string);
begin
  if FJOB_COUNTRY <> Value then
  begin
    FJOB_COUNTRY := Value;
    NotifyChange('JOB_COUNTRY');
  end;
end;

function TEMPLOYEE.GetSALARY: Double;
begin
  Result := FSALARY;
end;

procedure TEMPLOYEE.SetSALARY(const Value: Double);
begin
  if FSALARY <> Value then
  begin
    FSALARY := Value;
    NotifyChange('SALARY');
  end;
end;

function TEMPLOYEE.GetFULL_NAME: string;
begin
  Result := FFULL_NAME;
end;

procedure TEMPLOYEE.SetFULL_NAME(const Value: string);
begin
  if FFULL_NAME <> Value then
  begin
    FFULL_NAME := Value;
    NotifyChange('FULL_NAME');
  end;
end;

function TEMPLOYEE.GetDEPARTMENT_MNGR_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>;
begin
  if not Assigned(FDEPARTMENT_MNGR_NO_EMP_NOList) then
    FDEPARTMENT_MNGR_NO_EMP_NOList := TProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>.Create(DEPARTMENTDataBroker, 'MNGR_NO', FEMP_NO);
  
  Result := FDEPARTMENT_MNGR_NO_EMP_NOList.Values;
end;

procedure TEMPLOYEE.SetDEPARTMENT_MNGR_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TEMPLOYEE.GetDEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
begin
  if not Assigned(FDEPARTMENT_DEPT_NO_DEPT_NO) then
    FDEPARTMENT_DEPT_NO_DEPT_NO := TProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>.Create(DEPARTMENTDataBroker, 'DEPT_NO', FDEPT_NO);
  
  Result := FDEPARTMENT_DEPT_NO_DEPT_NO.Value;
end;

procedure TEMPLOYEE.SetDEPARTMENT_DEPT_NO_DEPT_NO(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TEMPLOYEE.GetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
begin
  if not Assigned(FEMPLOYEE_PROJECT_EMP_NO_EMP_NOList) then
    FEMPLOYEE_PROJECT_EMP_NO_EMP_NOList := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>.Create(EMPLOYEE_PROJECTDataBroker, 'EMP_NO', FEMP_NO);
  
  Result := FEMPLOYEE_PROJECT_EMP_NO_EMP_NOList.Values;
end;

procedure TEMPLOYEE.SetEMPLOYEE_PROJECT_EMP_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TEMPLOYEE.GetPROJECT_TEAM_LEADER_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT>;
begin
  if not Assigned(FPROJECT_TEAM_LEADER_EMP_NOList) then
    FPROJECT_TEAM_LEADER_EMP_NOList := TProxy<TestCodolex.DataSource.TestDataModule.IPROJECT>.Create(PROJECTDataBroker, 'TEAM_LEADER', FEMP_NO);
  
  Result := FPROJECT_TEAM_LEADER_EMP_NOList.Values;
end;

procedure TEMPLOYEE.SetPROJECT_TEAM_LEADER_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJECT>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TEMPLOYEE.GetSALARY_HISTORY_EMP_NO_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>;
begin
  if not Assigned(FSALARY_HISTORY_EMP_NO_EMP_NOList) then
    FSALARY_HISTORY_EMP_NO_EMP_NOList := TProxy<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>.Create(SALARY_HISTORYDataBroker, 'EMP_NO', FEMP_NO);
  
  Result := FSALARY_HISTORY_EMP_NO_EMP_NOList.Values;
end;

procedure TEMPLOYEE.SetSALARY_HISTORY_EMP_NO_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALARY_HISTORY>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TEMPLOYEE.GetSALES_SALES_REP_EMP_NOList: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>;
begin
  if not Assigned(FSALES_SALES_REP_EMP_NOList) then
    FSALES_SALES_REP_EMP_NOList := TProxy<TestCodolex.DataSource.TestDataModule.ISALES>.Create(SALESDataBroker, 'SALES_REP', FEMP_NO);
  
  Result := FSALES_SALES_REP_EMP_NOList.Values;
end;

procedure TEMPLOYEE.SetSALES_SALES_REP_EMP_NOList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.ISALES>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TEMPLOYEEDataBroker }

function TEMPLOYEEDataBroker.CreateFromDataset: IEMPLOYEE;
begin
  inherited;

  var Adapter := TEMPLOYEEDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as IEMPLOYEE;
  Adapter.Free;
end;

function TEMPLOYEEDataBroker.CastEntity(const Entity: ICodolexEntity): IEMPLOYEE;
begin
  inherited;
  Result := Entity as IEMPLOYEE;
end;

function TEMPLOYEEDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'EMP_NO AS EMP_NO, ' + sLineBreak +
    'FIRST_NAME AS FIRST_NAME, ' + sLineBreak +
    'LAST_NAME AS LAST_NAME, ' + sLineBreak +
    'PHONE_EXT AS PHONE_EXT, ' + sLineBreak +
    'HIRE_DATE AS HIRE_DATE, ' + sLineBreak +
    'DEPT_NO AS DEPT_NO, ' + sLineBreak +
    'JOB_CODE AS JOB_CODE, ' + sLineBreak +
    'JOB_GRADE AS JOB_GRADE, ' + sLineBreak +
    'JOB_COUNTRY AS JOB_COUNTRY, ' + sLineBreak +
    'SALARY AS SALARY, ' + sLineBreak +
    'FULL_NAME AS FULL_NAME ' + sLineBreak +
    'FROM EMPLOYEE ';
end;

function TEMPLOYEEDataBroker.TableName: string;
begin
  inherited;
  Result := 'EMPLOYEE';
end;

function TEMPLOYEEDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO EMPLOYEE (' +
    '  EMP_NO' + sLineBreak +
    ', FIRST_NAME' + sLineBreak +
    ', LAST_NAME' + sLineBreak +
    ', PHONE_EXT' + sLineBreak +
    ', HIRE_DATE' + sLineBreak +
    ', DEPT_NO' + sLineBreak +
    ', JOB_CODE' + sLineBreak +
    ', JOB_GRADE' + sLineBreak +
    ', JOB_COUNTRY' + sLineBreak +
    ', SALARY' + sLineBreak +
    ', FULL_NAME' + sLineBreak +
    ') VALUES (' +
    '  :EMP_NO' + sLineBreak +
    ', :FIRST_NAME' + sLineBreak +
    ', :LAST_NAME' + sLineBreak +
    ', :PHONE_EXT' + sLineBreak +
    ', :HIRE_DATE' + sLineBreak +
    ', :DEPT_NO' + sLineBreak +
    ', :JOB_CODE' + sLineBreak +
    ', :JOB_GRADE' + sLineBreak +
    ', :JOB_COUNTRY' + sLineBreak +
    ', :SALARY' + sLineBreak +
    ', :FULL_NAME' + sLineBreak +
    ')';
end;

function TEMPLOYEEDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE EMPLOYEE SET ' +
    '  FIRST_NAME = :FIRST_NAME' + sLineBreak +
    ', LAST_NAME = :LAST_NAME' + sLineBreak +
    ', PHONE_EXT = :PHONE_EXT' + sLineBreak +
    ', HIRE_DATE = :HIRE_DATE' + sLineBreak +
    ', DEPT_NO = :DEPT_NO' + sLineBreak +
    ', JOB_CODE = :JOB_CODE' + sLineBreak +
    ', JOB_GRADE = :JOB_GRADE' + sLineBreak +
    ', JOB_COUNTRY = :JOB_COUNTRY' + sLineBreak +
    ', SALARY = :SALARY' + sLineBreak +
    ', FULL_NAME = :FULL_NAME' + sLineBreak +
    ' WHERE ' +
    '  EMP_NO = :EMP_NO' + sLineBreak +
    '';
end;

function TEMPLOYEEDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 1);
  Result[0] := TRuntimeField.Create('EMP_NO','EMP_NO',ftInteger);
end;

procedure TEMPLOYEEDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('EMP_NO') then Params.ParamByName('EMP_NO').AsInteger := FEntity.EMP_NO;
  if Params.HasParam('FIRST_NAME') then Params.ParamByName('FIRST_NAME').AsString := FEntity.FIRST_NAME;
  if Params.HasParam('LAST_NAME') then Params.ParamByName('LAST_NAME').AsString := FEntity.LAST_NAME;
  if Params.HasParam('PHONE_EXT') then Params.ParamByName('PHONE_EXT').AsString := FEntity.PHONE_EXT;
  if Params.HasParam('HIRE_DATE') then Params.ParamByName('HIRE_DATE').AsDateTime := FEntity.HIRE_DATE;
  if Params.HasParam('DEPT_NO') then Params.ParamByName('DEPT_NO').AsString := FEntity.DEPT_NO;
  if Params.HasParam('JOB_CODE') then Params.ParamByName('JOB_CODE').AsString := FEntity.JOB_CODE;
  if Params.HasParam('JOB_GRADE') then Params.ParamByName('JOB_GRADE').AsInteger := FEntity.JOB_GRADE;
  if Params.HasParam('JOB_COUNTRY') then Params.ParamByName('JOB_COUNTRY').AsString := FEntity.JOB_COUNTRY;
  if Params.HasParam('SALARY') then Params.ParamByName('SALARY').AsFloat := FEntity.SALARY;
  if Params.HasParam('FULL_NAME') then Params.ParamByName('FULL_NAME').AsString := FEntity.FULL_NAME;
end;

procedure TEMPLOYEEDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
  FEntity.EMP_NO := Value.AsInteger;
end;

{ TEMPLOYEEDataSetAdapter }

procedure TEMPLOYEEDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE;
  
  FDataset.FieldByName('EMP_NO').AsInteger := Entity.EMP_NO;
  FDataset.FieldByName('FIRST_NAME').AsString := Entity.FIRST_NAME;
  FDataset.FieldByName('LAST_NAME').AsString := Entity.LAST_NAME;
  FDataset.FieldByName('PHONE_EXT').AsString := Entity.PHONE_EXT;
  FDataset.FieldByName('HIRE_DATE').AsDateTime := Entity.HIRE_DATE;
  FDataset.FieldByName('DEPT_NO').AsString := Entity.DEPT_NO;
  FDataset.FieldByName('JOB_CODE').AsString := Entity.JOB_CODE;
  FDataset.FieldByName('JOB_GRADE').AsInteger := Entity.JOB_GRADE;
  FDataset.FieldByName('JOB_COUNTRY').AsString := Entity.JOB_COUNTRY;
  FDataset.FieldByName('SALARY').AsFloat := Entity.SALARY;
  FDataset.FieldByName('FULL_NAME').AsString := Entity.FULL_NAME;
end;

procedure TEMPLOYEEDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE;
  
  Entity.EMP_NO := FDataset.FieldByName('EMP_NO').AsInteger;
  Entity.FIRST_NAME := FDataset.FieldByName('FIRST_NAME').AsString;
  Entity.LAST_NAME := FDataset.FieldByName('LAST_NAME').AsString;
  Entity.PHONE_EXT := FDataset.FieldByName('PHONE_EXT').AsString;
  Entity.HIRE_DATE := FDataset.FieldByName('HIRE_DATE').AsDateTime;
  Entity.DEPT_NO := FDataset.FieldByName('DEPT_NO').AsString;
  Entity.JOB_CODE := FDataset.FieldByName('JOB_CODE').AsString;
  Entity.JOB_GRADE := FDataset.FieldByName('JOB_GRADE').AsInteger;
  Entity.JOB_COUNTRY := FDataset.FieldByName('JOB_COUNTRY').AsString;
  Entity.SALARY := FDataset.FieldByName('SALARY').AsFloat;
  Entity.FULL_NAME := FDataset.FieldByName('FULL_NAME').AsString;
end;

function TEMPLOYEEDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TEMPLOYEE.Create;
end;

procedure TEMPLOYEEDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE;
  
  if FieldName = 'EMP_NO' then
    Value := Entity.EMP_NO
  else
  if FieldName = 'FIRST_NAME' then
    Value := Entity.FIRST_NAME
  else
  if FieldName = 'LAST_NAME' then
    Value := Entity.LAST_NAME
  else
  if FieldName = 'PHONE_EXT' then
    Value := Entity.PHONE_EXT
  else
  if FieldName = 'HIRE_DATE' then
    Value := Entity.HIRE_DATE
  else
  if FieldName = 'DEPT_NO' then
    Value := Entity.DEPT_NO
  else
  if FieldName = 'JOB_CODE' then
    Value := Entity.JOB_CODE
  else
  if FieldName = 'JOB_GRADE' then
    Value := Entity.JOB_GRADE
  else
  if FieldName = 'JOB_COUNTRY' then
    Value := Entity.JOB_COUNTRY
  else
  if FieldName = 'SALARY' then
    Value := Entity.SALARY
  else
  if FieldName = 'FULL_NAME' then
    Value := Entity.FULL_NAME;
end;

procedure TEMPLOYEEDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE;
  
  if FieldName = 'EMP_NO' then
    Entity.EMP_NO := Value
  else
  if FieldName = 'FIRST_NAME' then
    Entity.FIRST_NAME := Value
  else
  if FieldName = 'LAST_NAME' then
    Entity.LAST_NAME := Value
  else
  if FieldName = 'PHONE_EXT' then
    Entity.PHONE_EXT := Value
  else
  if FieldName = 'HIRE_DATE' then
    Entity.HIRE_DATE := Value
  else
  if FieldName = 'DEPT_NO' then
    Entity.DEPT_NO := Value
  else
  if FieldName = 'JOB_CODE' then
    Entity.JOB_CODE := Value
  else
  if FieldName = 'JOB_GRADE' then
    Entity.JOB_GRADE := Value
  else
  if FieldName = 'JOB_COUNTRY' then
    Entity.JOB_COUNTRY := Value
  else
  if FieldName = 'SALARY' then
    Entity.SALARY := Value
  else
  if FieldName = 'FULL_NAME' then
    Entity.FULL_NAME := Value;
end;

procedure TEMPLOYEEDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'EMP_NO';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'FIRST_NAME';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'LAST_NAME';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PHONE_EXT';
  FieldDef.DataType := ftString;
  FieldDef.Size := 4;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'HIRE_DATE';
  FieldDef.DataType := ftDateTime;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'DEPT_NO';
  FieldDef.DataType := ftString;
  FieldDef.Size := 3;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_CODE';
  FieldDef.DataType := ftString;
  FieldDef.Size := 5;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_GRADE';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_COUNTRY';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'SALARY';
  FieldDef.DataType := ftFloat;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'FULL_NAME';
  FieldDef.DataType := ftString;
  FieldDef.Size := 37;
end;

function EMPLOYEE1DataBroker: IEntityDataBrokerPersistent<IEMPLOYEE1>;
begin
  Result := TEMPLOYEE1DataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TEMPLOYEE1 }

function TEMPLOYEE1.GetEMP_NO: Integer;
begin
  Result := FEMP_NO;
end;

procedure TEMPLOYEE1.SetEMP_NO(const Value: Integer);
begin
  if FEMP_NO <> Value then
  begin
    FEMP_NO := Value;
    NotifyChange('EMP_NO');
  end;
end;

function TEMPLOYEE1.GetFIRST_NAME: string;
begin
  Result := FFIRST_NAME;
end;

procedure TEMPLOYEE1.SetFIRST_NAME(const Value: string);
begin
  if FFIRST_NAME <> Value then
  begin
    FFIRST_NAME := Value;
    NotifyChange('FIRST_NAME');
  end;
end;

function TEMPLOYEE1.GetLAST_NAME: string;
begin
  Result := FLAST_NAME;
end;

procedure TEMPLOYEE1.SetLAST_NAME(const Value: string);
begin
  if FLAST_NAME <> Value then
  begin
    FLAST_NAME := Value;
    NotifyChange('LAST_NAME');
  end;
end;

function TEMPLOYEE1.GetHIRE_DATE: TDateTime;
begin
  Result := FHIRE_DATE;
end;

procedure TEMPLOYEE1.SetHIRE_DATE(const Value: TDateTime);
begin
  if FHIRE_DATE <> Value then
  begin
    FHIRE_DATE := Value;
    NotifyChange('HIRE_DATE');
  end;
end;

function TEMPLOYEE1.GetDEPT_NO: string;
begin
  Result := FDEPT_NO;
end;

procedure TEMPLOYEE1.SetDEPT_NO(const Value: string);
begin
  if FDEPT_NO <> Value then
  begin
    FDEPT_NO := Value;
    NotifyChange('DEPT_NO');
  end;
end;

{ TEMPLOYEE1DataBroker }

function TEMPLOYEE1DataBroker.CreateFromDataset: IEMPLOYEE1;
begin
  inherited;

  var Adapter := TEMPLOYEE1DataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as IEMPLOYEE1;
  Adapter.Free;
end;

function TEMPLOYEE1DataBroker.CastEntity(const Entity: ICodolexEntity): IEMPLOYEE1;
begin
  inherited;
  Result := Entity as IEMPLOYEE1;
end;

function TEMPLOYEE1DataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'EMP_NO AS EMP_NO, ' + sLineBreak +
    'FIRST_NAME AS FIRST_NAME, ' + sLineBreak +
    'LAST_NAME AS LAST_NAME, ' + sLineBreak +
    'HIRE_DATE AS HIRE_DATE, ' + sLineBreak +
    'DEPT_NO AS DEPT_NO ' + sLineBreak +
    'FROM EMPLOYEE1 ';
end;

function TEMPLOYEE1DataBroker.TableName: string;
begin
  inherited;
  Result := 'EMPLOYEE1';
end;

function TEMPLOYEE1DataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO EMPLOYEE1 (' +
    '  FIRST_NAME' + sLineBreak +
    ', LAST_NAME' + sLineBreak +
    ', HIRE_DATE' + sLineBreak +
    ', DEPT_NO' + sLineBreak +
    ') VALUES (' +
    '  :FIRST_NAME' + sLineBreak +
    ', :LAST_NAME' + sLineBreak +
    ', :HIRE_DATE' + sLineBreak +
    ', :DEPT_NO' + sLineBreak +
    ')';
end;

function TEMPLOYEE1DataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE EMPLOYEE1 SET ' +
    '  FIRST_NAME = :FIRST_NAME' + sLineBreak +
    ', LAST_NAME = :LAST_NAME' + sLineBreak +
    ', HIRE_DATE = :HIRE_DATE' + sLineBreak +
    ', DEPT_NO = :DEPT_NO' + sLineBreak +
    ' WHERE ' +
    '  EMP_NO = :EMP_NO' + sLineBreak +
    '';
end;

function TEMPLOYEE1DataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 1);
  Result[0] := TRuntimeField.Create('EMP_NO','EMP_NO',ftAutoInc);
end;

procedure TEMPLOYEE1DataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('EMP_NO') then Params.ParamByName('EMP_NO').AsInteger := FEntity.EMP_NO;
  if Params.HasParam('FIRST_NAME') then Params.ParamByName('FIRST_NAME').AsString := FEntity.FIRST_NAME;
  if Params.HasParam('LAST_NAME') then Params.ParamByName('LAST_NAME').AsString := FEntity.LAST_NAME;
  if Params.HasParam('HIRE_DATE') then Params.ParamByName('HIRE_DATE').AsDateTime := FEntity.HIRE_DATE;
  if Params.HasParam('DEPT_NO') then Params.ParamByName('DEPT_NO').AsString := FEntity.DEPT_NO;
end;

procedure TEMPLOYEE1DataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
  FEntity.EMP_NO := Value.AsInteger;
end;

{ TEMPLOYEE1DataSetAdapter }

procedure TEMPLOYEE1DataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE1;
  
  FDataset.FieldByName('EMP_NO').AsInteger := Entity.EMP_NO;
  FDataset.FieldByName('FIRST_NAME').AsString := Entity.FIRST_NAME;
  FDataset.FieldByName('LAST_NAME').AsString := Entity.LAST_NAME;
  FDataset.FieldByName('HIRE_DATE').AsDateTime := Entity.HIRE_DATE;
  FDataset.FieldByName('DEPT_NO').AsString := Entity.DEPT_NO;
end;

procedure TEMPLOYEE1DataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE1;
  
  Entity.EMP_NO := FDataset.FieldByName('EMP_NO').AsInteger;
  Entity.FIRST_NAME := FDataset.FieldByName('FIRST_NAME').AsString;
  Entity.LAST_NAME := FDataset.FieldByName('LAST_NAME').AsString;
  Entity.HIRE_DATE := FDataset.FieldByName('HIRE_DATE').AsDateTime;
  Entity.DEPT_NO := FDataset.FieldByName('DEPT_NO').AsString;
end;

function TEMPLOYEE1DataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TEMPLOYEE1.Create;
end;

procedure TEMPLOYEE1DataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE1;
  
  if FieldName = 'EMP_NO' then
    Value := Entity.EMP_NO
  else
  if FieldName = 'FIRST_NAME' then
    Value := Entity.FIRST_NAME
  else
  if FieldName = 'LAST_NAME' then
    Value := Entity.LAST_NAME
  else
  if FieldName = 'HIRE_DATE' then
    Value := Entity.HIRE_DATE
  else
  if FieldName = 'DEPT_NO' then
    Value := Entity.DEPT_NO;
end;

procedure TEMPLOYEE1DataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE1;
  
  if FieldName = 'EMP_NO' then
    Entity.EMP_NO := Value
  else
  if FieldName = 'FIRST_NAME' then
    Entity.FIRST_NAME := Value
  else
  if FieldName = 'LAST_NAME' then
    Entity.LAST_NAME := Value
  else
  if FieldName = 'HIRE_DATE' then
    Entity.HIRE_DATE := Value
  else
  if FieldName = 'DEPT_NO' then
    Entity.DEPT_NO := Value;
end;

procedure TEMPLOYEE1DataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'EMP_NO';
  FieldDef.DataType := ftAutoInc;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'FIRST_NAME';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'LAST_NAME';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'HIRE_DATE';
  FieldDef.DataType := ftDateTime;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'DEPT_NO';
  FieldDef.DataType := ftString;
  FieldDef.Size := 3;
end;

function EMPLOYEE_PROJECTDataBroker: IEntityDataBrokerPersistent<IEMPLOYEE_PROJECT>;
begin
  Result := TEMPLOYEE_PROJECTDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TEMPLOYEE_PROJECT }

function TEMPLOYEE_PROJECT.GetEMP_NO: Integer;
begin
  Result := FEMP_NO;
end;

procedure TEMPLOYEE_PROJECT.SetEMP_NO(const Value: Integer);
begin
  if FEMP_NO <> Value then
  begin
    FEMP_NO := Value;
    NotifyChange('EMP_NO');
  end;
end;

function TEMPLOYEE_PROJECT.GetPROJ_ID: string;
begin
  Result := FPROJ_ID;
end;

procedure TEMPLOYEE_PROJECT.SetPROJ_ID(const Value: string);
begin
  if FPROJ_ID <> Value then
  begin
    FPROJ_ID := Value;
    NotifyChange('PROJ_ID');
  end;
end;

function TEMPLOYEE_PROJECT.GetEMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
begin
  if not Assigned(FEMPLOYEE_EMP_NO_EMP_NO) then
    FEMPLOYEE_EMP_NO_EMP_NO := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>.Create(EMPLOYEEDataBroker, 'EMP_NO', FEMP_NO);
  
  Result := FEMPLOYEE_EMP_NO_EMP_NO.Value;
end;

procedure TEMPLOYEE_PROJECT.SetEMPLOYEE_EMP_NO_EMP_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TEMPLOYEE_PROJECT.GetPROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT;
begin
  if not Assigned(FPROJECT_PROJ_ID_PROJ_ID) then
    FPROJECT_PROJ_ID_PROJ_ID := TProxy<TestCodolex.DataSource.TestDataModule.IPROJECT>.Create(PROJECTDataBroker, 'PROJ_ID', FPROJ_ID);
  
  Result := FPROJECT_PROJ_ID_PROJ_ID.Value;
end;

procedure TEMPLOYEE_PROJECT.SetPROJECT_PROJ_ID_PROJ_ID(const Value: TestCodolex.DataSource.TestDataModule.IPROJECT);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TEMPLOYEE_PROJECTDataBroker }

function TEMPLOYEE_PROJECTDataBroker.CreateFromDataset: IEMPLOYEE_PROJECT;
begin
  inherited;

  var Adapter := TEMPLOYEE_PROJECTDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as IEMPLOYEE_PROJECT;
  Adapter.Free;
end;

function TEMPLOYEE_PROJECTDataBroker.CastEntity(const Entity: ICodolexEntity): IEMPLOYEE_PROJECT;
begin
  inherited;
  Result := Entity as IEMPLOYEE_PROJECT;
end;

function TEMPLOYEE_PROJECTDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'EMP_NO AS EMP_NO, ' + sLineBreak +
    'PROJ_ID AS PROJ_ID ' + sLineBreak +
    'FROM EMPLOYEE_PROJECT ';
end;

function TEMPLOYEE_PROJECTDataBroker.TableName: string;
begin
  inherited;
  Result := 'EMPLOYEE_PROJECT';
end;

function TEMPLOYEE_PROJECTDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO EMPLOYEE_PROJECT (' +
    '  EMP_NO' + sLineBreak +
    ', PROJ_ID' + sLineBreak +
    ') VALUES (' +
    '  :EMP_NO' + sLineBreak +
    ', :PROJ_ID' + sLineBreak +
    ')';
end;

function TEMPLOYEE_PROJECTDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE EMPLOYEE_PROJECT SET ' +
    ' WHERE ' +
    '  EMP_NO = :EMP_NO' + sLineBreak +
    ', PROJ_ID = :PROJ_ID' + sLineBreak +
    '';
end;

function TEMPLOYEE_PROJECTDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 2);
  Result[0] := TRuntimeField.Create('EMP_NO','EMP_NO',ftInteger);
  Result[1] := TRuntimeField.Create('PROJ_ID','PROJ_ID',ftString);
end;

procedure TEMPLOYEE_PROJECTDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('EMP_NO') then Params.ParamByName('EMP_NO').AsInteger := FEntity.EMP_NO;
  if Params.HasParam('PROJ_ID') then Params.ParamByName('PROJ_ID').AsString := FEntity.PROJ_ID;
end;

procedure TEMPLOYEE_PROJECTDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
end;

{ TEMPLOYEE_PROJECTDataSetAdapter }

procedure TEMPLOYEE_PROJECTDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE_PROJECT;
  
  FDataset.FieldByName('EMP_NO').AsInteger := Entity.EMP_NO;
  FDataset.FieldByName('PROJ_ID').AsString := Entity.PROJ_ID;
end;

procedure TEMPLOYEE_PROJECTDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE_PROJECT;
  
  Entity.EMP_NO := FDataset.FieldByName('EMP_NO').AsInteger;
  Entity.PROJ_ID := FDataset.FieldByName('PROJ_ID').AsString;
end;

function TEMPLOYEE_PROJECTDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TEMPLOYEE_PROJECT.Create;
end;

procedure TEMPLOYEE_PROJECTDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE_PROJECT;
  
  if FieldName = 'EMP_NO' then
    Value := Entity.EMP_NO
  else
  if FieldName = 'PROJ_ID' then
    Value := Entity.PROJ_ID;
end;

procedure TEMPLOYEE_PROJECTDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TEMPLOYEE_PROJECT;
  
  if FieldName = 'EMP_NO' then
    Entity.EMP_NO := Value
  else
  if FieldName = 'PROJ_ID' then
    Entity.PROJ_ID := Value;
end;

procedure TEMPLOYEE_PROJECTDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'EMP_NO';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PROJ_ID';
  FieldDef.DataType := ftString;
  FieldDef.Size := 5;
end;

function JOBDataBroker: IEntityDataBrokerPersistent<IJOB>;
begin
  Result := TJOBDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TJOB }

function TJOB.GetJOB_CODE: string;
begin
  Result := FJOB_CODE;
end;

procedure TJOB.SetJOB_CODE(const Value: string);
begin
  if FJOB_CODE <> Value then
  begin
    FJOB_CODE := Value;
    NotifyChange('JOB_CODE');
  end;
end;

function TJOB.GetJOB_GRADE: Integer;
begin
  Result := FJOB_GRADE;
end;

procedure TJOB.SetJOB_GRADE(const Value: Integer);
begin
  if FJOB_GRADE <> Value then
  begin
    FJOB_GRADE := Value;
    NotifyChange('JOB_GRADE');
  end;
end;

function TJOB.GetJOB_COUNTRY: string;
begin
  Result := FJOB_COUNTRY;
end;

procedure TJOB.SetJOB_COUNTRY(const Value: string);
begin
  if FJOB_COUNTRY <> Value then
  begin
    FJOB_COUNTRY := Value;
    NotifyChange('JOB_COUNTRY');
  end;
end;

function TJOB.GetJOB_TITLE: string;
begin
  Result := FJOB_TITLE;
end;

procedure TJOB.SetJOB_TITLE(const Value: string);
begin
  if FJOB_TITLE <> Value then
  begin
    FJOB_TITLE := Value;
    NotifyChange('JOB_TITLE');
  end;
end;

function TJOB.GetMIN_SALARY: Double;
begin
  Result := FMIN_SALARY;
end;

procedure TJOB.SetMIN_SALARY(const Value: Double);
begin
  if FMIN_SALARY <> Value then
  begin
    FMIN_SALARY := Value;
    NotifyChange('MIN_SALARY');
  end;
end;

function TJOB.GetMAX_SALARY: Double;
begin
  Result := FMAX_SALARY;
end;

procedure TJOB.SetMAX_SALARY(const Value: Double);
begin
  if FMAX_SALARY <> Value then
  begin
    FMAX_SALARY := Value;
    NotifyChange('MAX_SALARY');
  end;
end;

function TJOB.GetJOB_REQUIREMENT: string;
begin
  Result := FJOB_REQUIREMENT;
end;

procedure TJOB.SetJOB_REQUIREMENT(const Value: string);
begin
  if FJOB_REQUIREMENT <> Value then
  begin
    FJOB_REQUIREMENT := Value;
    NotifyChange('JOB_REQUIREMENT');
  end;
end;

function TJOB.GetLANGUAGE_REQ: string;
begin
  Result := FLANGUAGE_REQ;
end;

procedure TJOB.SetLANGUAGE_REQ(const Value: string);
begin
  if FLANGUAGE_REQ <> Value then
  begin
    FLANGUAGE_REQ := Value;
    NotifyChange('LANGUAGE_REQ');
  end;
end;

function TJOB.GetCOUNTRY_COUNTRY_JOB_COUNTRY: TestCodolex.DataSource.TestDataModule.ICOUNTRY;
begin
  if not Assigned(FCOUNTRY_COUNTRY_JOB_COUNTRY) then
    FCOUNTRY_COUNTRY_JOB_COUNTRY := TProxy<TestCodolex.DataSource.TestDataModule.ICOUNTRY>.Create(COUNTRYDataBroker, 'COUNTRY', FJOB_COUNTRY);
  
  Result := FCOUNTRY_COUNTRY_JOB_COUNTRY.Value;
end;

procedure TJOB.SetCOUNTRY_COUNTRY_JOB_COUNTRY(const Value: TestCodolex.DataSource.TestDataModule.ICOUNTRY);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TJOBDataBroker }

function TJOBDataBroker.CreateFromDataset: IJOB;
begin
  inherited;

  var Adapter := TJOBDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as IJOB;
  Adapter.Free;
end;

function TJOBDataBroker.CastEntity(const Entity: ICodolexEntity): IJOB;
begin
  inherited;
  Result := Entity as IJOB;
end;

function TJOBDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'JOB_CODE AS JOB_CODE, ' + sLineBreak +
    'JOB_GRADE AS JOB_GRADE, ' + sLineBreak +
    'JOB_COUNTRY AS JOB_COUNTRY, ' + sLineBreak +
    'JOB_TITLE AS JOB_TITLE, ' + sLineBreak +
    'MIN_SALARY AS MIN_SALARY, ' + sLineBreak +
    'MAX_SALARY AS MAX_SALARY, ' + sLineBreak +
    'JOB_REQUIREMENT AS JOB_REQUIREMENT, ' + sLineBreak +
    'LANGUAGE_REQ AS LANGUAGE_REQ ' + sLineBreak +
    'FROM JOB ';
end;

function TJOBDataBroker.TableName: string;
begin
  inherited;
  Result := 'JOB';
end;

function TJOBDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO JOB (' +
    '  JOB_CODE' + sLineBreak +
    ', JOB_GRADE' + sLineBreak +
    ', JOB_COUNTRY' + sLineBreak +
    ', JOB_TITLE' + sLineBreak +
    ', MIN_SALARY' + sLineBreak +
    ', MAX_SALARY' + sLineBreak +
    ', JOB_REQUIREMENT' + sLineBreak +
    ', LANGUAGE_REQ' + sLineBreak +
    ') VALUES (' +
    '  :JOB_CODE' + sLineBreak +
    ', :JOB_GRADE' + sLineBreak +
    ', :JOB_COUNTRY' + sLineBreak +
    ', :JOB_TITLE' + sLineBreak +
    ', :MIN_SALARY' + sLineBreak +
    ', :MAX_SALARY' + sLineBreak +
    ', :JOB_REQUIREMENT' + sLineBreak +
    ', :LANGUAGE_REQ' + sLineBreak +
    ')';
end;

function TJOBDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE JOB SET ' +
    '  JOB_TITLE = :JOB_TITLE' + sLineBreak +
    ', MIN_SALARY = :MIN_SALARY' + sLineBreak +
    ', MAX_SALARY = :MAX_SALARY' + sLineBreak +
    ', JOB_REQUIREMENT = :JOB_REQUIREMENT' + sLineBreak +
    ', LANGUAGE_REQ = :LANGUAGE_REQ' + sLineBreak +
    ' WHERE ' +
    '  JOB_CODE = :JOB_CODE' + sLineBreak +
    ', JOB_GRADE = :JOB_GRADE' + sLineBreak +
    ', JOB_COUNTRY = :JOB_COUNTRY' + sLineBreak +
    '';
end;

function TJOBDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 3);
  Result[0] := TRuntimeField.Create('JOB_CODE','JOB_CODE',ftString);
  Result[1] := TRuntimeField.Create('JOB_GRADE','JOB_GRADE',ftInteger);
  Result[2] := TRuntimeField.Create('JOB_COUNTRY','JOB_COUNTRY',ftString);
end;

procedure TJOBDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('JOB_CODE') then Params.ParamByName('JOB_CODE').AsString := FEntity.JOB_CODE;
  if Params.HasParam('JOB_GRADE') then Params.ParamByName('JOB_GRADE').AsInteger := FEntity.JOB_GRADE;
  if Params.HasParam('JOB_COUNTRY') then Params.ParamByName('JOB_COUNTRY').AsString := FEntity.JOB_COUNTRY;
  if Params.HasParam('JOB_TITLE') then Params.ParamByName('JOB_TITLE').AsString := FEntity.JOB_TITLE;
  if Params.HasParam('MIN_SALARY') then Params.ParamByName('MIN_SALARY').AsFloat := FEntity.MIN_SALARY;
  if Params.HasParam('MAX_SALARY') then Params.ParamByName('MAX_SALARY').AsFloat := FEntity.MAX_SALARY;
  if Params.HasParam('JOB_REQUIREMENT') then Params.ParamByName('JOB_REQUIREMENT').AsString := FEntity.JOB_REQUIREMENT;
  if Params.HasParam('LANGUAGE_REQ') then Params.ParamByName('LANGUAGE_REQ').AsString := FEntity.LANGUAGE_REQ;
end;

procedure TJOBDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
end;

{ TJOBDataSetAdapter }

procedure TJOBDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TJOB;
  
  FDataset.FieldByName('JOB_CODE').AsString := Entity.JOB_CODE;
  FDataset.FieldByName('JOB_GRADE').AsInteger := Entity.JOB_GRADE;
  FDataset.FieldByName('JOB_COUNTRY').AsString := Entity.JOB_COUNTRY;
  FDataset.FieldByName('JOB_TITLE').AsString := Entity.JOB_TITLE;
  FDataset.FieldByName('MIN_SALARY').AsFloat := Entity.MIN_SALARY;
  FDataset.FieldByName('MAX_SALARY').AsFloat := Entity.MAX_SALARY;
  FDataset.FieldByName('JOB_REQUIREMENT').AsString := Entity.JOB_REQUIREMENT;
  FDataset.FieldByName('LANGUAGE_REQ').AsString := Entity.LANGUAGE_REQ;
end;

procedure TJOBDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TJOB;
  
  Entity.JOB_CODE := FDataset.FieldByName('JOB_CODE').AsString;
  Entity.JOB_GRADE := FDataset.FieldByName('JOB_GRADE').AsInteger;
  Entity.JOB_COUNTRY := FDataset.FieldByName('JOB_COUNTRY').AsString;
  Entity.JOB_TITLE := FDataset.FieldByName('JOB_TITLE').AsString;
  Entity.MIN_SALARY := FDataset.FieldByName('MIN_SALARY').AsFloat;
  Entity.MAX_SALARY := FDataset.FieldByName('MAX_SALARY').AsFloat;
  Entity.JOB_REQUIREMENT := FDataset.FieldByName('JOB_REQUIREMENT').AsString;
  Entity.LANGUAGE_REQ := FDataset.FieldByName('LANGUAGE_REQ').AsString;
end;

function TJOBDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TJOB.Create;
end;

procedure TJOBDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TJOB;
  
  if FieldName = 'JOB_CODE' then
    Value := Entity.JOB_CODE
  else
  if FieldName = 'JOB_GRADE' then
    Value := Entity.JOB_GRADE
  else
  if FieldName = 'JOB_COUNTRY' then
    Value := Entity.JOB_COUNTRY
  else
  if FieldName = 'JOB_TITLE' then
    Value := Entity.JOB_TITLE
  else
  if FieldName = 'MIN_SALARY' then
    Value := Entity.MIN_SALARY
  else
  if FieldName = 'MAX_SALARY' then
    Value := Entity.MAX_SALARY
  else
  if FieldName = 'JOB_REQUIREMENT' then
    Value := Entity.JOB_REQUIREMENT
  else
  if FieldName = 'LANGUAGE_REQ' then
    Value := Entity.LANGUAGE_REQ;
end;

procedure TJOBDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TJOB;
  
  if FieldName = 'JOB_CODE' then
    Entity.JOB_CODE := Value
  else
  if FieldName = 'JOB_GRADE' then
    Entity.JOB_GRADE := Value
  else
  if FieldName = 'JOB_COUNTRY' then
    Entity.JOB_COUNTRY := Value
  else
  if FieldName = 'JOB_TITLE' then
    Entity.JOB_TITLE := Value
  else
  if FieldName = 'MIN_SALARY' then
    Entity.MIN_SALARY := Value
  else
  if FieldName = 'MAX_SALARY' then
    Entity.MAX_SALARY := Value
  else
  if FieldName = 'JOB_REQUIREMENT' then
    Entity.JOB_REQUIREMENT := Value
  else
  if FieldName = 'LANGUAGE_REQ' then
    Entity.LANGUAGE_REQ := Value;
end;

procedure TJOBDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_CODE';
  FieldDef.DataType := ftString;
  FieldDef.Size := 5;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_GRADE';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_COUNTRY';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_TITLE';
  FieldDef.DataType := ftString;
  FieldDef.Size := 25;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'MIN_SALARY';
  FieldDef.DataType := ftFloat;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'MAX_SALARY';
  FieldDef.DataType := ftFloat;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'JOB_REQUIREMENT';
  FieldDef.DataType := ftString;
  FieldDef.Size := 100;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'LANGUAGE_REQ';
  FieldDef.DataType := ftString;
  FieldDef.Size := 15;
end;

function PROJECTDataBroker: IEntityDataBrokerPersistent<IPROJECT>;
begin
  Result := TPROJECTDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TPROJECT }

function TPROJECT.GetPROJ_ID: string;
begin
  Result := FPROJ_ID;
end;

procedure TPROJECT.SetPROJ_ID(const Value: string);
begin
  if FPROJ_ID <> Value then
  begin
    FPROJ_ID := Value;
    NotifyChange('PROJ_ID');
  end;
end;

function TPROJECT.GetPROJ_NAME: string;
begin
  Result := FPROJ_NAME;
end;

procedure TPROJECT.SetPROJ_NAME(const Value: string);
begin
  if FPROJ_NAME <> Value then
  begin
    FPROJ_NAME := Value;
    NotifyChange('PROJ_NAME');
  end;
end;

function TPROJECT.GetPROJ_DESC: string;
begin
  Result := FPROJ_DESC;
end;

procedure TPROJECT.SetPROJ_DESC(const Value: string);
begin
  if FPROJ_DESC <> Value then
  begin
    FPROJ_DESC := Value;
    NotifyChange('PROJ_DESC');
  end;
end;

function TPROJECT.GetTEAM_LEADER: Integer;
begin
  Result := FTEAM_LEADER;
end;

procedure TPROJECT.SetTEAM_LEADER(const Value: Integer);
begin
  if FTEAM_LEADER <> Value then
  begin
    FTEAM_LEADER := Value;
    NotifyChange('TEAM_LEADER');
  end;
end;

function TPROJECT.GetPRODUCT: string;
begin
  Result := FPRODUCT;
end;

procedure TPROJECT.SetPRODUCT(const Value: string);
begin
  if FPRODUCT <> Value then
  begin
    FPRODUCT := Value;
    NotifyChange('PRODUCT');
  end;
end;

function TPROJECT.GetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>;
begin
  if not Assigned(FEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList) then
    FEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>.Create(EMPLOYEE_PROJECTDataBroker, 'PROJ_ID', FPROJ_ID);
  
  Result := FEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList.Values;
end;

procedure TPROJECT.SetEMPLOYEE_PROJECT_PROJ_ID_PROJ_IDList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE_PROJECT>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TPROJECT.GetEMPLOYEE_EMP_NO_TEAM_LEADER: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
begin
  if not Assigned(FEMPLOYEE_EMP_NO_TEAM_LEADER) then
    FEMPLOYEE_EMP_NO_TEAM_LEADER := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>.Create(EMPLOYEEDataBroker, 'EMP_NO', FTEAM_LEADER);
  
  Result := FEMPLOYEE_EMP_NO_TEAM_LEADER.Value;
end;

procedure TPROJECT.SetEMPLOYEE_EMP_NO_TEAM_LEADER(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TPROJECT.GetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>;
begin
  if not Assigned(FPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList) then
    FPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList := TProxy<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>.Create(PROJ_DEPT_BUDGETDataBroker, 'PROJ_ID', FPROJ_ID);
  
  Result := FPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList.Values;
end;

procedure TPROJECT.SetPROJ_DEPT_BUDGET_PROJ_ID_PROJ_IDList(const Value: ICodolexList<TestCodolex.DataSource.TestDataModule.IPROJ_DEPT_BUDGET>);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TPROJECTDataBroker }

function TPROJECTDataBroker.CreateFromDataset: IPROJECT;
begin
  inherited;

  var Adapter := TPROJECTDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as IPROJECT;
  Adapter.Free;
end;

function TPROJECTDataBroker.CastEntity(const Entity: ICodolexEntity): IPROJECT;
begin
  inherited;
  Result := Entity as IPROJECT;
end;

function TPROJECTDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'PROJ_ID AS PROJ_ID, ' + sLineBreak +
    'PROJ_NAME AS PROJ_NAME, ' + sLineBreak +
    'PROJ_DESC AS PROJ_DESC, ' + sLineBreak +
    'TEAM_LEADER AS TEAM_LEADER, ' + sLineBreak +
    'PRODUCT AS PRODUCT ' + sLineBreak +
    'FROM PROJECT ';
end;

function TPROJECTDataBroker.TableName: string;
begin
  inherited;
  Result := 'PROJECT';
end;

function TPROJECTDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO PROJECT (' +
    '  PROJ_ID' + sLineBreak +
    ', PROJ_NAME' + sLineBreak +
    ', PROJ_DESC' + sLineBreak +
    ', TEAM_LEADER' + sLineBreak +
    ', PRODUCT' + sLineBreak +
    ') VALUES (' +
    '  :PROJ_ID' + sLineBreak +
    ', :PROJ_NAME' + sLineBreak +
    ', :PROJ_DESC' + sLineBreak +
    ', :TEAM_LEADER' + sLineBreak +
    ', :PRODUCT' + sLineBreak +
    ')';
end;

function TPROJECTDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE PROJECT SET ' +
    '  PROJ_NAME = :PROJ_NAME' + sLineBreak +
    ', PROJ_DESC = :PROJ_DESC' + sLineBreak +
    ', TEAM_LEADER = :TEAM_LEADER' + sLineBreak +
    ', PRODUCT = :PRODUCT' + sLineBreak +
    ' WHERE ' +
    '  PROJ_ID = :PROJ_ID' + sLineBreak +
    '';
end;

function TPROJECTDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 1);
  Result[0] := TRuntimeField.Create('PROJ_ID','PROJ_ID',ftString);
end;

procedure TPROJECTDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('PROJ_ID') then Params.ParamByName('PROJ_ID').AsString := FEntity.PROJ_ID;
  if Params.HasParam('PROJ_NAME') then Params.ParamByName('PROJ_NAME').AsString := FEntity.PROJ_NAME;
  if Params.HasParam('PROJ_DESC') then Params.ParamByName('PROJ_DESC').AsString := FEntity.PROJ_DESC;
  if Params.HasParam('TEAM_LEADER') then Params.ParamByName('TEAM_LEADER').AsInteger := FEntity.TEAM_LEADER;
  if Params.HasParam('PRODUCT') then Params.ParamByName('PRODUCT').AsString := FEntity.PRODUCT;
end;

procedure TPROJECTDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
  FEntity.PROJ_ID := Value.AsString;
end;

{ TPROJECTDataSetAdapter }

procedure TPROJECTDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TPROJECT;
  
  FDataset.FieldByName('PROJ_ID').AsString := Entity.PROJ_ID;
  FDataset.FieldByName('PROJ_NAME').AsString := Entity.PROJ_NAME;
  FDataset.FieldByName('PROJ_DESC').AsString := Entity.PROJ_DESC;
  FDataset.FieldByName('TEAM_LEADER').AsInteger := Entity.TEAM_LEADER;
  FDataset.FieldByName('PRODUCT').AsString := Entity.PRODUCT;
end;

procedure TPROJECTDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TPROJECT;
  
  Entity.PROJ_ID := FDataset.FieldByName('PROJ_ID').AsString;
  Entity.PROJ_NAME := FDataset.FieldByName('PROJ_NAME').AsString;
  Entity.PROJ_DESC := FDataset.FieldByName('PROJ_DESC').AsString;
  Entity.TEAM_LEADER := FDataset.FieldByName('TEAM_LEADER').AsInteger;
  Entity.PRODUCT := FDataset.FieldByName('PRODUCT').AsString;
end;

function TPROJECTDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TPROJECT.Create;
end;

procedure TPROJECTDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TPROJECT;
  
  if FieldName = 'PROJ_ID' then
    Value := Entity.PROJ_ID
  else
  if FieldName = 'PROJ_NAME' then
    Value := Entity.PROJ_NAME
  else
  if FieldName = 'PROJ_DESC' then
    Value := Entity.PROJ_DESC
  else
  if FieldName = 'TEAM_LEADER' then
    Value := Entity.TEAM_LEADER
  else
  if FieldName = 'PRODUCT' then
    Value := Entity.PRODUCT;
end;

procedure TPROJECTDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TPROJECT;
  
  if FieldName = 'PROJ_ID' then
    Entity.PROJ_ID := Value
  else
  if FieldName = 'PROJ_NAME' then
    Entity.PROJ_NAME := Value
  else
  if FieldName = 'PROJ_DESC' then
    Entity.PROJ_DESC := Value
  else
  if FieldName = 'TEAM_LEADER' then
    Entity.TEAM_LEADER := Value
  else
  if FieldName = 'PRODUCT' then
    Entity.PRODUCT := Value;
end;

procedure TPROJECTDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PROJ_ID';
  FieldDef.DataType := ftString;
  FieldDef.Size := 5;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PROJ_NAME';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PROJ_DESC';
  FieldDef.DataType := ftString;
  FieldDef.Size := 100;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'TEAM_LEADER';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PRODUCT';
  FieldDef.DataType := ftString;
  FieldDef.Size := 12;
end;

function PROJ_DEPT_BUDGETDataBroker: IEntityDataBrokerPersistent<IPROJ_DEPT_BUDGET>;
begin
  Result := TPROJ_DEPT_BUDGETDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TPROJ_DEPT_BUDGET }

function TPROJ_DEPT_BUDGET.GetFISCAL_YEAR: Integer;
begin
  Result := FFISCAL_YEAR;
end;

procedure TPROJ_DEPT_BUDGET.SetFISCAL_YEAR(const Value: Integer);
begin
  if FFISCAL_YEAR <> Value then
  begin
    FFISCAL_YEAR := Value;
    NotifyChange('FISCAL_YEAR');
  end;
end;

function TPROJ_DEPT_BUDGET.GetPROJ_ID: string;
begin
  Result := FPROJ_ID;
end;

procedure TPROJ_DEPT_BUDGET.SetPROJ_ID(const Value: string);
begin
  if FPROJ_ID <> Value then
  begin
    FPROJ_ID := Value;
    NotifyChange('PROJ_ID');
  end;
end;

function TPROJ_DEPT_BUDGET.GetDEPT_NO: string;
begin
  Result := FDEPT_NO;
end;

procedure TPROJ_DEPT_BUDGET.SetDEPT_NO(const Value: string);
begin
  if FDEPT_NO <> Value then
  begin
    FDEPT_NO := Value;
    NotifyChange('DEPT_NO');
  end;
end;

function TPROJ_DEPT_BUDGET.GetQUART_HEAD_CNT: Integer;
begin
  Result := FQUART_HEAD_CNT;
end;

procedure TPROJ_DEPT_BUDGET.SetQUART_HEAD_CNT(const Value: Integer);
begin
  if FQUART_HEAD_CNT <> Value then
  begin
    FQUART_HEAD_CNT := Value;
    NotifyChange('QUART_HEAD_CNT');
  end;
end;

function TPROJ_DEPT_BUDGET.GetPROJECTED_BUDGET: Double;
begin
  Result := FPROJECTED_BUDGET;
end;

procedure TPROJ_DEPT_BUDGET.SetPROJECTED_BUDGET(const Value: Double);
begin
  if FPROJECTED_BUDGET <> Value then
  begin
    FPROJECTED_BUDGET := Value;
    NotifyChange('PROJECTED_BUDGET');
  end;
end;

function TPROJ_DEPT_BUDGET.GetDEPARTMENT_DEPT_NO_DEPT_NO: TestCodolex.DataSource.TestDataModule.IDEPARTMENT;
begin
  if not Assigned(FDEPARTMENT_DEPT_NO_DEPT_NO) then
    FDEPARTMENT_DEPT_NO_DEPT_NO := TProxy<TestCodolex.DataSource.TestDataModule.IDEPARTMENT>.Create(DEPARTMENTDataBroker, 'DEPT_NO', FDEPT_NO);
  
  Result := FDEPARTMENT_DEPT_NO_DEPT_NO.Value;
end;

procedure TPROJ_DEPT_BUDGET.SetDEPARTMENT_DEPT_NO_DEPT_NO(const Value: TestCodolex.DataSource.TestDataModule.IDEPARTMENT);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TPROJ_DEPT_BUDGET.GetPROJECT_PROJ_ID_PROJ_ID: TestCodolex.DataSource.TestDataModule.IPROJECT;
begin
  if not Assigned(FPROJECT_PROJ_ID_PROJ_ID) then
    FPROJECT_PROJ_ID_PROJ_ID := TProxy<TestCodolex.DataSource.TestDataModule.IPROJECT>.Create(PROJECTDataBroker, 'PROJ_ID', FPROJ_ID);
  
  Result := FPROJECT_PROJ_ID_PROJ_ID.Value;
end;

procedure TPROJ_DEPT_BUDGET.SetPROJECT_PROJ_ID_PROJ_ID(const Value: TestCodolex.DataSource.TestDataModule.IPROJECT);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TPROJ_DEPT_BUDGETDataBroker }

function TPROJ_DEPT_BUDGETDataBroker.CreateFromDataset: IPROJ_DEPT_BUDGET;
begin
  inherited;

  var Adapter := TPROJ_DEPT_BUDGETDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as IPROJ_DEPT_BUDGET;
  Adapter.Free;
end;

function TPROJ_DEPT_BUDGETDataBroker.CastEntity(const Entity: ICodolexEntity): IPROJ_DEPT_BUDGET;
begin
  inherited;
  Result := Entity as IPROJ_DEPT_BUDGET;
end;

function TPROJ_DEPT_BUDGETDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'FISCAL_YEAR AS FISCAL_YEAR, ' + sLineBreak +
    'PROJ_ID AS PROJ_ID, ' + sLineBreak +
    'DEPT_NO AS DEPT_NO, ' + sLineBreak +
    'QUART_HEAD_CNT AS QUART_HEAD_CNT, ' + sLineBreak +
    'PROJECTED_BUDGET AS PROJECTED_BUDGET ' + sLineBreak +
    'FROM PROJ_DEPT_BUDGET ';
end;

function TPROJ_DEPT_BUDGETDataBroker.TableName: string;
begin
  inherited;
  Result := 'PROJ_DEPT_BUDGET';
end;

function TPROJ_DEPT_BUDGETDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO PROJ_DEPT_BUDGET (' +
    '  FISCAL_YEAR' + sLineBreak +
    ', PROJ_ID' + sLineBreak +
    ', DEPT_NO' + sLineBreak +
    ', QUART_HEAD_CNT' + sLineBreak +
    ', PROJECTED_BUDGET' + sLineBreak +
    ') VALUES (' +
    '  :FISCAL_YEAR' + sLineBreak +
    ', :PROJ_ID' + sLineBreak +
    ', :DEPT_NO' + sLineBreak +
    ', :QUART_HEAD_CNT' + sLineBreak +
    ', :PROJECTED_BUDGET' + sLineBreak +
    ')';
end;

function TPROJ_DEPT_BUDGETDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE PROJ_DEPT_BUDGET SET ' +
    '  QUART_HEAD_CNT = :QUART_HEAD_CNT' + sLineBreak +
    ', PROJECTED_BUDGET = :PROJECTED_BUDGET' + sLineBreak +
    ' WHERE ' +
    '  FISCAL_YEAR = :FISCAL_YEAR' + sLineBreak +
    ', PROJ_ID = :PROJ_ID' + sLineBreak +
    ', DEPT_NO = :DEPT_NO' + sLineBreak +
    '';
end;

function TPROJ_DEPT_BUDGETDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 3);
  Result[0] := TRuntimeField.Create('FISCAL_YEAR','FISCAL_YEAR',ftInteger);
  Result[1] := TRuntimeField.Create('PROJ_ID','PROJ_ID',ftString);
  Result[2] := TRuntimeField.Create('DEPT_NO','DEPT_NO',ftString);
end;

procedure TPROJ_DEPT_BUDGETDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('FISCAL_YEAR') then Params.ParamByName('FISCAL_YEAR').AsInteger := FEntity.FISCAL_YEAR;
  if Params.HasParam('PROJ_ID') then Params.ParamByName('PROJ_ID').AsString := FEntity.PROJ_ID;
  if Params.HasParam('DEPT_NO') then Params.ParamByName('DEPT_NO').AsString := FEntity.DEPT_NO;
  if Params.HasParam('QUART_HEAD_CNT') then Params.ParamByName('QUART_HEAD_CNT').AsInteger := FEntity.QUART_HEAD_CNT;
  if Params.HasParam('PROJECTED_BUDGET') then Params.ParamByName('PROJECTED_BUDGET').AsFloat := FEntity.PROJECTED_BUDGET;
end;

procedure TPROJ_DEPT_BUDGETDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
end;

{ TPROJ_DEPT_BUDGETDataSetAdapter }

procedure TPROJ_DEPT_BUDGETDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TPROJ_DEPT_BUDGET;
  
  FDataset.FieldByName('FISCAL_YEAR').AsInteger := Entity.FISCAL_YEAR;
  FDataset.FieldByName('PROJ_ID').AsString := Entity.PROJ_ID;
  FDataset.FieldByName('DEPT_NO').AsString := Entity.DEPT_NO;
  FDataset.FieldByName('QUART_HEAD_CNT').AsInteger := Entity.QUART_HEAD_CNT;
  FDataset.FieldByName('PROJECTED_BUDGET').AsFloat := Entity.PROJECTED_BUDGET;
end;

procedure TPROJ_DEPT_BUDGETDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TPROJ_DEPT_BUDGET;
  
  Entity.FISCAL_YEAR := FDataset.FieldByName('FISCAL_YEAR').AsInteger;
  Entity.PROJ_ID := FDataset.FieldByName('PROJ_ID').AsString;
  Entity.DEPT_NO := FDataset.FieldByName('DEPT_NO').AsString;
  Entity.QUART_HEAD_CNT := FDataset.FieldByName('QUART_HEAD_CNT').AsInteger;
  Entity.PROJECTED_BUDGET := FDataset.FieldByName('PROJECTED_BUDGET').AsFloat;
end;

function TPROJ_DEPT_BUDGETDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TPROJ_DEPT_BUDGET.Create;
end;

procedure TPROJ_DEPT_BUDGETDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TPROJ_DEPT_BUDGET;
  
  if FieldName = 'FISCAL_YEAR' then
    Value := Entity.FISCAL_YEAR
  else
  if FieldName = 'PROJ_ID' then
    Value := Entity.PROJ_ID
  else
  if FieldName = 'DEPT_NO' then
    Value := Entity.DEPT_NO
  else
  if FieldName = 'QUART_HEAD_CNT' then
    Value := Entity.QUART_HEAD_CNT
  else
  if FieldName = 'PROJECTED_BUDGET' then
    Value := Entity.PROJECTED_BUDGET;
end;

procedure TPROJ_DEPT_BUDGETDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TPROJ_DEPT_BUDGET;
  
  if FieldName = 'FISCAL_YEAR' then
    Entity.FISCAL_YEAR := Value
  else
  if FieldName = 'PROJ_ID' then
    Entity.PROJ_ID := Value
  else
  if FieldName = 'DEPT_NO' then
    Entity.DEPT_NO := Value
  else
  if FieldName = 'QUART_HEAD_CNT' then
    Entity.QUART_HEAD_CNT := Value
  else
  if FieldName = 'PROJECTED_BUDGET' then
    Entity.PROJECTED_BUDGET := Value;
end;

procedure TPROJ_DEPT_BUDGETDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'FISCAL_YEAR';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PROJ_ID';
  FieldDef.DataType := ftString;
  FieldDef.Size := 5;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'DEPT_NO';
  FieldDef.DataType := ftString;
  FieldDef.Size := 3;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'QUART_HEAD_CNT';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PROJECTED_BUDGET';
  FieldDef.DataType := ftFloat;
end;

function SALARY_HISTORYDataBroker: IEntityDataBrokerPersistent<ISALARY_HISTORY>;
begin
  Result := TSALARY_HISTORYDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TSALARY_HISTORY }

function TSALARY_HISTORY.GetEMP_NO: Integer;
begin
  Result := FEMP_NO;
end;

procedure TSALARY_HISTORY.SetEMP_NO(const Value: Integer);
begin
  if FEMP_NO <> Value then
  begin
    FEMP_NO := Value;
    NotifyChange('EMP_NO');
  end;
end;

function TSALARY_HISTORY.GetCHANGE_DATE: TDateTime;
begin
  Result := FCHANGE_DATE;
end;

procedure TSALARY_HISTORY.SetCHANGE_DATE(const Value: TDateTime);
begin
  if FCHANGE_DATE <> Value then
  begin
    FCHANGE_DATE := Value;
    NotifyChange('CHANGE_DATE');
  end;
end;

function TSALARY_HISTORY.GetUPDATER_ID: string;
begin
  Result := FUPDATER_ID;
end;

procedure TSALARY_HISTORY.SetUPDATER_ID(const Value: string);
begin
  if FUPDATER_ID <> Value then
  begin
    FUPDATER_ID := Value;
    NotifyChange('UPDATER_ID');
  end;
end;

function TSALARY_HISTORY.GetOLD_SALARY: Double;
begin
  Result := FOLD_SALARY;
end;

procedure TSALARY_HISTORY.SetOLD_SALARY(const Value: Double);
begin
  if FOLD_SALARY <> Value then
  begin
    FOLD_SALARY := Value;
    NotifyChange('OLD_SALARY');
  end;
end;

function TSALARY_HISTORY.GetPERCENT_CHANGE: Double;
begin
  Result := FPERCENT_CHANGE;
end;

procedure TSALARY_HISTORY.SetPERCENT_CHANGE(const Value: Double);
begin
  if FPERCENT_CHANGE <> Value then
  begin
    FPERCENT_CHANGE := Value;
    NotifyChange('PERCENT_CHANGE');
  end;
end;

function TSALARY_HISTORY.GetNEW_SALARY: Double;
begin
  Result := FNEW_SALARY;
end;

procedure TSALARY_HISTORY.SetNEW_SALARY(const Value: Double);
begin
  if FNEW_SALARY <> Value then
  begin
    FNEW_SALARY := Value;
    NotifyChange('NEW_SALARY');
  end;
end;

function TSALARY_HISTORY.GetEMPLOYEE_EMP_NO_EMP_NO: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
begin
  if not Assigned(FEMPLOYEE_EMP_NO_EMP_NO) then
    FEMPLOYEE_EMP_NO_EMP_NO := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>.Create(EMPLOYEEDataBroker, 'EMP_NO', FEMP_NO);
  
  Result := FEMPLOYEE_EMP_NO_EMP_NO.Value;
end;

procedure TSALARY_HISTORY.SetEMPLOYEE_EMP_NO_EMP_NO(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TSALARY_HISTORYDataBroker }

function TSALARY_HISTORYDataBroker.CreateFromDataset: ISALARY_HISTORY;
begin
  inherited;

  var Adapter := TSALARY_HISTORYDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as ISALARY_HISTORY;
  Adapter.Free;
end;

function TSALARY_HISTORYDataBroker.CastEntity(const Entity: ICodolexEntity): ISALARY_HISTORY;
begin
  inherited;
  Result := Entity as ISALARY_HISTORY;
end;

function TSALARY_HISTORYDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'EMP_NO AS EMP_NO, ' + sLineBreak +
    'CHANGE_DATE AS CHANGE_DATE, ' + sLineBreak +
    'UPDATER_ID AS UPDATER_ID, ' + sLineBreak +
    'OLD_SALARY AS OLD_SALARY, ' + sLineBreak +
    'PERCENT_CHANGE AS PERCENT_CHANGE, ' + sLineBreak +
    'NEW_SALARY AS NEW_SALARY ' + sLineBreak +
    'FROM SALARY_HISTORY ';
end;

function TSALARY_HISTORYDataBroker.TableName: string;
begin
  inherited;
  Result := 'SALARY_HISTORY';
end;

function TSALARY_HISTORYDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO SALARY_HISTORY (' +
    '  EMP_NO' + sLineBreak +
    ', CHANGE_DATE' + sLineBreak +
    ', UPDATER_ID' + sLineBreak +
    ', OLD_SALARY' + sLineBreak +
    ', PERCENT_CHANGE' + sLineBreak +
    ', NEW_SALARY' + sLineBreak +
    ') VALUES (' +
    '  :EMP_NO' + sLineBreak +
    ', :CHANGE_DATE' + sLineBreak +
    ', :UPDATER_ID' + sLineBreak +
    ', :OLD_SALARY' + sLineBreak +
    ', :PERCENT_CHANGE' + sLineBreak +
    ', :NEW_SALARY' + sLineBreak +
    ')';
end;

function TSALARY_HISTORYDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE SALARY_HISTORY SET ' +
    '  OLD_SALARY = :OLD_SALARY' + sLineBreak +
    ', PERCENT_CHANGE = :PERCENT_CHANGE' + sLineBreak +
    ', NEW_SALARY = :NEW_SALARY' + sLineBreak +
    ' WHERE ' +
    '  EMP_NO = :EMP_NO' + sLineBreak +
    ', CHANGE_DATE = :CHANGE_DATE' + sLineBreak +
    ', UPDATER_ID = :UPDATER_ID' + sLineBreak +
    '';
end;

function TSALARY_HISTORYDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 3);
  Result[0] := TRuntimeField.Create('EMP_NO','EMP_NO',ftInteger);
  Result[1] := TRuntimeField.Create('CHANGE_DATE','CHANGE_DATE',ftDateTime);
  Result[2] := TRuntimeField.Create('UPDATER_ID','UPDATER_ID',ftString);
end;

procedure TSALARY_HISTORYDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('EMP_NO') then Params.ParamByName('EMP_NO').AsInteger := FEntity.EMP_NO;
  if Params.HasParam('CHANGE_DATE') then Params.ParamByName('CHANGE_DATE').AsDateTime := FEntity.CHANGE_DATE;
  if Params.HasParam('UPDATER_ID') then Params.ParamByName('UPDATER_ID').AsString := FEntity.UPDATER_ID;
  if Params.HasParam('OLD_SALARY') then Params.ParamByName('OLD_SALARY').AsFloat := FEntity.OLD_SALARY;
  if Params.HasParam('PERCENT_CHANGE') then Params.ParamByName('PERCENT_CHANGE').AsFloat := FEntity.PERCENT_CHANGE;
  if Params.HasParam('NEW_SALARY') then Params.ParamByName('NEW_SALARY').AsFloat := FEntity.NEW_SALARY;
end;

procedure TSALARY_HISTORYDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
end;

{ TSALARY_HISTORYDataSetAdapter }

procedure TSALARY_HISTORYDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TSALARY_HISTORY;
  
  FDataset.FieldByName('EMP_NO').AsInteger := Entity.EMP_NO;
  FDataset.FieldByName('CHANGE_DATE').AsDateTime := Entity.CHANGE_DATE;
  FDataset.FieldByName('UPDATER_ID').AsString := Entity.UPDATER_ID;
  FDataset.FieldByName('OLD_SALARY').AsFloat := Entity.OLD_SALARY;
  FDataset.FieldByName('PERCENT_CHANGE').AsFloat := Entity.PERCENT_CHANGE;
  FDataset.FieldByName('NEW_SALARY').AsFloat := Entity.NEW_SALARY;
end;

procedure TSALARY_HISTORYDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TSALARY_HISTORY;
  
  Entity.EMP_NO := FDataset.FieldByName('EMP_NO').AsInteger;
  Entity.CHANGE_DATE := FDataset.FieldByName('CHANGE_DATE').AsDateTime;
  Entity.UPDATER_ID := FDataset.FieldByName('UPDATER_ID').AsString;
  Entity.OLD_SALARY := FDataset.FieldByName('OLD_SALARY').AsFloat;
  Entity.PERCENT_CHANGE := FDataset.FieldByName('PERCENT_CHANGE').AsFloat;
  Entity.NEW_SALARY := FDataset.FieldByName('NEW_SALARY').AsFloat;
end;

function TSALARY_HISTORYDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TSALARY_HISTORY.Create;
end;

procedure TSALARY_HISTORYDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TSALARY_HISTORY;
  
  if FieldName = 'EMP_NO' then
    Value := Entity.EMP_NO
  else
  if FieldName = 'CHANGE_DATE' then
    Value := Entity.CHANGE_DATE
  else
  if FieldName = 'UPDATER_ID' then
    Value := Entity.UPDATER_ID
  else
  if FieldName = 'OLD_SALARY' then
    Value := Entity.OLD_SALARY
  else
  if FieldName = 'PERCENT_CHANGE' then
    Value := Entity.PERCENT_CHANGE
  else
  if FieldName = 'NEW_SALARY' then
    Value := Entity.NEW_SALARY;
end;

procedure TSALARY_HISTORYDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TSALARY_HISTORY;
  
  if FieldName = 'EMP_NO' then
    Entity.EMP_NO := Value
  else
  if FieldName = 'CHANGE_DATE' then
    Entity.CHANGE_DATE := Value
  else
  if FieldName = 'UPDATER_ID' then
    Entity.UPDATER_ID := Value
  else
  if FieldName = 'OLD_SALARY' then
    Entity.OLD_SALARY := Value
  else
  if FieldName = 'PERCENT_CHANGE' then
    Entity.PERCENT_CHANGE := Value
  else
  if FieldName = 'NEW_SALARY' then
    Entity.NEW_SALARY := Value;
end;

procedure TSALARY_HISTORYDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'EMP_NO';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CHANGE_DATE';
  FieldDef.DataType := ftDateTime;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'UPDATER_ID';
  FieldDef.DataType := ftString;
  FieldDef.Size := 20;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'OLD_SALARY';
  FieldDef.DataType := ftFloat;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PERCENT_CHANGE';
  FieldDef.DataType := ftFloat;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'NEW_SALARY';
  FieldDef.DataType := ftFloat;
end;

function SALESDataBroker: IEntityDataBrokerPersistent<ISALES>;
begin
  Result := TSALESDataBroker.Create(CodolexFramework.DatabaseQueryProvider['TestDataModule']());
end;

{ TSALES }

function TSALES.GetPO_NUMBER: string;
begin
  Result := FPO_NUMBER;
end;

procedure TSALES.SetPO_NUMBER(const Value: string);
begin
  if FPO_NUMBER <> Value then
  begin
    FPO_NUMBER := Value;
    NotifyChange('PO_NUMBER');
  end;
end;

function TSALES.GetCUST_NO: Integer;
begin
  Result := FCUST_NO;
end;

procedure TSALES.SetCUST_NO(const Value: Integer);
begin
  if FCUST_NO <> Value then
  begin
    FCUST_NO := Value;
    NotifyChange('CUST_NO');
  end;
end;

function TSALES.GetSALES_REP: Integer;
begin
  Result := FSALES_REP;
end;

procedure TSALES.SetSALES_REP(const Value: Integer);
begin
  if FSALES_REP <> Value then
  begin
    FSALES_REP := Value;
    NotifyChange('SALES_REP');
  end;
end;

function TSALES.GetORDER_STATUS: string;
begin
  Result := FORDER_STATUS;
end;

procedure TSALES.SetORDER_STATUS(const Value: string);
begin
  if FORDER_STATUS <> Value then
  begin
    FORDER_STATUS := Value;
    NotifyChange('ORDER_STATUS');
  end;
end;

function TSALES.GetORDER_DATE: TDateTime;
begin
  Result := FORDER_DATE;
end;

procedure TSALES.SetORDER_DATE(const Value: TDateTime);
begin
  if FORDER_DATE <> Value then
  begin
    FORDER_DATE := Value;
    NotifyChange('ORDER_DATE');
  end;
end;

function TSALES.GetSHIP_DATE: TDateTime;
begin
  Result := FSHIP_DATE;
end;

procedure TSALES.SetSHIP_DATE(const Value: TDateTime);
begin
  if FSHIP_DATE <> Value then
  begin
    FSHIP_DATE := Value;
    NotifyChange('SHIP_DATE');
  end;
end;

function TSALES.GetDATE_NEEDED: TDateTime;
begin
  Result := FDATE_NEEDED;
end;

procedure TSALES.SetDATE_NEEDED(const Value: TDateTime);
begin
  if FDATE_NEEDED <> Value then
  begin
    FDATE_NEEDED := Value;
    NotifyChange('DATE_NEEDED');
  end;
end;

function TSALES.GetPAID: string;
begin
  Result := FPAID;
end;

procedure TSALES.SetPAID(const Value: string);
begin
  if FPAID <> Value then
  begin
    FPAID := Value;
    NotifyChange('PAID');
  end;
end;

function TSALES.GetQTY_ORDERED: Integer;
begin
  Result := FQTY_ORDERED;
end;

procedure TSALES.SetQTY_ORDERED(const Value: Integer);
begin
  if FQTY_ORDERED <> Value then
  begin
    FQTY_ORDERED := Value;
    NotifyChange('QTY_ORDERED');
  end;
end;

function TSALES.GetTOTAL_VALUE: Double;
begin
  Result := FTOTAL_VALUE;
end;

procedure TSALES.SetTOTAL_VALUE(const Value: Double);
begin
  if FTOTAL_VALUE <> Value then
  begin
    FTOTAL_VALUE := Value;
    NotifyChange('TOTAL_VALUE');
  end;
end;

function TSALES.GetDISCOUNT: Integer;
begin
  Result := FDISCOUNT;
end;

procedure TSALES.SetDISCOUNT(const Value: Integer);
begin
  if FDISCOUNT <> Value then
  begin
    FDISCOUNT := Value;
    NotifyChange('DISCOUNT');
  end;
end;

function TSALES.GetITEM_TYPE: string;
begin
  Result := FITEM_TYPE;
end;

procedure TSALES.SetITEM_TYPE(const Value: string);
begin
  if FITEM_TYPE <> Value then
  begin
    FITEM_TYPE := Value;
    NotifyChange('ITEM_TYPE');
  end;
end;

function TSALES.GetAGED: Double;
begin
  Result := FAGED;
end;

procedure TSALES.SetAGED(const Value: Double);
begin
  if FAGED <> Value then
  begin
    FAGED := Value;
    NotifyChange('AGED');
  end;
end;

function TSALES.GetCUSTOMER_CUST_NO_CUST_NO: TestCodolex.DataSource.TestDataModule.ICUSTOMER;
begin
  if not Assigned(FCUSTOMER_CUST_NO_CUST_NO) then
    FCUSTOMER_CUST_NO_CUST_NO := TProxy<TestCodolex.DataSource.TestDataModule.ICUSTOMER>.Create(CUSTOMERDataBroker, 'CUST_NO', FCUST_NO);
  
  Result := FCUSTOMER_CUST_NO_CUST_NO.Value;
end;

procedure TSALES.SetCUSTOMER_CUST_NO_CUST_NO(const Value: TestCodolex.DataSource.TestDataModule.ICUSTOMER);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

function TSALES.GetEMPLOYEE_EMP_NO_SALES_REP: TestCodolex.DataSource.TestDataModule.IEMPLOYEE;
begin
  if not Assigned(FEMPLOYEE_EMP_NO_SALES_REP) then
    FEMPLOYEE_EMP_NO_SALES_REP := TProxy<TestCodolex.DataSource.TestDataModule.IEMPLOYEE>.Create(EMPLOYEEDataBroker, 'EMP_NO', FSALES_REP);
  
  Result := FEMPLOYEE_EMP_NO_SALES_REP.Value;
end;

procedure TSALES.SetEMPLOYEE_EMP_NO_SALES_REP(const Value: TestCodolex.DataSource.TestDataModule.IEMPLOYEE);
begin
  raise ESetProxyValueNotImplemented.Create('Setting an associated value is not implemented yet');
end;

{ TSALESDataBroker }

function TSALESDataBroker.CreateFromDataset: ISALES;
begin
  inherited;

  var Adapter := TSALESDataSetAdapter.Create;
  Result := Adapter.Map(FDataSet) as ISALES;
  Adapter.Free;
end;

function TSALESDataBroker.CastEntity(const Entity: ICodolexEntity): ISALES;
begin
  inherited;
  Result := Entity as ISALES;
end;

function TSALESDataBroker.GetSelectStatement: string;
begin
  inherited;
  Result := 'SELECT ' +
    'PO_NUMBER AS PO_NUMBER, ' + sLineBreak +
    'CUST_NO AS CUST_NO, ' + sLineBreak +
    'SALES_REP AS SALES_REP, ' + sLineBreak +
    'ORDER_STATUS AS ORDER_STATUS, ' + sLineBreak +
    'ORDER_DATE AS ORDER_DATE, ' + sLineBreak +
    'SHIP_DATE AS SHIP_DATE, ' + sLineBreak +
    'DATE_NEEDED AS DATE_NEEDED, ' + sLineBreak +
    'PAID AS PAID, ' + sLineBreak +
    'QTY_ORDERED AS QTY_ORDERED, ' + sLineBreak +
    'TOTAL_VALUE AS TOTAL_VALUE, ' + sLineBreak +
    'DISCOUNT AS DISCOUNT, ' + sLineBreak +
    'ITEM_TYPE AS ITEM_TYPE, ' + sLineBreak +
    'AGED AS AGED ' + sLineBreak +
    'FROM SALES ';
end;

function TSALESDataBroker.TableName: string;
begin
  inherited;
  Result := 'SALES';
end;

function TSALESDataBroker.GetInsertStatement: string;
begin
  inherited;
  Result := 'INSERT INTO SALES (' +
    '  PO_NUMBER' + sLineBreak +
    ', CUST_NO' + sLineBreak +
    ', SALES_REP' + sLineBreak +
    ', ORDER_STATUS' + sLineBreak +
    ', ORDER_DATE' + sLineBreak +
    ', SHIP_DATE' + sLineBreak +
    ', DATE_NEEDED' + sLineBreak +
    ', PAID' + sLineBreak +
    ', QTY_ORDERED' + sLineBreak +
    ', TOTAL_VALUE' + sLineBreak +
    ', DISCOUNT' + sLineBreak +
    ', ITEM_TYPE' + sLineBreak +
    ', AGED' + sLineBreak +
    ') VALUES (' +
    '  :PO_NUMBER' + sLineBreak +
    ', :CUST_NO' + sLineBreak +
    ', :SALES_REP' + sLineBreak +
    ', :ORDER_STATUS' + sLineBreak +
    ', :ORDER_DATE' + sLineBreak +
    ', :SHIP_DATE' + sLineBreak +
    ', :DATE_NEEDED' + sLineBreak +
    ', :PAID' + sLineBreak +
    ', :QTY_ORDERED' + sLineBreak +
    ', :TOTAL_VALUE' + sLineBreak +
    ', :DISCOUNT' + sLineBreak +
    ', :ITEM_TYPE' + sLineBreak +
    ', :AGED' + sLineBreak +
    ')';
end;

function TSALESDataBroker.GetUpdateStatement: string;
begin
  inherited;
  Result := 'UPDATE SALES SET ' +
    '  CUST_NO = :CUST_NO' + sLineBreak +
    ', SALES_REP = :SALES_REP' + sLineBreak +
    ', ORDER_STATUS = :ORDER_STATUS' + sLineBreak +
    ', ORDER_DATE = :ORDER_DATE' + sLineBreak +
    ', SHIP_DATE = :SHIP_DATE' + sLineBreak +
    ', DATE_NEEDED = :DATE_NEEDED' + sLineBreak +
    ', PAID = :PAID' + sLineBreak +
    ', QTY_ORDERED = :QTY_ORDERED' + sLineBreak +
    ', TOTAL_VALUE = :TOTAL_VALUE' + sLineBreak +
    ', DISCOUNT = :DISCOUNT' + sLineBreak +
    ', ITEM_TYPE = :ITEM_TYPE' + sLineBreak +
    ', AGED = :AGED' + sLineBreak +
    ' WHERE ' +
    '  PO_NUMBER = :PO_NUMBER' + sLineBreak +
    '';
end;

function TSALESDataBroker.GetPrimaryKeyFields: TArray<IRuntimeField>;
begin
  inherited;
  SetLength(Result, 1);
  Result[0] := TRuntimeField.Create('PO_NUMBER','PO_NUMBER',ftString);
end;

procedure TSALESDataBroker.SetParams(const Params: IDatabaseParams);
begin
  inherited;
  if Params.HasParam('PO_NUMBER') then Params.ParamByName('PO_NUMBER').AsString := FEntity.PO_NUMBER;
  if Params.HasParam('CUST_NO') then Params.ParamByName('CUST_NO').AsInteger := FEntity.CUST_NO;
  if Params.HasParam('SALES_REP') then Params.ParamByName('SALES_REP').AsInteger := FEntity.SALES_REP;
  if Params.HasParam('ORDER_STATUS') then Params.ParamByName('ORDER_STATUS').AsString := FEntity.ORDER_STATUS;
  if Params.HasParam('ORDER_DATE') then Params.ParamByName('ORDER_DATE').AsDateTime := FEntity.ORDER_DATE;
  if Params.HasParam('SHIP_DATE') then Params.ParamByName('SHIP_DATE').AsDateTime := FEntity.SHIP_DATE;
  if Params.HasParam('DATE_NEEDED') then Params.ParamByName('DATE_NEEDED').AsDateTime := FEntity.DATE_NEEDED;
  if Params.HasParam('PAID') then Params.ParamByName('PAID').AsString := FEntity.PAID;
  if Params.HasParam('QTY_ORDERED') then Params.ParamByName('QTY_ORDERED').AsInteger := FEntity.QTY_ORDERED;
  if Params.HasParam('TOTAL_VALUE') then Params.ParamByName('TOTAL_VALUE').AsFloat := FEntity.TOTAL_VALUE;
  if Params.HasParam('DISCOUNT') then Params.ParamByName('DISCOUNT').AsInteger := FEntity.DISCOUNT;
  if Params.HasParam('ITEM_TYPE') then Params.ParamByName('ITEM_TYPE').AsString := FEntity.ITEM_TYPE;
  if Params.HasParam('AGED') then Params.ParamByName('AGED').AsFloat := FEntity.AGED;
end;

procedure TSALESDataBroker.SetPrimaryKeyValue(const Value: TValue);
begin
  inherited;
  FEntity.PO_NUMBER := Value.AsString;
end;

{ TSALESDataSetAdapter }

procedure TSALESDataSetAdapter.MapToDataSet;
begin
  inherited;
  
  var Entity := FEntity as TSALES;
  
  FDataset.FieldByName('PO_NUMBER').AsString := Entity.PO_NUMBER;
  FDataset.FieldByName('CUST_NO').AsInteger := Entity.CUST_NO;
  FDataset.FieldByName('SALES_REP').AsInteger := Entity.SALES_REP;
  FDataset.FieldByName('ORDER_STATUS').AsString := Entity.ORDER_STATUS;
  FDataset.FieldByName('ORDER_DATE').AsDateTime := Entity.ORDER_DATE;
  FDataset.FieldByName('SHIP_DATE').AsDateTime := Entity.SHIP_DATE;
  FDataset.FieldByName('DATE_NEEDED').AsDateTime := Entity.DATE_NEEDED;
  FDataset.FieldByName('PAID').AsString := Entity.PAID;
  FDataset.FieldByName('QTY_ORDERED').AsInteger := Entity.QTY_ORDERED;
  FDataset.FieldByName('TOTAL_VALUE').AsFloat := Entity.TOTAL_VALUE;
  FDataset.FieldByName('DISCOUNT').AsInteger := Entity.DISCOUNT;
  FDataset.FieldByName('ITEM_TYPE').AsString := Entity.ITEM_TYPE;
  FDataset.FieldByName('AGED').AsFloat := Entity.AGED;
end;

procedure TSALESDataSetAdapter.MapToEntity;
begin
  inherited;
  
  var Entity := FEntity as TSALES;
  
  Entity.PO_NUMBER := FDataset.FieldByName('PO_NUMBER').AsString;
  Entity.CUST_NO := FDataset.FieldByName('CUST_NO').AsInteger;
  Entity.SALES_REP := FDataset.FieldByName('SALES_REP').AsInteger;
  Entity.ORDER_STATUS := FDataset.FieldByName('ORDER_STATUS').AsString;
  Entity.ORDER_DATE := FDataset.FieldByName('ORDER_DATE').AsDateTime;
  Entity.SHIP_DATE := FDataset.FieldByName('SHIP_DATE').AsDateTime;
  Entity.DATE_NEEDED := FDataset.FieldByName('DATE_NEEDED').AsDateTime;
  Entity.PAID := FDataset.FieldByName('PAID').AsString;
  Entity.QTY_ORDERED := FDataset.FieldByName('QTY_ORDERED').AsInteger;
  Entity.TOTAL_VALUE := FDataset.FieldByName('TOTAL_VALUE').AsFloat;
  Entity.DISCOUNT := FDataset.FieldByName('DISCOUNT').AsInteger;
  Entity.ITEM_TYPE := FDataset.FieldByName('ITEM_TYPE').AsString;
  Entity.AGED := FDataset.FieldByName('AGED').AsFloat;
end;

function TSALESDataSetAdapter.CreateNewEntity: ICodolexEntity;
begin
  inherited;
  Result := TSALES.Create;
end;

procedure TSALESDataSetAdapter.GetFieldValueFromEntity(const FieldName: string; var Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TSALES;
  
  if FieldName = 'PO_NUMBER' then
    Value := Entity.PO_NUMBER
  else
  if FieldName = 'CUST_NO' then
    Value := Entity.CUST_NO
  else
  if FieldName = 'SALES_REP' then
    Value := Entity.SALES_REP
  else
  if FieldName = 'ORDER_STATUS' then
    Value := Entity.ORDER_STATUS
  else
  if FieldName = 'ORDER_DATE' then
    Value := Entity.ORDER_DATE
  else
  if FieldName = 'SHIP_DATE' then
    Value := Entity.SHIP_DATE
  else
  if FieldName = 'DATE_NEEDED' then
    Value := Entity.DATE_NEEDED
  else
  if FieldName = 'PAID' then
    Value := Entity.PAID
  else
  if FieldName = 'QTY_ORDERED' then
    Value := Entity.QTY_ORDERED
  else
  if FieldName = 'TOTAL_VALUE' then
    Value := Entity.TOTAL_VALUE
  else
  if FieldName = 'DISCOUNT' then
    Value := Entity.DISCOUNT
  else
  if FieldName = 'ITEM_TYPE' then
    Value := Entity.ITEM_TYPE
  else
  if FieldName = 'AGED' then
    Value := Entity.AGED;
end;

procedure TSALESDataSetAdapter.SetFieldValueInEntity(const FieldName: string; const Value: Variant);
begin
  inherited;
  
  var Entity := FEntity as TSALES;
  
  if FieldName = 'PO_NUMBER' then
    Entity.PO_NUMBER := Value
  else
  if FieldName = 'CUST_NO' then
    Entity.CUST_NO := Value
  else
  if FieldName = 'SALES_REP' then
    Entity.SALES_REP := Value
  else
  if FieldName = 'ORDER_STATUS' then
    Entity.ORDER_STATUS := Value
  else
  if FieldName = 'ORDER_DATE' then
    Entity.ORDER_DATE := Value
  else
  if FieldName = 'SHIP_DATE' then
    Entity.SHIP_DATE := Value
  else
  if FieldName = 'DATE_NEEDED' then
    Entity.DATE_NEEDED := Value
  else
  if FieldName = 'PAID' then
    Entity.PAID := Value
  else
  if FieldName = 'QTY_ORDERED' then
    Entity.QTY_ORDERED := Value
  else
  if FieldName = 'TOTAL_VALUE' then
    Entity.TOTAL_VALUE := Value
  else
  if FieldName = 'DISCOUNT' then
    Entity.DISCOUNT := Value
  else
  if FieldName = 'ITEM_TYPE' then
    Entity.ITEM_TYPE := Value
  else
  if FieldName = 'AGED' then
    Entity.AGED := Value;
end;

procedure TSALESDataSetAdapter.AddFieldDefsTo(const FieldDefs: TFieldDefs);
begin
  inherited;
  
  var FieldDef: TFieldDef;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PO_NUMBER';
  FieldDef.DataType := ftString;
  FieldDef.Size := 8;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'CUST_NO';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'SALES_REP';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ORDER_STATUS';
  FieldDef.DataType := ftString;
  FieldDef.Size := 7;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ORDER_DATE';
  FieldDef.DataType := ftDateTime;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'SHIP_DATE';
  FieldDef.DataType := ftDateTime;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'DATE_NEEDED';
  FieldDef.DataType := ftDateTime;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'PAID';
  FieldDef.DataType := ftString;
  FieldDef.Size := 1;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'QTY_ORDERED';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'TOTAL_VALUE';
  FieldDef.DataType := ftFloat;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'DISCOUNT';
  FieldDef.DataType := ftInteger;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'ITEM_TYPE';
  FieldDef.DataType := ftString;
  FieldDef.Size := 12;
  
  FieldDef := FieldDefs.AddFieldDef;
  FieldDef.Name := 'AGED';
  FieldDef.DataType := ftFloat;
end;

end.