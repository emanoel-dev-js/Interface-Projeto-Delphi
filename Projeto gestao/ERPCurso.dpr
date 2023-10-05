program ERPCurso;

uses
  Forms,
  View.principal in 'Src\Views\View.principal.pas' {ViewPrincipal},
  UniCliente in 'Src\Views\UniCliente.pas' {FRMCliente},
  UniCaixa in 'Src\Views\UniCaixa.pas' {FrmCaixa},
  UniFornecedores in 'Src\Views\UniFornecedores.pas' {Form2},
  UniProdutos in 'Src\Views\UniProdutos.pas' {Form3},
  UniVendas in 'Src\Views\UniVendas.pas' {Form1},
  UniLocalizarCliente in 'Src\Views\UniLocalizarCliente.pas' {FrmLocCliente},
  UniLocCaixa in 'Src\Views\UniLocCaixa.pas' {FrmLocCaixa},
  UniLocFornecedores in 'Src\Views\UniLocFornecedores.pas' {FrmLocFornecedores},
  UniLocProdutos in 'Src\Views\UniLocProdutos.pas' {FrmLocProdutos},
  UniLocVendas in 'Src\Views\UniLocVendas.pas' {FrmLocVenda},
  UniFuncionarios in 'Src\Views\UniFuncionarios.pas' {FrmFuncionarios},
  UniLocFuncionarios in 'Src\Views\UniLocFuncionarios.pas' {LocFuncionarios},
  UniRelatorio in 'Src\Views\UniRelatorio.pas' {FrmRelatorio},
  UniRelCaixa in 'Src\Views\UniRelCaixa.pas' {FrmRelCaixa},
  UniRelCliente in 'Src\Views\UniRelCliente.pas' {FrmRelCliente},
  UniRelFornecedor in 'Src\Views\UniRelFornecedor.pas' {FrmRelFornecedor},
  UniRelproduto in 'Src\Views\UniRelproduto.pas' {FrmRelProduto},
  UniRelVenda in 'Src\Views\UniRelVenda.pas' {FrmRelVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  //Application.CreateForm(TFrmLocCliente, FrmLocCliente);
  //Application.CreateForm(TFrmLocCaixa, FrmLocCaixa);
  //Application.CreateForm(TFrmLocFornecedores, FrmLocFornecedores);
  //Application.CreateForm(TFrmLocProdutos, FrmLocProdutos);
  //Application.CreateForm(TFrmLocVenda, FrmLocVenda);
  //Application.CreateForm(TFrmFuncionarios, FrmFuncionarios);
  //Application.CreateForm(TLocFuncionarios, LocFuncionarios);
  //Application.CreateForm(TFrmRelatorio, FrmRelatorio);
  //Application.CreateForm(TFrmRelCaixa, FrmRelCaixa);
  //Application.CreateForm(TFrmRelCaixa, FrmRelCaixa);
  //Application.CreateForm(TFrmRelCliente, FrmRelCliente);
  //Application.CreateForm(TFrmRelFornecedor, FrmRelFornecedor);
  //Application.CreateForm(TFrmRelProduto, FrmRelProduto);
  //Application.CreateForm(TFrmRelVenda, FrmRelVenda);
  //Application.CreateForm(TFrmItensVenda, FrmItensVenda);
  //Application.CreateForm(TFRMCliente, FRMCliente);
  //Application.CreateForm(TFRMCaixa, FRMCaixa);
  //Application.CreateForm(TFRmFornecedores, FRmFornecedores);
  //Application.CreateForm(TFrmProdutos, FrmProdutos);
  //Application.CreateForm(TFrmVendas, FrmVendas);
  Application.Run;
end.
