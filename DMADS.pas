unit DMADS;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDataModule1 = class(TDataModule)
    ADSDB: TDatabase;
    maintable: TTable;
    maindataset: TDataSource;
    maintableA0: TIntegerField;
    maintableA1: TIntegerField;
    maintableA2: TFloatField;
    maintableA3: TStringField;
    maintableA4: TStringField;
    maintableA5: TTimeField;
    maintableA6: TDateField;
    resultstable: TTable;
    resultstableCreate: TFloatField;
    resultstableSelect: TFloatField;
    resultstableUpdate: TFloatField;
    resultstableDelete: TFloatField;
    resultadataset: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
