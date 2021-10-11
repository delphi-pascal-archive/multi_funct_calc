program CalcPro;

uses
  Forms,
  unCalc in 'unCalc.pas' {frmCal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCal, frmCal);
  Application.Run;
end.
