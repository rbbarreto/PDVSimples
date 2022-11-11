unit view.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Cliente2: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    PDV1: TMenuItem;
    Relatrio1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Usurios1: TMenuItem;
    Usurios2: TMenuItem;
    Ajuda1: TMenuItem;
    Help1: TMenuItem;
    StatusBar1: TStatusBar;
    pnlButton: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure PDV1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  System.Diagnostics,
  System.Threading,
  System.Zip,
  View.frmCliente,
  View.frmProduto,
  View.frmFornecedores, View.frmPDV;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  z: TZipFile;
  i: Integer;
begin
  var sw := TStopwatch.StartNew;
  z := TZipFile.Create;
  z.Open('c:\temp\519-022.zip', TZipMode.zmRead);
  for I := 0 to z.FileCount-1 do
    begin
      z.Extract(i, 'c:\temp\unzip');
      Memo1.Lines.Add(z.FileNames[i]);
    end;
    z.Free;

  Memo1.Lines.Add(sw.ElapsedMilliseconds.ToString);
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
   frmCliente := TfrmCliente.Create(Self);
   try
      frmCliente.ShowModal;
   finally
     frmCliente.Free;
   end;
end;

procedure TfrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
  frmFornecedor := TfrmFornecedor.Create(Self);
  try
    frmFornecedor.ShowModal;
  finally
    FreeAndNil(frmFornecedor);
  end;

end;

procedure TfrmPrincipal.PDV1Click(Sender: TObject);
begin
  frmVenda := TfrmVenda.Create(self);
  try
    frmVenda.ShowModal;
  finally
    frmVenda.Free;
  end;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmproduto := TfrmProduto.create(self);
  try
     frmproduto.showModal;
  finally
     frmproduto.free;
  end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.
