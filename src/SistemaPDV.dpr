program SistemaPDV;

uses
  Vcl.Forms,
  view.Principal in 'view\view.Principal.pas' {frmPrincipal},
  View.Login in 'view\View.Login.pas' {frmLogin},
  model.conexao in 'model\model.conexao.pas' {conexao: TDataModule},
  view.formularioPadrao in 'view\view.formularioPadrao.pas' {frmPadrao},
  View.frmCliente in 'view\View.frmCliente.pas' {frmCliente},
  View.frmProduto in 'view\View.frmProduto.pas' {frmProduto},
  View.frmFornecedores in 'view\View.frmFornecedores.pas' {frmFornecedor},
  View.frmPDV in 'view\View.frmPDV.pas' {frmVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tconexao, conexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.Run;
end.
