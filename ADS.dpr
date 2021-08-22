program ADS;

uses
  Forms,
  FMAIN in 'FMAIN.pas' {Form1},
  DMADS in 'DMADS.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
