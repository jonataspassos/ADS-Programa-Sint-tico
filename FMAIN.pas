unit FMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, TeeProcs, TeEngine, Chart, Series,
  DbChart, Gauges, DBCtrls, Mask, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Dados: TGroupBox;
    Label2: TLabel;
    INA1: TEdit;
    A1: TPanel;
    A2: TPanel;
    Label3: TLabel;
    INA2: TEdit;
    A3: TPanel;
    Label4: TLabel;
    INA3: TEdit;
    A4: TPanel;
    Label5: TLabel;
    INA4: TEdit;
    A5: TPanel;
    Label6: TLabel;
    INA5: TEdit;
    A6: TPanel;
    Label7: TLabel;
    INA6: TEdit;
    Operacoes: TGroupBox;
    Panel1: TPanel;
    Label8: TLabel;
    INCREATE: TEdit;
    Panel2: TPanel;
    Label9: TLabel;
    INSELECT: TEdit;
    Panel3: TPanel;
    Label10: TLabel;
    INUPDATE: TEdit;
    Panel4: TPanel;
    Label11: TLabel;
    Repeticoes: TGroupBox;
    Panel5: TPanel;
    Label12: TLabel;
    INREPEAT: TEdit;
    info: TGroupBox;
    Memo1: TMemo;
    progress2: TProgressBar;
    start: TButton;
    overhead: TButton;
    Panel6: TPanel;
    results: TPageControl;
    TabSheet1: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Total: TPanel;
    ttCreateMedia: TLabel;
    ttCreateDP: TLabel;
    ttSelectMedia: TLabel;
    ttUpdateMedia: TLabel;
    ttDeleteMedia: TLabel;
    ttSelectDP: TLabel;
    ttUpdateDP: TLabel;
    ttDeleteDP: TLabel;
    Panel7: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    ohCreateMedia: TLabel;
    ohCreateDP: TLabel;
    ohSelectMedia: TLabel;
    ohUpdateMedia: TLabel;
    ohDeleteMedia: TLabel;
    ohSelectDP: TLabel;
    ohUpdateDP: TLabel;
    ohDeleteDP: TLabel;
    progress1: TGauge;
    procedure startClick(Sender: TObject);
    procedure tableInsert(A0:Integer;A1:Integer;A2:Real;A3:String;A4:String;A5:String;A6:String);
    procedure tableSelect(A0:Integer);
    procedure tableUpdate(A0:Integer;A1:Integer;A2:Real;A3:String;A4:String;A5:String;A6:String);
    function dpformul(sum:TDateTime; sqr:TDateTime; qtd:Integer): TDateTime;
    procedure tableDelete(A0:Integer);
    procedure enableAll(val: Boolean);
    function DateTimeToRtrUs(dt:TDateTime):String;
    procedure overheadClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DMADS, Math, StrUtils;

{$R *.dfm}

procedure TForm1.enableAll(val:Boolean);
begin
INA1.Enabled := VAL;
INA2.Enabled := VAL;
INA3.Enabled := VAL;
INA4.Enabled := VAL;
INA5.Enabled := VAL;
INA6.Enabled := VAL;

INCREATE.Enabled := VAL;
INSELECT.Enabled := VAL;
INUPDATE.Enabled := VAL;

INREPEAT.Enabled :=VAL;
overhead.Enabled :=val;
start.Enabled:=val;
end;

function TForm1.DateTimeToRtrUs(dt: TDatetime): string;
var
  us:string;
begin
  Result := FormatDateTime('ss."',dt);//yyyy mm dd hh:nn:

  dt:= Frac(dt);
  dt := dt * 24 * 60*60;
  us :=IntToStr(Round(Frac(dt)*1000000));

  Result:= Result + StringofChar('0',6-Length(us)) + us;
end;

procedure TForm1.tableInsert(A0:Integer;A1:Integer;A2:Real;A3:String;A4:String;A5:String;A6:String);
begin
    with DataModule1 do
    begin
        maintable.Insert;
        maintableA0.Value:=A0;
        maintableA1.Value:=A1;
        maintableA2.Value:=A2;
        maintableA3.Value:=A3;
        maintableA4.Value:=A4;
        maintableA5.Value:=StrToTime(A5);
        maintableA6.Value:=StrToDate(A6);
        maintable.Post;
    end;
