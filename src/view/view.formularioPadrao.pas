unit view.formularioPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList,
  DataSnap.DBClient,
  Vcl.DdeMan, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPadrao = class(TForm)
    PageControl1: TPageControl;
    TbLista: TTabSheet;
    TbCadastro: TTabSheet;
    pnlBusca: TPanel;
    pnlBotao: TPanel;
    pnlClient: TPanel;
    DsPadrao: TDataSource;
    pnlBotaoCad: TPanel;
    pnlClientCad: TPanel;
    edtPesquisa: TEdit;
    lblPadrao: TLabel;
    btnPesquisa: TButton;
    DBGrid1: TDBGrid;
    btnEditar: TButton;
    btnAdicionar: TButton;
    btnExcluir: TButton;
    btnCancelar: TButton;
    btnSalvar: TButton;
    cbxField: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
    procedure AddFieldsCombo;
  public
    { Public declarations }

  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

procedure TfrmPadrao.AddFieldsCombo;
var
  i: Integer;
begin
  for i := 0 to Pred(DsPadrao.DataSet.FieldCount) do
  begin
    if DsPadrao.DataSet.Fields[i].DataType in [ftString, ftWideString,
      ftFixedChar] then
      cbxField.Items.Add(DsPadrao.DataSet.Fields[i].FieldName);
  end;
end;

procedure TfrmPadrao.btnAdicionarClick(Sender: TObject);
begin
  PageControl1.ActivePage := TbCadastro;
  if not DsPadrao.DataSet.Active then
    DsPadrao.DataSet.Open;

  DsPadrao.DataSet.Insert;
end;

procedure TfrmPadrao.btnCancelarClick(Sender: TObject);
begin
  TClientDataSet(DsPadrao.DataSet).CancelUpdates;
  PageControl1.ActivePage := TbLista;
end;

procedure TfrmPadrao.btnEditarClick(Sender: TObject);
begin
  DsPadrao.DataSet.Edit;
  PageControl1.ActivePage := TbCadastro;
end;

procedure TfrmPadrao.btnExcluirClick(Sender: TObject);
begin
  DsPadrao.DataSet.Delete;
  if DsPadrao.DataSet is TClientDataSet then
    TClientDataSet(DsPadrao.DataSet).ApplyUpdates(0);
end;

procedure TfrmPadrao.btnPesquisaClick(Sender: TObject);
begin
  if (cbxField.Text <> EmptyStr) and (edtPesquisa.Text <> EmptyStr) then
  begin
    DsPadrao.DataSet.Filter := 'upper(' + cbxField.Text + ') like ' +
      QuotedStr(UpperCase(edtPesquisa.Text) + '%');
    DsPadrao.DataSet.Filtered := True;
    if not DsPadrao.DataSet.Active then
      DsPadrao.DataSet.Open;
  end;
end;

procedure TfrmPadrao.btnSalvarClick(Sender: TObject);
begin
  TClientDataSet(DsPadrao.DataSet).ApplyUpdates(0);
  PageControl1.ActivePage := TbLista;
end;

procedure TfrmPadrao.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to PageControl1.PageCount - 1 do
    PageControl1.Pages[i].TabVisible := False;

  PageControl1.ActivePageIndex := 0;

  AddFieldsCombo;

  DsPadrao.DataSet.Open;
end;

end.
