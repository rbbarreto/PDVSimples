unit View.frmPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmVenda = class(TForm)
    pnlPesquisa: TPanel;
    Panel2: TPanel;
    pnlProduto: TPanel;
    edtcodigo: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    btrnBusca: TButton;
    DBGrid1: TDBGrid;
    pnlItens: TPanel;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    DBGrid2: TDBGrid;
    edtButtons: TPanel;
    pnlButton: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btrnBuscaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
     procedure Consultaproduto;
  public
    { Public declarations }
  end;

var
  frmVenda: TfrmVenda;

implementation

uses
  FireDAC.Comp.Client, model.conexao, Datasnap.Provider;

{$R *.dfm}

procedure TfrmVenda.btrnBuscaClick(Sender: TObject);
begin
  Consultaproduto;
end;

procedure TfrmVenda.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmVenda.Consultaproduto;
var
   Flist : TStringList;
begin
   Flist := TStringList.Create();
   try
   Flist.Add('select * from produto p');
   Flist.Add(' where 1 = 1');

    if (edtcodigo.Text <> EmptyStr) then
       flist.Add(' and p.codigo = ' + edtcodigo.Text);

   if (edtDescricao.Text <> EmptyStr) then
     flist.Add(' and p.descricao like ' + QuotedStr(edtDescricao.Text + '%') );

    try
     conexao.cdsConsulta.close;
     conexao.cdsConsulta.CommandText := Flist.Text;
     conexao.cdsConsulta.open;


     cdsProduto.Close;
     cdsProduto.Data := conexao.cdsConsulta.data;
     cdsProduto.Open;
    except on E: Exception do
      raise Exception.Create('Erro na consulta do Produto'
          + sLineBreak
          + e.Message);
    end;


   finally
     Flist.Free;
   end;

end;

procedure TfrmVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F2 : Consultaproduto;
    VK_F6: Close;
  end;
end;

end.
