unit unCalc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmCal = class(TForm)
    pnlMolduraVisor: TPanel;
    pnlVisorPrin: TPanel;
    pnlTipOP: TPanel;
    pnlModo: TPanel;
    pnlRadGrau: TPanel;
    pnlOper: TPanel;
    pnlErro: TPanel;
    pnlVisor: TPanel;
    iconeDisp: TPanel;
    linha1: TShape;
    linha2: TShape;
    pnlOperan1: TPanel;
    pnlOperan2: TPanel;
    pnlOperan3: TPanel;
    pnlOperan4: TPanel;
    pnlOperan5: TPanel;
    pnlOperan6: TPanel;
    pnlOperan7: TPanel;
    pnlOperan8: TPanel;
    pnlOperan9: TPanel;
    pnlOperan10: TPanel;
    pnlOperan11: TPanel;
    pnlOperan12: TPanel;
    pnlVal1: TPanel;
    pnlVal2: TPanel;
    pnlVal3: TPanel;
    pnlVal4: TPanel;
    pnlVal5: TPanel;
    pnlVal6: TPanel;
    pnlVal7: TPanel;
    pnlVal8: TPanel;
    pnlVal9: TPanel;
    pnlVal10: TPanel;
    pnlVal11: TPanel;
    pnlVal12: TPanel;
    gboxCf: TGroupBox;
    gboxMemo: TGroupBox;
    gboxCM: TGroupBox;
    gboxVr: TGroupBox;
    gboxArt: TGroupBox;
    gboxModo: TGroupBox;
    btnSIN: TSpeedButton;
    btnSQR: TSpeedButton;
    btnCOS: TSpeedButton;
    btnx2: TSpeedButton;
    btnx3: TSpeedButton;
    btn1x: TSpeedButton;
    btnFat: TSpeedButton;
    btnTAN: TSpeedButton;
    btnPI: TSpeedButton;
    btnPer: TSpeedButton;
    btnRadgrau: TSpeedButton;
    btnLimpar: TSpeedButton;
    btnSinal: TSpeedButton;
    btnMC: TSpeedButton;
    btnMT: TSpeedButton;
    btnMS: TSpeedButton;
    btnMMais: TSpeedButton;
    btn7: TSpeedButton;
    btn8: TSpeedButton;
    btn9: TSpeedButton;
    btnDiv: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    btn6: TSpeedButton;
    btnMult: TSpeedButton;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btnMenos: TSpeedButton;
    btn0: TSpeedButton;
    btnMais: TSpeedButton;
    btnIgual: TSpeedButton;
    btnPonto: TSpeedButton;
    btnQL: TSpeedButton;
    btnMQ: TSpeedButton;
    btnGL: TSpeedButton;
    btnLG: TSpeedButton;
    btnFC: TSpeedButton;
    btnCF: TSpeedButton;
    btnQM: TSpeedButton;
    btnLQ: TSpeedButton;
    btnCorrigir: TSpeedButton;
    btnDiaSem: TSpeedButton;
    btnCNPJ: TSpeedButton;
    btnCPF: TSpeedButton;
    btnPF: TSpeedButton;
    btn2c: TSpeedButton;
    btn4c: TSpeedButton;
    btnRetrair: TSpeedButton;
    btnExpandir: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure btnExpandirClick(Sender: TObject);
    procedure btnRetrairClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnDiaSemClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPontoClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnSQRClick(Sender: TObject);
    procedure btnx2Click(Sender: TObject);
    procedure btnx3Click(Sender: TObject);
    procedure btn1xClick(Sender: TObject);
    procedure btnSINClick(Sender: TObject);
    procedure btnCOSClick(Sender: TObject);
    procedure btnTANClick(Sender: TObject);
    procedure btnRadgrauClick(Sender: TObject);
    procedure btnPIClick(Sender: TObject);
    procedure btnSinalClick(Sender: TObject);
    procedure btnCorrigirClick(Sender: TObject);
    procedure btnPerClick(Sender: TObject);
    procedure btnQMClick(Sender: TObject);
    procedure btnMQClick(Sender: TObject);
    procedure btnLGClick(Sender: TObject);
    procedure btnGLClick(Sender: TObject);
    procedure btnCFClick(Sender: TObject);
    procedure btnFCClick(Sender: TObject);
    procedure btnQLClick(Sender: TObject);
    procedure btnLQClick(Sender: TObject);
    procedure btnFatClick(Sender: TObject);
    procedure btnMSClick(Sender: TObject);
    procedure btnMCClick(Sender: TObject);
    procedure btnMTClick(Sender: TObject);
    procedure btnMMaisClick(Sender: TObject);
    procedure btn2cClick(Sender: TObject);
    procedure btn4cClick(Sender: TObject);
    procedure btnPFClick(Sender: TObject);
    procedure btnCPFClick(Sender: TObject);
    procedure btnCNPJClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCal: TfrmCal;
  {Variaveis de visualização}
    visor: string;
    menErro: string;
    Oper: string;
    modo: string;
    tipOp: string;
    operad: string;
    uniMedida: string;

  {Variaveis de Calculo}
    valDigitado: real;
    valResultado: real;
    valMemoria: real;

  {Variáveis de Controle}
    operacao: Integer;
    finalizar: Boolean;
    iniCalc: Boolean;
    cMemoria: Boolean;
    cOperad: Boolean;
    casaDec: string;