end;

procedure TForm1.tableSelect(A0:Integer);
begin
    DataModule1.maintable.Locate('A0',A0,[]);
end;

procedure TForm1.tableUpdate(A0:Integer;A1:Integer;A2:Real;A3:String;A4:String;A5:String;A6:String);
begin
    with DataModule1 do
    begin
        if maintable.Locate('A0',A0,[]) then
        begin
            maintable.Edit;
            maintableA1.Value:=A1;
            maintableA2.Value:=A2;
            maintableA3.Value:=A3;
            maintableA4.Value:=A4;
            maintableA5.Value:=StrToTime(A5);
            maintableA6.Value:=StrToDate(A6);
            maintable.Post;
        end;
    end;
end;

procedure TForm1.tableDelete(A0:Integer);
begin
    with DataModule1.maintable do
        if Locate('A0',A0,[]) then
            Delete;
end;

function TForm1.dpformul(sum:TDateTime; sqr:TDateTime; qtd:Integer): TDateTime;
begin
   Result := sqrt((sqr  - sum * sum / qtd)/qtd);
end;

procedure Tform1.startClick(Sender: TObject);
var
    R:Integer;
    BC:Integer;
    BS:Integer;
    BU:Integer;
    BD:Integer;
    c:Integer;
    rcounter:Integer;
    A1: Integer;
    A2: Real;
    A3: String;
    A4: String;
    A5: String;
    A6: String;
    step1: Real;
    step2: Real;
    pr1: Real;
    pr2: Real;
    totaltime: TDateTime;
    createTime: TDateTime;
    createTimeSum: TDateTime;
    createTimeSqr: TDateTime;
    selectTime: TDateTime;
    selectTimeSum: TDateTime;
    selectTimeSqr: TDateTime;
    updateTime: TDateTime;
    updateTimeSum: TDateTime;
    updateTimeSqr: TDateTime;
    deleteTime: TDateTime;
    deleteTimeSum: TDateTime;
    deleteTimeSqr: TDateTime;
