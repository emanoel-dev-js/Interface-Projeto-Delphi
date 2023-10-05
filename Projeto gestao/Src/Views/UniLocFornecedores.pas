unit UniLocFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TFrmLocFornecedores = class(TForm)
    pnlRadio: TPanel;
    RadioGroup1: TRadioGroup;
    pnlConteudo: TPanel;
    dbgrdGridLocalizarFornecedor: TDBGrid;
    pnlEdit: TPanel;
    edt1: TEdit;
    QryLocFornecedores: TIBQuery;
    DataSource1: TDataSource;
    QryLocFornecedoresFOR_ID: TIntegerField;
    QryLocFornecedoresFOR_NOME: TIBStringField;
    QryLocFornecedoresFOR_ENDERECO: TIBStringField;
    QryLocFornecedoresFOR_TELEFONE: TIBStringField;
    QryLocFornecedoresFOR_EMAIL: TIBStringField;
    QryLocFornecedoresFOR_CNPJ: TIBStringField;
    QryLocFornecedoresFOR_ATIVO: TIBStringField;
    QryLocFornecedoresFOR_DATA_CAD: TDateField;
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgrdGridLocalizarFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocFornecedores: TFrmLocFornecedores;

implementation
uses
  UniFornecedores;
{$R *.dfm}

procedure TFrmLocFornecedores.dbgrdGridLocalizarFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Frmfornecedores.edtFOR_ID.Text       := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_ID').AsString;
  Frmfornecedores.edtFOR_NOME.Text     := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_NOME').AsString;
  Frmfornecedores.cbbFOR_ATIVO.Text    := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_ATIVO').AsString;
  Frmfornecedores.edtFOR_CNPJ.Text     := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_CNPJ').AsString;
  Frmfornecedores.edtFOR_EMAIL.Text    := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_EMAIL').AsString;
  Frmfornecedores.edtFOR_TELEFONE.Text := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_TELEFONE').AsString;
  Frmfornecedores.edtFOR_ENDERECO.Text := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_ENDERECO').AsString;
  Frmfornecedores.DateTimePicker1.Date := dbgrdGridLocalizarFornecedor.DataSource.DataSet.FieldByName('FOR_DATA_CAD').AsDateTime;
  Close;
end;

procedure TFrmLocFornecedores.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
  begin
    QryLocFornecedores.Close;
    case RadioGroup1.ItemIndex of
      0: QryLocFornecedores.SQL.Text := 'SELECT * FROM FORNECEDORES WHERE UPPER(FOR_NOME) LIKE UPPER(''%' + edt1.Text + '%'')';
      1: QryLocFornecedores.SQL.Text := 'SELECT * FROM FORNECEDORES WHERE FOR_ID = ' + edt1.Text;
    end;

    QryLocFornecedores.Open;
    Key := 0;
  end;
end;

end.