implementation


{$R *.dfm}

procedure TfrmCal.FormActivate(Sender: TObject);
begin
  // frmCal.Height := 351;
  {define o valor inicial das variaveis}
  visor := '0,';
  tipOp := 'CALC';
  modo  := 'FLUTUANTE';
  oper  := '';
  menErro := 'ON';
  operad  := '';
  uniMedida:= 'GRAU';
  casaDec:= 'F';

  {altera a propriedade caption com os valores contidos nas variáveis}
  pnlVisor.Caption := visor;
  pnlTipOp.Caption := tipOp;
  pnlModo.Caption := modo;
  pnlOper.Caption := oper;
  pnlErro.Caption := menErro;

  {altera a propriedade caption dos operadores que exibem os
  valores acumulados para seu valor inicial.}
  pnlOperan1.Caption := Operad;
  pnlOperan2.Caption := Operad;
  pnlOperan3.Caption := Operad;
  pnlOperan4.Caption := Operad;
  pnlOperan5.Caption := Operad;
  pnlOperan6.Caption := Operad;
  pnlOperan7.Caption := Operad;
  pnlOperan8.Caption := Operad;
  pnlOperan9.Caption := Operad;
  pnlOperan10.Caption := Operad;
  pnlOperan11.Caption := Operad;
  pnlOperan12.Caption := Operad;

  {altera a propriedade caption dos operandos que exibem os
  valores acumulados para seu valor inicial}
  pnlOperan1.Caption := '';
  pnlOperan2.Caption := '';
  pnlOperan3.Caption := '';
  pnlOperan4.Caption := '';
  pnlOperan5.Caption := '';
  pnlOperan6.Caption := '';
  pnlOperan7.Caption := '';
  pnlOperan8.Caption := '';
  pnlOperan9.Caption := '';
  pnlOperan10.Caption := '';
  pnlOperan11.Caption := '';
  pnlOperan12.Caption := '';
end;

function cpf(num: string): boolean;
var
  n: array[1..11] of integer;
  dgt1, dgt2: integer;
  soma1, soma2: integer;