begin
    self.enableAll(False);

    //Media
    ttCreateMedia.Caption := '-';
    ttSelectMedia.Caption := '-';
    ttUpdateMedia.Caption := '-';
    ttDeleteMedia.Caption := '-';

    //Desvio Padrao
    ttCreateDP.Caption := '-';
    ttSelectDP.Caption := '-';
    ttUpdateDP.Caption := '-';
    ttDeleteDP.Caption := '-';

    totaltime:=0;
    createTime:=0;
    createTimeSum:=0;
    createTimeSqr:=0;
    selectTime:=0;
    selectTimeSum:=0;
    selectTimeSqr:=0;
    updateTime:=0;
    updateTimeSum:=0;
    updateTimeSqr:=0;
    deleteTime:=0;
    deleteTimeSum:=0;
    deleteTimeSqr:=0;

    totaltime := Now;

    A1 := StrToInt(INA1.text);
    A2 := StrToFloat(INA2.text);
    A3 := INA3.text;
    A4 := INA4.text;
    A5 := INA5.text;
    A6 := INA6.text;
    R :=StrToInt(INREPEAT.text);


            BC := StrToInt(increate.text);
            if BC < 10 then
            begin
                bc :=10;
                INCREATE.text := InttoStr(10);
            end;

                BS := StrToInt(inselect.text);

                if Bs < 10 then
                begin
                    bs :=10;
                    INSelect.text := InttoStr(10);
                end;

                BU := StrToInt(inupdate.text);

                if Bu < 10 then
                begin
                    bu :=10;
                    INUpdate.text := InttoStr(10);
                end;

                BD := BC;

            step2 := 1.0/(BC + Bs + Bu + Bd);
            step1 := (1.0/R) * step2;

            step2 := step2 * 100;
            step1 := step1 * 100;


    progress1.Progress :=0;
    pr1:= 0.0;

    for rcounter:=1 to R do
    begin
        progress2.Position :=0;
        pr2:= 0.0;

        //Create block
        createTime := now;
        for c:=0 to bc-1 do
        begin
          if not DataModule1.maintable.Locate('A0',c,[]) then
            self.tableInsert(c, A1, A2, A3, A4, A5, A6);
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        createTime := now - createTime;
        createTimeSum := createTimeSum+ createTime;
        createTimeSqr := createTimeSqr+createTime*createTime;

        // Select Block
        selectTime := now;
        for c:=0 to BS-1 do
        begin
          self.tableSelect(c mod bc);
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        selectTime := now - selectTime;
        selectTimeSum := selectTimeSum+ selectTime;
        selectTimeSqr := selectTimeSqr+ selectTime*selectTime;

        //Update block
        updateTime := now;
        for c:=0 to BU-1 do
        begin
          self.tableUpdate(c mod bc, A1, A2, A3, A4, A5, A6);
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        updateTime := now - updateTime;
        updateTimeSum := updateTimeSum+ updateTime;
        updateTimeSqr := updateTimeSqr+updateTime*updateTime;

        //Delete Block
        deleteTime := now;
        for c:=0 to Bd-1 do
        begin
          self.tableDelete(c mod bc);
          //ShowMessage('Delete! ' +IntToStr(c));
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        deleteTime := now - deleteTime;
        deleteTimeSum := deleteTimeSum+ deleteTime;
        deleteTimeSqr := deleteTimeSqr+ deleteTime*deleteTime;
    end;

    totaltime :=  now - totaltime;


    //Media
    ttCreateMedia.Caption := DateTimeToRtrUs(
      (createTimeSum + createTime)/(R * BC)
    );

    ttSelectMedia.Caption := DateTimeToRtrUs(
      (selectTimeSum + selectTime)/(R * BS)
    );

    ttUpdateMedia.Caption := DateTimeToRtrUs(
      (updateTimeSum + updateTime)/(R * BU)
    );

    ttDeleteMedia.Caption := DateTimeToRtrUs(
      (deleteTimeSum + deleteTime)/(R * BD)
    );

    //Desvio Padrao
    ttCreateDP.Caption := DateTimeToRtrUs(
       dpformul(createTimeSum,createTimeSqr,R*BC)
    );
    ttSelectDP.Caption := DateTimeToRtrUs(
       dpformul(selectTimeSum,selectTimeSqr,R*BS)
    );
    ttUpdateDP.Caption := DateTimeToRtrUs(
      dpformul(updateTimeSum,updateTimeSqr,R*BU)
    );
    ttDeleteDP.Caption := DateTimeToRtrUs(
      dpformul(deleteTimeSum,deleteTimeSqr,R*BD)
    );


    ShowMessage('Duração da avaliação: '+ DateTimeToRtrUs(totaltime)+'s');
    self.enableAll(True);
end;

procedure TForm1.overheadClick(Sender: TObject);
var
    R:Integer;
    BC:Integer;
    BS:Integer;
    BU:Integer;
    BD:Integer;
    c:Integer;
    rcounter:Integer;
    A1: Integer;
    A2: Real;
    A3: String;
    A4: String;
    A5: String;
    A6: String;
    step1: Real;
    step2: Real;
    pr1: Real;
    pr2: Real;
    totaltime: TDateTime;
    createTime: TDateTime;
    createTimeSum: TDateTime;
    createTimeSqr: TDateTime;
    selectTime: TDateTime;
    selectTimeSum: TDateTime;
    selectTimeSqr: TDateTime;
    updateTime: TDateTime;
    updateTimeSum: TDateTime;
    updateTimeSqr: TDateTime;
    deleteTime: TDateTime;
    deleteTimeSum: TDateTime;
    deleteTimeSqr: TDateTime;
