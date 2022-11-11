unit model.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, Datasnap.Provider, FireDAC.Comp.UI,
  Datasnap.DBClient, FireDAC.Phys.SQLiteVDataSet, FireDAC.Moni.Base,
  FireDAC.Moni.RemoteClient;

type
  Tconexao = class(TDataModule)
    FDConn: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDCliente: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteNOME: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteNUMERO: TIntegerField;
    cdsClienteCOMPLEMENTO: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteDATA_CADASTRO: TDateField;
    cdsClienteIDCLIENTE: TLargeintField;
    FDProduto: TFDQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoCODIGO: TLargeintField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoESTOQUE: TCurrencyField;
    cdsProdutoPRECO_UNITARIO: TCurrencyField;
    FDFornecedores: TFDQuery;
    dspFornecedores: TDataSetProvider;
    cdsFornecedores: TClientDataSet;
    cdsFornecedoresIDFORNECEDORE: TLargeintField;
    cdsFornecedoresNOME: TStringField;
    cdsFornecedoresENDERECO: TStringField;
    cdsFornecedoresDATA_CADASTRO: TDateField;
    FDConsulta: TFDQuery;
    dspconsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  conexao: Tconexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tconexao.DataModuleCreate(Sender: TObject);
begin
   FDConn.Connected := True;
end;

procedure Tconexao.DataModuleDestroy(Sender: TObject);
begin
 FDConn.Connected := false;
end;

end.