begin
  n[1]:= StrToInt(num[1]);
  n[2]:= StrToInt(num[2]);
  n[3]:= StrToInt(num[3]);
  n[4]:= StrToInt(num[4]);
  n[5]:= StrToInt(num[5]);
  n[6]:= StrToInt(num[6]);
  n[7]:= StrToInt(num[7]);
  n[8]:= StrToInt(num[8]);
  n[9]:= StrToInt(num[9]);
  n[10]:= StrToInt(num[10]);
  n[11]:= StrToInt(num[11]);

  soma1:= (n[1] * 10) + (n[2] * 9) + (n[3] * 8) + (n[4] * 7) + (n[5] * 6) +
  (n[6] * 5) + (n[7] * 4) + (n[8] * 3) + (n[9] * 2);

  dgt1:= 11 - (soma1 mod 11);

  if (dgt1 = 10) or (dgt1 = 11) then
    dgt1:= 0;

  soma2:= (n[1] * 11) + (n[2] * 10) + (n[3] * 9) + (n[4] * 8) + (n[5] * 7) +
  (n[6] * 6) + (n[7] * 5) + (n[8] * 4) + (n[9] * 3) + (dgt1 * 2);

  dgt2:= 11 - (soma2 mod 11);

  if (dgt2 = 10) or (dgt2 = 11) then
    dgt2:= 0;

  if (dgt1 <> n[10]) or (dgt2 <> n[11]) then
    cpf:= false
  else
    cpf:= true;
end;

function cnpj(num: string): boolean;
var
  n: array[1..14] of integer;
  dgt1, dgt2: integer;
  soma1, soma2: integer;
begin
  n[1]:= StrToInt(num[1]);
  n[2]:= StrToInt(num[2]);
  n[3]:= StrToInt(num[3]);
  n[4]:= StrToInt(num[4]);
  n[5]:= StrToInt(num[5]);
  n[6]:= StrToInt(num[6]);
  n[7]:= StrToInt(num[7]);
  n[8]:= StrToInt(num[8]);
  n[9]:= StrToInt(num[9]);
  n[10]:= StrToInt(num[10]);
  n[11]:= StrToInt(num[11]);
  n[12]:= StrToInt(num[12]);
  n[13]:= StrToInt(num[13]);
  n[14]:= StrToInt(num[14]);

  soma1:= (n[1] * 5) + (n[2] * 4) + (n[3] * 3) + (n[4] * 2) + (n[5] * 9) +
  (n[6] * 8) + (n[7] * 7) + (n[8] * 6) + (n[9] * 5) + (n[10] * 4) + (n[11] * 3) + (n[12] * 2);
  dgt1:= 11 - (soma1 mod 11);

  if (dgt1 = 10) or (dgt1 = 11) then
    dgt1:= 0;

  soma2:= (n[1] * 6) + (n[2] * 5) + (n[3] * 4) + (n[4] * 3) + (n[5] * 2) +
  (n[6] * 9) + (n[7] * 8) + (n[8] * 7) + (n[9] * 6) + (n[10] * 5) + (n[11] * 4) + (n[12] * 3) + (dgt1 * 2);
  dgt2:= 11 - (soma2 mod 11);

  if (dgt2 = 10) or (dgt2 = 11) then
    dgt2:= 0;

  if (dgt1 <> n[13]) or (dgt2 <> n[14]) then
    cnpj:= false
  else
    cnpj:= true;
end;

{Definição no formato de exibição do display}
procedure formato;
begin
  if (casaDec = 'F') then
    begin
      visor:= formatFloat('0.##########', valResultado);
      modo:= 'FLUTUANTE';
    end;
  if (casaDec = '2') then
    begin
      visor:= formatFloat('#,##0.00', valResultado);
      modo:= ',00';
    end;
  if (casaDec = '4') then
    begin
      visor:= formatFloat('#,####0.0000', valResultado);
      modo:= ',0000';
    end;
end;


procedure TfrmCal.btnExpandirClick(Sender: TObject);
begin
  frmCal.Height := 575;
  gboxCM.Visible := True;
end;

procedure TfrmCal.btnRetrairClick(Sender: TObject);
begin
  frmCal.Height := 418;
  gboxCM.Visible := False;
end;

