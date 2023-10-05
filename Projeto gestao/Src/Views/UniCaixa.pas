unit UniCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IBStoredProc, DB, IBCustomDataSet, IBQuery,
  ComCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons, UniLocCaixa;

type
  TFrmCaixa = class(TForm)
    PnlTopo: TPanel;
    pnlConteudo: TPanel;
    pnl1: TPanel;
    btnCancelar: TButton;
    btnGravar: TButton;
    lblID_TRAN: TLabel;
    lblDATA_TRAN: TLabel;
    lblDESCRICAO: TLabel;
    lblVALOR: TLabel;
    lblTIPO: TLabel;
    QryCAIXA: TIBQuery;
    SP_CAIXA: TIBStoredProc;
    pnlCODIGO: TPanel;
    pnlDATA: TPanel;
    pnlDESCRICAO: TPanel;
    pnlVALOR: TPanel;
    pnlTIPO: TPanel;
    CX_ID_TRAN: TEdit;
    DateTimePicker1: TDateTimePicker;
    CX_DESCRICAO: TEdit;
    CBB_TIPO: TComboBox;
    CX_VALOR: TCurrencyEdit;
    BtnLocalizar: TSpeedButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixa: TFrmCaixa;

implementation

uses
View.principal;

{$R *.dfm}


procedure TFrmCaixa.btnGravarClick(Sender: TObject);
begin
  if not (ViewPrincipal.TrBanco.InTransaction) then
    ViewPrincipal.TrBanco.StartTransaction;

  try
    with SP_CAIXA do
    begin
      ParamByName('CHAVE_TRANSACAO').AsInteger := StrToIntDef(CX_ID_TRAN.Text, 0);
      ParamByName('DATA_TRANSACAO').AsDate := DateTimePicker1.Date;
      ParamByName('CIX_DESCRICAO').AsString := CX_DESCRICAO.Text;
      ParamByName('CIX_VALOR').AsFloat := CX_VALOR.value;
      ParamByName('CIX_TIPO').AsString := CBB_TIPO.Text;
      ExecProc;
    end;

  except
    on E: Exception do
    begin
      ShowMessage('Erro:' + E.Message + #13 + 'Operação Cancelada');
      ViewPrincipal.TrBanco.Rollback;
      Abort;
    end;
  end;

  ShowMessage('REGISTRO GRAVADO COM SUCESSO!');
  ViewPrincipal.TrBanco.Commit;

  CX_ID_TRAN.Clear;
  CX_VALOR.Clear;
  CX_DESCRICAO.Clear;
  CBB_TIPO.Clear;

end;

procedure TFrmCaixa.BtnLocalizarClick(Sender: TObject);
begin
Application.CreateForm(TFrmLocCaixa, FrmLocCaixa);
  try
    FrmLocCaixa.ShowModal;
  finally
    FreeAndNil(FrmLocCaixa);
  end;
end;

procedure TFrmCaixa.btnCancelarClick(Sender: TObject);
begin
  Close
end;

procedure TFrmCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_ESCAPE then
    Self.Close;
end;

end.