begin
    self.enableAll(False);

    //Media
    ohCreateMedia.Caption := '-';
    ohSelectMedia.Caption := '-';
    ohUpdateMedia.Caption := '-';
    ohDeleteMedia.Caption := '-';

    //Desvio Padrao
    ohCreateDP.Caption := '-';
    ohSelectDP.Caption := '-';
    ohUpdateDP.Caption := '-';
    ohDeleteDP.Caption := '-';

    totaltime:=0;
    createTime:=0;
    createTimeSum:=0;
    createTimeSqr:=0;
    selectTime:=0;
    selectTimeSum:=0;
    selectTimeSqr:=0;
    updateTime:=0;
    updateTimeSum:=0;
    updateTimeSqr:=0;
    deleteTime:=0;
    deleteTimeSum:=0;
    deleteTimeSqr:=0;

    totaltime := Now;

    A1 := StrToInt(INA1.text);
    A2 := StrToFloat(INA2.text);
    A3 := INA3.text;
    A4 := INA4.text;
    A5 := INA5.text;
    A6 := INA6.text;
    R :=StrToInt(INREPEAT.text);


            BC := StrToInt(increate.text);
            if BC < 10 then
            begin
                bc :=10;
                INCREATE.text := InttoStr(10);
            end;

                BS := StrToInt(inselect.text);

                if Bs < 10 then
                begin
                    bs :=10;
                    INSelect.text := InttoStr(10);
                end;

                BU := StrToInt(inupdate.text);

                if Bu < 10 then
                begin
                    bu :=10;
                    INUpdate.text := InttoStr(10);
                end;

                BD := BC;

            step2 := 1.0/(BC + Bs + Bu + Bd);
            step1 := (1.0/R) * step2;

            step2 := step2 * 100;
            step1 := step1 * 100;


    progress1.Progress :=0;
    pr1:= 0.0;

    for rcounter:=1 to R do
    begin
        progress2.Position :=0;
        pr2:= 0.0;

        //Create block
        createTime := now;
        for c:=0 to bc-1 do
        begin
          //if not DataModule1.maintable.Locate('A0',c,[]) then
            //self.tableInsert(c, A1, A2, A3, A4, A5, A6);
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        createTime := now - createTime;
        createTimeSum := createTimeSum+ createTime;
        createTimeSqr := createTimeSqr+createTime*createTime;

        // Select Block
        selectTime := now;
        for c:=0 to BS-1 do
        begin
          //self.tableSelect(c mod bc);
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        selectTime := now - selectTime;
        selectTimeSum := selectTimeSum+ selectTime;
        selectTimeSqr := selectTimeSqr+ selectTime*selectTime;

        //Update block
        updateTime := now;
        for c:=0 to BU-1 do
        begin
          //self.tableUpdate(c mod bc, A1, A2, A3, A4, A5, A6);
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        updateTime := now - updateTime;
        updateTimeSum := updateTimeSum+ updateTime;
        updateTimeSqr := updateTimeSqr+updateTime*updateTime;

        //Delete Block
        deleteTime := now;
        for c:=0 to Bd-1 do
        begin
          //self.tableDelete(c mod bc);
          //ShowMessage('Delete! ' +IntToStr(c));
          pr1:= pr1 + step1;
          pr2:= pr2 + step2;
          progress1.Progress := Ceil(pr1);
          progress2.Position := Ceil(pr2);
        end;
        deleteTime := now - deleteTime;
        deleteTimeSum := deleteTimeSum+ deleteTime;
        deleteTimeSqr := deleteTimeSqr+ deleteTime*deleteTime;
    end;

    totaltime :=  now - totaltime;


    //Media
    ohCreateMedia.Caption := DateTimeToRtrUs(
      (createTimeSum + createTime)/(R * BC)
    );

    ohSelectMedia.Caption := DateTimeToRtrUs(
      (selectTimeSum + selectTime)/(R * BS)
    );

    ohUpdateMedia.Caption := DateTimeToRtrUs(
      (updateTimeSum + updateTime)/(R * BU)
    );

    ohDeleteMedia.Caption := DateTimeToRtrUs(
      (deleteTimeSum + deleteTime)/(R * BD)
    );

    //Desvio Padrao
    ohCreateDP.Caption := DateTimeToRtrUs(
       dpformul(createTimeSum,createTimeSqr,R*BC)
    );
    ohSelectDP.Caption := DateTimeToRtrUs(
       dpformul(selectTimeSum,selectTimeSqr,R*BS)
    );
    ohUpdateDP.Caption := DateTimeToRtrUs(
      dpformul(updateTimeSum,updateTimeSqr,R*BU)
    );
    ohDeleteDP.Caption := DateTimeToRtrUs(
      dpformul(deleteTimeSum,deleteTimeSqr,R*BD)
    );


    ShowMessage('Duração da avaliação: '+ DateTimeToRtrUs(totaltime)+'s');
    self.enableAll(True);
end;

end.