procedure TfrmCal.btn5Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '5';
  pnlVisor.caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn7Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '7';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn8Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '8';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn9Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '9';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn0Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '0';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn1Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '1';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn2Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '2';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn3Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '3';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn4Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '4';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btn6Click(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '6';
  pnlVisor.Caption := visor;
  finalizar := false;
end;

procedure TfrmCal.btnLimparClick(Sender: TObject);
begin
  if (visor = '0,') or (visor = '0') then
    visor := '';

  pnlOperan1.Caption:= '';
  pnlOperan2.Caption:= '';
  pnlOperan3.Caption:= '';
  pnlOperan4.Caption:= '';
  pnlOperan5.Caption:= '';
  pnlOperan6.Caption:= '';
  pnlOperan7.Caption:= '';
  pnlOperan8.Caption:= '';
  pnlOperan9.Caption:= '';
  pnlOperan10.Caption:= '';
  pnlOperan11.Caption:= '';
  pnlOperan12.Caption:= '';

  pnlVal1.Caption:= '';
  pnlVal2.Caption:= '';
  pnlVal3.Caption:= '';
  pnlVal4.Caption:= '';
  pnlVal5.Caption:= '';
  pnlVal6.Caption:= '';
  pnlVal7.Caption:= '';
  pnlVal8.Caption:= '';
  pnlVal9.Caption:= '';
  pnlVal10.Caption:= '';
  pnlVal11.Caption:= '';
  pnlVal12.Caption:= '';
  visor := '0,';
  pnlVisor.Caption := visor;
  valDigitado := 0;
  valResultado := 0;
  operacao := 0;
  iniCalc := true;
  menErro := 'ON';
  oper := '';
  pnlErro.Caption := menErro;
  pnlOper.Caption := oper;

  btn2c.Font.Style:= [fsBold];
  btn2c.Font.Color:= clBlack;

  btn4c.Font.Style:= [fsBold];
  btn4c.Font.Color:= clBlack;

  btnPF.Font.Style:= [fsBold];
  btnPF.Font.Color:= clBlack;

  visor := formatFloat('0.##########', valResultado);
  casaDec:= 'F';
  modo:= 'FLUTUANTE';
  btnPonto.Enabled:= true;
end;

procedure TfrmCal.btnDiaSemClick(Sender: TObject);
var
  diaSemana: array[1..7] of string;
  numDia: integer;
begin
  diaSemana[1] := 'Domingo';
  diaSemana[2] := 'Segunda-Feira';
  diaSemana[3] := 'Terça-Feira';
  diaSemana[4] := 'Quarta-Feira';
  diaSemana[5] := 'Quinta-Feira';
  diaSemana[6] := 'Sexta-Feira';
  diaSemana[7] := 'Sábado';
  numDia := DayOfWeek(date);
  MessageDlg('Hoje é ' + chr(13) + diaSemana [numDia], mtInformation, [mbOk], 0);
end;

procedure TfrmCal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {Condficoes para o uso do Teclado Numérico na Calculadora}
  if (Key = VK_NUMPAD0) then
    btn0.Click;

  if (Key = VK_NUMPAD1) then
    btn1.Click;

  if (Key = VK_NUMPAD2) then
    btn2.Click;

  if (Key = VK_NUMPAD3) then
    btn3.Click;

  if (Key = VK_NUMPAD4) then
    btn4.Click;

  if (Key = VK_NUMPAD5) then
    btn5.Click;

  if (Key = VK_NUMPAD6) then
    btn6.Click;

  if (Key = VK_NUMPAD7) then
    btn7.Click;

  if (Key = VK_NUMPAD8) then
    btn8.Click;

  if (Key = VK_NUMPAD9) then
    btn9.Click;

  if (Key = 48) then
    btn0.Click;
  if (Key = 49) then
    btn1.Click;
  if (Key = 50) then
    btn2.Click;
  if (Key = 51) then
    btn3.Click;
  if (Key = 52) then
    btn4.Click;
  if (Key = 53) then
    btn5.Click;
  if (Key = 54) then
    btn6.Click;
  if (Key = 55) then
    btn7.Click;
  if (Key = 56) then
    btn8.Click;
  if (Key = 57) then
    btn9.Click;

  if (Key = VK_DIVIDE) then
    btnDiv.Click;
  if (Key = VK_MULTIPLY) then
    btnMult.Click;
  if (Key = VK_SUBTRACT) then
    btnMenos.Click;
  if (Key = VK_ADD) then
    btnMais.Click;
  if (Key = VK_RETURN) then
    btnIgual.Click;
  if (btnPonto.Enabled = true) then
    begin
      if (Key = VK_DECIMAL) then
        btnPonto.Click;
    end;
end;

procedure TfrmCal.btnPontoClick(Sender: TObject);
begin
  if (finalizar = true) or (visor = '0,') or (visor = '0') then
    visor := '';
  visor := visor + '.';
  pnlVisor.Caption := visor;
  btnPonto.Enabled := false;
  finalizar := false;
end;

procedure TfrmCal.btnMaisClick(Sender: TObject);
begin
  operad:= '+';
  operacao := 1;
  btnIgual.Click;
end;

procedure TfrmCal.btnIgualClick(Sender: TObject);
var
  codigo: integer;
begin
  val(visor, valDigitado, codigo);
  if (finalizar = false) then
    begin
      case operacao of
        {soma}
        1: begin
          valResultado := valResultado + valDigitado;
          iniCalc := true;
        end;
        {Subtracao}
        2: begin
          if (iniCalc = false) then
            begin
              valResultado := valDigitado - valResultado;
              iniCalc := true;
            end
          else
            valResultado := valResultado - valDigitado;
          end;
        {Multiplicação}
        3: begin
          if (iniCalc = false) then
            begin
              valResultado := valDigitado * 1;
              iniCalc := true;
            end
          else
            valResultado := valResultado * valDigitado;
          end;
        {Divisão}
        4: begin
          if (iniCalc = false) then
            begin
              valResultado := valDigitado / 1;
              iniCalc := true;
            end
          else
            if (valDigitado <> 0) then
              valResultado := valResultado / valDigitado
            else
              begin
                beep;
                menErro := 'ERRO';
                oper := ' DIVISÃO POR ZERO ';
                valResultado := 0;
              end;
          end;
    end;
    pnlVal12.Caption:= pnlVal11.Caption;
    pnlVal11.Caption:= pnlVal10.Caption;
    pnlVal10.Caption:= pnlVal9.Caption;
    pnlVal9.Caption:= pnlVal8.Caption;
    pnlVal8.Caption:= pnlVal7.Caption;
    pnlVal7.Caption:= pnlVal6.Caption;
    pnlVal6.Caption:= pnlVal5.Caption;
    pnlVal5.Caption:= pnlVal4.Caption;
    pnlVal4.Caption:= pnlVal3.Caption;
    pnlVal3.Caption:= pnlVal2.Caption;
    pnlVal2.Caption:= pnlVal1.Caption;
    pnlVal1.Caption:= visor;

    pnlOperan12.Caption:= pnlOperan11.Caption;
    pnlOperan11.Caption:= pnlOperan10.Caption;
    pnlOperan10.Caption:= pnlOperan9.Caption;
    pnlOperan9.Caption:= pnlOperan8.Caption;
    pnlOperan8.Caption:= pnlOperan7.Caption;
    pnlOperan7.Caption:= pnlOperan6.Caption;
    pnlOperan6.Caption:= pnlOperan5.Caption;
    pnlOperan5.Caption:= pnlOperan4.Caption;
    pnlOperan4.Caption:= pnlOperan3.Caption;
    pnlOperan3.Caption:= pnlOperan2.Caption;
    pnlOperan2.Caption:= pnlOperan1.Caption;
    pnlOperan1.Caption:= operad;
  end;
  //visor := formatFloat('0.##########', valResultado);
  formato;
  pnlModo.Caption:= modo;
  pnlModo.Caption:= Modo;
  pnlVisor.caption := visor;
  btnPonto.enabled := true;
  finalizar := true;
  pnlErro.Caption := menErro;
  pnlOper.Caption := oper;
end;

procedure TfrmCal.btnMenosClick(Sender: TObject);
begin
  operad:= '-';
  operacao := 2;
  btnIgual.Click;
end;

procedure TfrmCal.btnMultClick(Sender: TObject);
begin
  operad:= 'x';
  operacao:= 3;
  btnIgual.Click;
end;

procedure TfrmCal.btnDivClick(Sender: TObject);
begin
  {Para usara o símbolo de divisão ÷ ao invés de /, digite "ALT + 0247"}
  operad:= '÷';
  operacao := 4;
  btnIgual.Click;
end;

procedure TfrmCal.btnSQRClick(Sender: TObject);
var
  codigo: integer;
begin
  operad:= 'SRQ';
  finalizar := false;
  operacao := 0;
  val(visor, valDigitado, codigo);
  iniCalc := true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  if (valResultado >= 0) then
    valResultado:= sqrt(valResultado);

  if (valResultado < 0) then
    begin
      beep;
      menErro := 'ERRO';
      oper := 'RAIZ DE NÚMERO NEGATIVO';
    end;
  btnIgual.Click;
end;

procedure TfrmCal.btnx2Click(Sender: TObject);
var
  codigo: Integer;
begin
  operad:= 'x2';
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;
  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  if (valResultado > 1E155) then //Verifica se houve estouro da variável.
    begin
      beep;
      menErro:= 'ERRO';
      oper:= 'ESTOURO DA CAPACIDADE';
    end
  else
    valResultado:= SQR(valDigitado);
  btnIgual.Click;
end;

procedure TfrmCal.btnx3Click(Sender: TObject);
var
  codigo: Integer;
begin
  operad:= 'x3';
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;
  if (valResultado = 0) then
    valResultado:= valDigitado * 1;
  valResultado:= SQR(valResultado) * valResultado;
  btnIgual.Click;
end;

procedure TfrmCal.btn1xClick(Sender: TObject);
var
  codigo: Integer;
begin
  operad:= '1/x';
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;
  if (valResultado = 0) then
    valResultado:= valDigitado * 1;
  valResultado:= 1/valResultado;
  btnIgual.Click;
end;

procedure TfrmCal.btnSINClick(Sender: TObject);
var
  codigo: Integer;
  convgrau: real;
begin
  operad:= 'SIN';
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  if (uniMedida = 'RAD') then
    valResultado:= sin(ValResultado);

  if (uniMedida = 'GRAU') then
    begin
      convgrau:= valResultado * 3.141592653589 / 180;
      valResultado:= sin(convgrau);
    end;
  btnIgual.Click;
end;

procedure TfrmCal.btnCOSClick(Sender: TObject);
var
  codigo: Integer;
  convGrau: Real;
begin
  operad:= 'COS';
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= Valdigitado * 1;

  if (uniMedida = 'RAD') then
    valResultado:= cos(valResultado);

  if (uniMedida = 'GRAU') then
    begin
      convGrau:= valResultado * 3.141592653589 / 180;
      valResultado:= cos(convGrau);
    end;
  btnIgual.Click;
end;

procedure TfrmCal.btnTANClick(Sender: TObject);
var
  codigo: Integer;
  convGrau: Real;
begin
  operad:= 'TAN';
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= Valdigitado * 1;

  if (uniMedida = 'RAD') then
    valResultado:= sin(valResultado);

  if (uniMedida = 'GRAU') then
    begin
      convGrau:= valResultado * 3.141592653589 / 180;
      valResultado:= sin(convGrau);
    end;
  btnIgual.Click;
end;

procedure TfrmCal.btnRadgrauClick(Sender: TObject);
begin
  if (uniMedida = 'GRAU') then
    begin
      btnRadGrau.caption:= 'GRAUS';
      uniMedida:= 'RAD';
      pnlRadGrau.Caption:= 'RADIANO';
    end
  else
    begin
      btnRadGrau.Caption:= 'RADIANOS';
      uniMedida:= 'GRAU';
      pnlRadGrau.Caption:= 'GRAU';
    end;
end;

procedure TfrmCal.btnPIClick(Sender: TObject);
begin
  operad:= 'PI';
  if (finalizar = true) or (visor = '0') then
    visor:= '';
  visor:= '3.1415926535';
  pnlVisor.caption:= visor;
  finalizar:= false;
end;

procedure TfrmCal.btnSinalClick(Sender: TObject);
var
  codigo: Integer;
begin
  val(visor, valDigitado, codigo);
  iniCalc:= true;
  if (valResultado = 0) then
    valResultado:= valDigitado * 1;
  valResultado:= valResultado * -1;
  btnIgual.Click;
end;

procedure TfrmCal.btnCorrigirClick(Sender: TObject);
begin
  valDigitado:= 0;
  visor:= '0,';
  pnlVisor.Caption:= visor;
  btnPonto.Enabled:= true;
end;

procedure TfrmCal.btnPerClick(Sender: TObject);
var
  codigo: Integer;
begin
  operad:= '%';
  val(visor, valDigitado, codigo);
  if (finalizar = false) then
    case operacao of

      //soma
      1: begin
        valResultado:= valResultado + (valDigitado * valResultado / 100);
        iniCalc:= true;
      end;

      //sutracao
      2: begin
        if (iniCalc = false) then
          begin
            valResultado:= valDigitado - valResultado;
            iniCalc:= true;
          end
        else
          valResultado:= valResultado - (valDigitado * valResultado / 100);
        end;

        //Multiplicacao
        3: begin
          if (iniCalc = false) then
            begin
              valResultado:= valDigitado * 1;
              iniCalc:= true;
            end
          else
            valResultado:= valResultado * (valDigitado * valResultado / 100);
        end;

        //Divisao
        4: begin
          if (iniCalc = false) then
            begin
              valResultado:= valDigitado / 1;
              iniCalc:= true;
            end
          else
            if (valDigitado <> 0) then
              valResultado:= valResultado / (valDigitado * valResultado / 100)
            else
              begin
                beep;
                menErro:= 'ERRO';
                oper:= 'DIVISÃO POR ZERO';
              end;
        end;
    end;
  finalizar:= true;
  btnIgual.click;
end;

procedure TfrmCal.btnQMClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= 0.6213711922 * valResultado;
  btnIgual.Click;
end;

procedure TfrmCal.btnMQClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= (1/0.6213711922) * valResultado;
  btnIgual.Click;
end;

procedure TfrmCal.btnLGClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= 0.2641720524 * valResultado;
  btnIgual.Click;
end;

procedure TfrmCal.btnGLClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= (1 / 0.2641720524) * valResultado;
  btnIgual.Click;
end;

procedure TfrmCal.btnCFClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= (valResultado * 9/5) + 32;
  btnIgual.Click;
end;

procedure TfrmCal.btnFCClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= (valResultado - 32) * 5/9;
  btnIgual.Click;
end;
procedure TfrmCal.btnQLClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= 2.204622622 * valResultado;
  btnIgual.Click;
end;
procedure TfrmCal.btnLQClick(Sender: TObject);
var
  codigo: Integer;
begin
  finalizar:= false;
  operacao:= 0;
  val(visor, valDigitado, codigo);
  iniCalc:= true;

  if (valResultado = 0) then
    valResultado:= valDigitado * 1;

  valResultado:= (1 / 2.204622622) * valResultado;
  btnIgual.Click;
end;
procedure TfrmCal.btnFatClick(Sender: TObject);
var
  codigo, x, y: Integer;
  {x = controle do loop}
  {y = número a ser calculado}
begin
  operad:= 'n!';
  finalizar:= false;
  operacao:= 0;
  iniCalc:= true;
  val(visor, y, codigo);

  if (y > 170) then
    begin
      beep;
      menErro:= 'ERRO';
      oper:= 'ESTOURO DE CAPACIDADE';
    end;

  if (y < 0) then
    begin
      beep;
      menErro:= 'ERRO';
      oper:= 'FUNÇÃO INVÁLIDA';
      valResultado:= 0;
    end;

  if (y >= 0) and (y <= 170) then
    begin
      valResultado:= 1;
      for x:= 1 to y do
        valResultado:= valResultado * x;
    end;
  btnIgual.Click;

end;

procedure TfrmCal.btnMSClick(Sender: TObject);
var
  codigo: Integer;
begin
  val(visor, valDigitado, codigo);
  if (valResultado = 0) then
    valResultado:= valDigitado;

  valMemoria:= valResultado;
  oper:= 'MEMO - ' + formatFloat('0.##########', valMemoria);
  pnlOper.Caption:= oper;
  finalizar:= true;
end;

procedure TfrmCal.btnMCClick(Sender: TObject);
begin
  valMemoria:= 0;
  oper:= '';
  pnlOper.Caption:= oper;
end;

procedure TfrmCal.btnMTClick(Sender: TObject);
begin
  valDigitado:= valMemoria;
  visor:= formatFloat('0.##########', valMemoria);
  pnlVisor.Caption:= visor;
  finalizar:= false;
end;

procedure TfrmCal.btnMMaisClick(Sender: TObject);
begin
  valMemoria:= valMemoria + valResultado;
  oper:= 'MEMO - ' + formatFloat('0.##########', valMemoria);
  pnlOper.Caption:= oper;
  finalizar:= true;
end;

procedure TfrmCal.btn2cClick(Sender: TObject);
begin
  btn2c.Font.Style:= [fsBold];
  btn2c.Font.Color:= clTeal;

  btn4c.Font.Style:= [];
  btn4c.Font.Color:= clGray;

  btnPF.Font.Style:= [];
  btnPF.Font.Color:= clGray;

  casaDec:= '2';
  btnIgual.Click;
end;

procedure TfrmCal.btn4cClick(Sender: TObject);
begin
  btn2c.Font.Style:= [];
  btn2c.Font.Color:= clGray;

  btn4c.Font.Style:= [fsBold];
  btn4c.Font.Color:= clTeal;

  btnPF.Font.Style:= [];
  btnPF.Font.Color:= clGray;

  casaDec:= '4';
  btnIgual.Click;
end;

procedure TfrmCal.btnPFClick(Sender: TObject);
begin
  btn2c.Font.Style:= [];
  btn2c.Font.Color:= clGray;

  btn4c.Font.Style:= [];
  btn4c.Font.Color:= clGray;

  btnPF.Font.Style:= [fsBold];
  btnPF.Font.Color:= clTeal;

  casaDec:= 'F';
  btnIgual.Click;
end;

procedure TfrmCal.btnCPFClick(Sender: TObject);
var
  teste: boolean;
begin
  if (length(visor) = 10) then
    visor:= '0' + visor;

  if (length(visor) < 10) or (length(visor) > 11) then
    begin
      beep;
      menErro:= 'ERRO';
      oper:= 'N° DE DÍGITOS ERRADOS';
      pnlErro.Caption:= menErro;
      pnlOper.Caption:= oper;
    end
  else
    begin
      teste:= CPF(visor);
      visor:= Copy(visor,1,3) + '.' + Copy(visor,4,3) + '.' + Copy(visor,7,3) + '-' + Copy(visor,10,2);
      if (teste = false) then
        visor:= visor + ' - FALSO'
      else
        visor:= visor + ' - VERDADEIRO';
    end;
  pnlVisor.Caption:= visor;
  finalizar:= true;
end;

procedure TfrmCal.btnCNPJClick(Sender: TObject);
var
  teste: boolean;
begin
  if (length(visor) <> 14) then
    begin
      beep;
      menErro:= 'ERRO';
      oper:= 'N° DE DÍGITOS ERRADOS';
      pnlErro.Caption:= menErro;
      pnlOper.Caption:= oper;
    end
  else
    begin
      teste:= cnpj(visor);
      visor:= copy(visor,1,2) + '.' + copy(visor,3,3) + '.' + copy(visor,6,3) + '/' + copy(visor,9,4) + '-' + copy(visor,13,2);
      if (teste = false) then
        visor:= visor + ' - FALSO'
      else
        visor:= visor + ' - VERDADEIRO';
    end;
  pnlVisor.Caption:= visor;
  finalizar:= true;
end;

end.

