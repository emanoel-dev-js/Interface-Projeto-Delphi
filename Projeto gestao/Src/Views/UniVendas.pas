unit UniVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, IBStoredProc, DB,
  IBCustomDataSet, IBQuery, Buttons, Mask, rxToolEdit, rxCurrEdit, Grids,
  DBGrids;

type
  TFrmVendas = class(TForm)
    pnlRodaPe: TPanel;
    pnlTopo: TPanel;
    pnlConteudo: TPanel;
    QryVendas: TIBQuery;
    SP_INSERIR_VENDA: TIBStoredProc;
    lblData_Venda: TLabel;
    lblId_venda: TLabel;
    lblNomeCliente: TLabel;
    QryClientes: TIBQuery;
    DataSourceCliente: TDataSource;
    QryClientesCHAVE: TIntegerField;
    QryClientesCLIE_NOME: TIBStringField;
    QryClientesCLIE_TIPO_PESSOA: TIBStringField;
    QryClientesCLIE_SEXO: TIBStringField;
    BtnLocalizar: TSpeedButton;
    pnlIdVenda: TPanel;
    pnlDataVenda: TPanel;
    pnlNomeVendedor: TPanel;
    pnlIdVendedor: TPanel;
    pnlIdCliente: TPanel;
    pnlNomeCliente: TPanel;
    pnlFormaPagamento: TPanel;
    pnlIdProduto: TPanel;
    pnlNomeProduto: TPanel;
    pnlCodigoBarras: TPanel;
    pnlQuantidade: TPanel;
    pnlValorUni: TPanel;
    pnlSubTotal: TPanel;
    pnlGridProduto: TPanel;
    pnlListBoxVenda: TPanel;
    edtId_Venda: TEdit;
    dtpDATA_VENDA: TDateTimePicker;
    pnlLinha: TPanel;
    lblVendedor: TLabel;
    lblIdVendedor: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    edtIdVendedor: TEdit;
    lblDadosCliente: TLabel;
    lblNomeCli: TLabel;
    lblDadosCli: TLabel;
    cbbClientes: TDBLookupComboBox;
    edtIdCli: TEdit;
    lblInformacoesVenda: TLabel;
    cbbFormadePagamento: TComboBox;
    pnlLinhaDivisao2: TPanel;
    lblDetalhesdoProduto: TLabel;
    lblIdProduto: TLabel;
    lblNomeProduto: TLabel;
    lblCodigoBarras: TLabel;
    lblQuantidade: TLabel;
    lblValorUnitario: TLabel;
    lblSubTotal: TLabel;
    dbgrdProduto: TDBGrid;
    ListVenda: TListBox;
    lblDetalhesProduto: TLabel;
    lblDetalhesVenda: TLabel;
    edtIdProduto: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    edtCodigoBarras: TEdit;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    pnl1: TPanel;
    Gravar: TSpeedButton;
    QryLocprodutoGrid: TIBQuery;
    DataSource1: TDataSource;
    QryLocVendedor: TIBQuery;
    DataSource2: TDataSource;
    QryLocProduto: TIBQuery;
    DataSource3: TDataSource;
    pnlBtnFinalizar: TPanel;
    btnCancelar: TSpeedButton;
    pnlBtnFinalizarVenda: TPanel;
    BtnFinalizar: TSpeedButton;
    INSERIR_ITENS_VENDAS: TIBStoredProc;
    pnlSair: TPanel;
    Sair: TSpeedButton;
    edtQuantidades: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnFinalizarClick(Sender: TObject);
    procedure GravarClick(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure cbbClientesCloseUp(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure VerificarBotao(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure edtQuantidadesChange(Sender: TObject);
  private
    ValorTotal : Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

uses View.principal, UniLocVendas;

{$R *.dfm}

procedure TFrmVendas.FormCreate(Sender: TObject);
begin
  Gravar.Enabled := False;
  edtIdVendedor.OnChange := VerificarBotao;
  edtIdCli.OnChange := VerificarBotao;
  edtIdProduto.OnChange := VerificarBotao;
end;

procedure TFrmVendas.FormShow(Sender: TObject);
begin
  QryLocVendedor.Open;
  QryClientes.Open;
  QryLocProduto.Open;

  QryLocVendedor.FetchAll;
  QryClientes.Fetchall;
  QryLocProduto.FetchAll;
end;


procedure TFrmVendas.BtnFinalizarClick(Sender: TObject);
begin
if not (ViewPrincipal.Trbanco.InTransaction) then
  ViewPrincipal.Trbanco.StartTransaction;

try
 with SP_INSERIR_VENDA do
  begin
    ParamByName('VEN_ID').AsInteger            := StrToIntdef(edtId_Venda.Text,0);
    ParamByName('FUN_ID').AsInteger            := StrToIntDef(edtIdVendedor.Text, 0);
    ParamByName('CLI_ID').AsInteger            := StrToIntDef(edtIdCli.Text, 0);
    ParamByName('VEN_DATA').AsDate             := dtpDATA_VENDA.Date;
    ParamByName('VEN_VALOR').AsFloat           := ValorTotal;
    ParamByName('VEN_TIPO_PAGAMENTO').AsString := cbbFormadePagamento.Text;
    ExecProc;
  end;
 Except on E:Exception do
   begin
     showmessage('Erro:'+E.message+#13+'Operação Cancelada');
     ViewPrincipal.TrBanco.Rollback;
     Abort;
   end;
 end;
   showmessage('REGISTRO GRAVADO COM SUCESSO!');
   ViewPrincipal.TrBanco.Commit;

   edtId_Venda.Clear;
   edtIdVendedor.Clear;
   edtIdCli.Clear;
   DBLookupComboBox1.KeyValue := Null;
   cbbClientes.KeyValue := Null;
   cbbFormadePagamento.Clear;
   ListVenda.Clear;
end;

procedure TFrmVendas.GravarClick(Sender: TObject);
var
  idVenda: Integer;
  NomeProduto: string;
  SubTotal: Currency;
  QuantidadePro: string;

begin
if edtId_Venda.Text = '' then
  try
    with SP_INSERIR_VENDA do
    begin
      ParamByName('FUN_ID').AsInteger := StrToIntDef(edtIdVendedor.Text, 0);
      ParamByName('CLI_ID').AsInteger := StrToIntDef(edtIdCli.Text, 0);
      ParamByName('VEN_DATA').AsDate := dtpDATA_VENDA.Date;
      ParamByName('VEN_VALOR').AsFloat := ValorTotal;
      ParamByName('VEN_TIPO_PAGAMENTO').AsString := cbbFormadePagamento.Text;
      ExecProc;
      idVenda := ParamByName('VEN_ID').AsInteger;
      edtId_Venda.Text := IntToStr(idVenda);
    end;

    with INSERIR_ITENS_VENDAS do
    begin
      ParamByName('PRO_ID').AsInteger := StrToIntDef(edtIdProduto.Text, 0);
      ParamByName('VEN_ID').AsInteger := idVenda;
      ParamByName('ITV_QUANTIDADE').AsInteger := StrToIntDef(edtQuantidades.Text, 0);
      ParamByName('ITV_PRECO_UNITARIO').AsFloat :=CurrencyEdit1.Value;
      ParamByName('ITV_SUB_TOTAL').AsFloat := CurrencyEdit2.Value;

      NomeProduto := dbgrdProduto.DataSource.DataSet.FieldByName('PRO_NOME').AsString;
      SubTotal := CurrencyEdit2.Value;
      QuantidadePro := edtQuantidades.Text;
      ExecProc;
        if  ListVenda.Items.Count > 0 then
          if Pos('Valor total da compra:', ListVenda.Items[ListVenda.Items.Count - 1]) = 1 then
            ListVenda.Items.Delete(ListVenda.Items.Count - 1);
              ListVenda.Items.Add('Produto:' + ' '+ NomeProduto + ' ' + 'Quantidade' + ' ' + QuantidadePro +' '+ 'Valor: R$' + FloatToStr(SubTotal));
                ValorTotal := ValorTotal + SubTotal;
                 ListVenda.Items.Add('Valor total da compra: R$' + FloatToStr(ValorTotal));
               edtIdProduto.Text := '';
               DBLookupComboBox2.KeyValue := null;
               edtCodigoBarras.Text := '';
               edtQuantidades.Text := '0';
               CurrencyEdit1.Value := 0;
               CurrencyEdit2.Value := 0;
    end;
  finally
   ShowMessage('Venda Gerada!');
  end
   else
    begin
      with INSERIR_ITENS_VENDAS do
       begin
         ParamByName('PRO_ID').AsInteger := StrToIntDef(edtIdProduto.Text, 0);
         ParamByName('VEN_ID').AsInteger := StrToInt(edtId_Venda.Text);
         ParamByName('ITV_QUANTIDADE').AsInteger := StrToIntDef(edtQuantidades.Text, 0);
         ParamByName('ITV_PRECO_UNITARIO').AsFloat :=CurrencyEdit1.Value;
         ParamByName('ITV_SUB_TOTAL').AsFloat := CurrencyEdit2.Value;

         NomeProduto := dbgrdProduto.DataSource.DataSet.FieldByName('PRO_NOME').AsString;
         SubTotal := CurrencyEdit2.Value;
         QuantidadePro := edtQuantidades.Text;
         ExecProc;
      end;
    end;

  if  ListVenda.Items.Count > 0 then
    if Pos('Valor total da compra:', ListVenda.Items[ListVenda.Items.Count - 1]) = 1 then
      ListVenda.Items.Delete(ListVenda.Items.Count - 1);
        ListVenda.Items.Add('Produto:' + ' '+ NomeProduto + ' ' + 'Quantidade' + ' ' + QuantidadePro +' '+ 'Valor: R$' + FloatToStr(SubTotal));

    ValorTotal := ValorTotal + SubTotal;
    ListVenda.Items.Add('Valor total da compra: R$' + FloatToStr(ValorTotal));

  edtIdProduto.Text := '';
  DBLookupComboBox2.KeyValue := null;
  edtCodigoBarras.Text := '';
  edtQuantidades.Text := '0';
  CurrencyEdit1.Value := 0;
  CurrencyEdit2.Value := 0;
end;

procedure TFrmVendas.DBLookupComboBox2CloseUp(Sender: TObject);
var
  Query: TIBQuery;
  PRODUTOID : Integer;
begin
  if not VarIsNull(DBLookupComboBox2.KeyValue) then
  begin
    edtIdProduto.Text := IntToStr(DBLookupComboBox2.KeyValue);
    Query := TIBQuery(DBLookupComboBox2.ListSource.DataSet);
    edtCodigoBarras.Text := Query.FieldByName('PRO_CODIGO_BARRAS').AsString;
    CurrencyEdit1.Text := FloatToStr(Query.FieldByName('PRO_VALOR').AsFloat);
  end
  else
  begin
    edtQuantidades.Text := '';
    edtCodigoBarras.Text := '';
    CurrencyEdit1.Text := '';
  end;

   if not VarIsNull(DBLookupComboBox2.KeyValue) then
  begin
    PRODUTOID := DBLookupComboBox2.KeyValue;

    QryLocprodutoGrid.Close;
    QryLocprodutoGrid.SQL.Text := 'SELECT * FROM PRODUTOS WHERE PRO_ID = :PRO_ID';
    QryLocprodutoGrid.ParamByName('PRO_ID').AsInteger := PRODUTOID;
    QryLocprodutoGrid.Open;
  end;
end;

procedure TFrmVendas.edtQuantidadesChange(Sender: TObject);
var
  Quantidade: Integer;
  PrecoUnitario, SubValor: Double;
begin
  if TryStrToInt(edtQuantidades.Text, Quantidade) then
  begin
     if TryStrToFloat(CurrencyEdit1.Text, PrecoUnitario) then
    begin
      SubValor := Quantidade * PrecoUnitario;
      CurrencyEdit2.Text := FloatToStr(SubValor);
    end
    else
      ShowMessage('Preço unitário inválido.');
  end
   else
    ShowMessage('Quantidade inválida.');
end;

procedure TFrmVendas.cbbClientesCloseUp(Sender: TObject);
begin
  if not VarIsNull(cbbClientes.KeyValue) then
     edtIdCli.Text := IntToStr(cbbClientes.KeyValue)
   else
     edtIdCli.Text := '';
end;

procedure TFrmVendas.DBLookupComboBox1CloseUp(Sender: TObject);
begin
 if not VarIsNull(DBLookupComboBox1.KeyValue) then
    edtIdVendedor.Text := IntToStr(DBLookupComboBox1.KeyValue)
  else
    edtIdVendedor.Text := '';
end;

procedure TFrmVendas.VerificarBotao(Sender: TObject);
begin
  Gravar.Enabled := (edtIdVendedor.Text <> '') and (edtIdCli.Text <> '') and (edtIdProduto.Text <> '') {and (edtQuantidades.Text <> '')};
end;

procedure TFrmVendas.btnCancelarclick(Sender: TObject);
begin
  ViewPrincipal.TrBanco.Rollback;
end;

procedure TFrmVendas.BtnLocalizarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmLocVenda, FrmLocVenda);
  try
    FrmLocVenda.ShowModal;
  finally
    FreeAndNil(FrmLocVenda);
  end;
end;

procedure TFrmVendas.SairClick(Sender: TObject);
begin
Close;
end;

end.
