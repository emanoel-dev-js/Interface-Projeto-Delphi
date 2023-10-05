unit UNI_ITENS_VENDA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IBStoredProc, DB, IBCustomDataSet, IBQuery,
  DBCtrls;

type
  TFrmItensVenda = class(TForm)
    pnlTopo: TPanel;
    pnlRodaPe: TPanel;
    btnCancelar: TButton;
    btnGravar: TButton;
    pnlConteudo: TPanel;
    Qry_ItensVendas: TIBQuery;
    SP_INSERIR_ITENS_VENDA: TIBStoredProc;
    lbItem_ID: TLabel;
    lblVenda_Id: TLabel;
    lblProdutoID: TLabel;
    lblQUantidade: TLabel;
    lblValor: TLabel;
    edtID: TEdit;
    edtVenda: TEdit;
    edtValor: TEdit;
    edtQuantidade: TEdit;
    QUERY_PRODUTOS: TIBQuery;
    DataSourceProdutos: TDataSource;
    cbbProduto: TDBLookupComboBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmItensVenda: TFrmItensVenda;

implementation

uses View.principal;

{$R *.dfm}

procedure TFrmItensVenda.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFrmItensVenda.btnGravarClick(Sender: TObject);
var
  VendaId, ProdutoID : Integer;
begin
try
  with SP_INSERIR_ITENS_VENDA do
  begin
    VendaId := Qry_ItensVendas.FieldByName('VendaId').AsInteger;
    ProdutoID := Qry_ItensVendas.FieldByName('PRODUTO_ID').AsInteger;
    ParamByName('PRODUTO_ID').AsInteger := ProdutoID;
    ParamByName('VENDA_ID').AsInteger := VendaId;
    ParamByName('ITEM_ID').AsInteger := StrToIntDef(edtID.Text, 0);
    ParamByName('QUANTIDADE').AsInteger := StrToIntDef(edtQuantidade.Text, 0);
    ParamByName('VALOR').AsFloat := StrToFloatDef(edtValor.Text, 0.0);

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
end;
procedure TFrmItensVenda.FormCreate(Sender: TObject);
var
  ProdutoNome : string;
begin
  QUERY_PRODUTOS.Open;
  QUERY_PRODUTOS.FetchAll;
end;


procedure TFrmItensVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;

end;

end.
