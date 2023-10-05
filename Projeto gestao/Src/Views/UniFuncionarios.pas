unit UniFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, UniLocFuncionarios, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, ComCtrls;

type
  TFrmFuncionarios = class(TForm)
    pnlTopo: TPanel;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    btnGRAVAR: TSpeedButton;
    pnlConteudo: TPanel;
    btnConfiguracoesBtnLocalizar: TSpeedButton;
    lblCODIGO: TLabel;
    lblNOME: TLabel;
    lblGENERO: TLabel;
    lblTIPO: TLabel;
    pnlNOME: TPanel;
    edtFunNome: TEdit;
    pnlGENERO: TPanel;
    cbbFunGenero: TComboBox;
    pnlTIPO: TPanel;
    pnl1: TPanel;
    edt1: TEdit;
    edtIDADE: TEdit;
    pnl2: TPanel;
    edt2: TEdit;
    lblNumero: TLabel;
    pnl3: TPanel;
    edt3: TEdit;
    lblEmail: TLabel;
    QryFuncionarios: TIBQuery;
    SP_FUNCIONARIO: TIBStoredProc;
    pnlDATA: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    QryFuncionariosFUN_ID: TIntegerField;
    QryFuncionariosFUN_NOME: TIBStringField;
    QryFuncionariosFUN_GENERO: TIBStringField;
    QryFuncionariosFUN_IDADE: TIntegerField;
    QryFuncionariosFUN_NUMERO: TIBStringField;
    QryFuncionariosFUN_EMAIL: TIBStringField;
    procedure btnConfiguracoesBtnLocalizarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnGRAVARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionarios: TFrmFuncionarios;

implementation

uses
View.principal;

{$R *.dfm}

procedure TFrmFuncionarios.btnConfiguracoesBtnLocalizarClick(Sender: TObject);
begin
  Application.CreateForm(TLocFuncionarios, LocFuncionarios);
  try
    LocFuncionarios.ShowModal;
  finally
    FreeAndNil(LocFuncionarios);
  end;
end;

procedure TFrmFuncionarios.btnGRAVARClick(Sender: TObject);
begin
if Not (ViewPrincipal.TrBanco.InTransaction) then
  ViewPrincipal.TrBanco.StartTransaction;

  try
    with SP_FUNCIONARIO do
      begin
        ParamByName('FUN_ID').AsInteger    := StrToIntDef(edt1.Text, 0);
        ParamByName('FUN_NOME').AsString   := edtFunNome.Text;
        ParamByName('FUN_GENERO').AsString := cbbFunGenero.Text;
        ParamByName('FUN_IDADE').AsString  := edtIDADE.Text;
        ParamByName('FUN_NUMERO').AsString := edt2.Text;
        ParamByName('FUN_EMAIL').AsString  := edt3.Text;
        ParamByName('FUN_DATA_CAD').AsDate := DateTimePicker1.Date;
        ExecProc;
      end;
  Except on E:Exception do
   begin
     showmessage('Erro:'+E.message+#13+'Opera��o Cancelada');
     ViewPrincipal.TrBanco.Rollback;
     Abort;
   end;
end;
   showmessage('REGISTRO GRAVADO COM SUCESSO!');
   ViewPrincipal.TrBanco.Commit;

   edt1.Clear;
   edt2.Clear;
   edt3.Clear;
   edtFunNome.Clear;
   cbbFunGenero.Clear;
   edtIDADE.Clear;

  end;

procedure TFrmFuncionarios.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.
