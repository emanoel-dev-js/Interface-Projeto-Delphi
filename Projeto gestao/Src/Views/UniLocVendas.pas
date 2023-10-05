unit UniLocVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TFrmLocVenda = class(TForm)
    pnlRadio: TPanel;
    RadioGroup1: TRadioGroup;
    pnlConteudo: TPanel;
    dbgrdGridLocalizarcliente: TDBGrid;
    pnlEdit: TPanel;
    edt1: TEdit;
    QryLocVendas: TIBQuery;
    DataSource1: TDataSource;
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgrdGridLocalizarclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocVenda: TFrmLocVenda;

implementation
uses
  UniVendas;
{$R *.dfm}

procedure TFrmLocVenda.dbgrdGridLocalizarclienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
  IdVen : Integer;
begin
try
  FrmVendas.edtId_Venda.Text         := dbgrdGridLocalizarcliente.DataSource.DataSet.FieldByName('VEN_ID').AsString;
  IdVen                              := StrToInt(dbgrdGridLocalizarcliente.DataSource.DataSet.FieldByName('VEN_ID').AsString);
  FrmVendas.edtIdVendedor.Text       := dbgrdGridLocalizarcliente.DataSource.DataSet.FieldByName('FUN_ID').AsString;
  FrmVendas.edtIdCli.Text            := dbgrdGridLocalizarcliente.DataSource.DataSet.FieldByName('CLI_ID').AsString;
  FrmVendas.cbbFormadePagamento.Text := dbgrdGridLocalizarcliente.DataSource.DataSet.FieldByName('VEN_TIPO_PAGAMENTO').AsString;
  FrmVendas.dtpDATA_VENDA.Date       := dbgrdGridLocalizarcliente.DataSource.DataSet.FieldByName('VEN_DATA').AsDateTime;
finally
  FrmVendas.ListVenda.Items.Add('Valor Total da Venda:' + ' ' + FloatToStr(dbgrdGridLocalizarcliente.DataSource.DataSet.FieldByName('VEN_VALOR').AsFloat));
  Close;
end;


  try
  FrmVendas.QryLocprodutoGrid.SQL.Clear;
  FrmVendas.QryLocprodutoGrid.SQL.Add('SELECT * FROM ITENS_VENDAS WHERE VEN_ID = :IdVenParam');
  FrmVendas.QryLocprodutoGrid.ParamByName('IdVenParam').AsInteger := IdVen;
  FrmVendas.QryLocprodutoGrid.Open;
except
  on E: Exception do
  begin
    ShowMessage('Erro: ' + E.Message);
    Exit;
  end;
end;

 end;


procedure TFrmLocVenda.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  begin
    QryLocVendas.Close;
    case RadioGroup1.ItemIndex of
      0: QryLocVendas.SQL.Text := 'SELECT * FROM VENDAS WHERE UPPER(VEN_ID) LIKE UPPER(''%' + edt1.Text + '%'')';
      1: QryLocVendas.SQL.Text := 'SELECT * FROM VENDAS WHERE VEN_ID = ' + edt1.Text;
    end;

    QryLocVendas.Open;
    Key := 0;
  end;
end;

end.
