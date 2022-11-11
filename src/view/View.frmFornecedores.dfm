inherited frmFornecedor: TfrmFornecedor
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 436
  ExplicitWidth = 802
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 436
    ActivePage = TbCadastro
    inherited TbLista: TTabSheet
      ExplicitHeight = 408
      inherited pnlBotao: TPanel
        Top = 361
      end
      inherited pnlClient: TPanel
        Height = 288
        inherited DBGrid1: TDBGrid
          Height = 286
        end
      end
    end
    inherited TbCadastro: TTabSheet
      ExplicitHeight = 408
      inherited pnlBotaoCad: TPanel
        Top = 353
      end
      inherited pnlClientCad: TPanel
        Height = 353
        object Label2: TLabel
          Left = 40
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 40
          Top = 56
          Width = 29
          Height = 13
          Caption = 'NOME'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 40
          Top = 96
          Width = 54
          Height = 13
          Caption = 'ENDERECO'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 40
          Top = 136
          Width = 88
          Height = 13
          Caption = 'DATA_CADASTRO'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 40
          Top = 32
          Width = 199
          Height = 21
          DataField = 'IDFORNECEDORE'
          DataSource = DsPadrao
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 40
          Top = 72
          Width = 654
          Height = 21
          DataField = 'NOME'
          DataSource = DsPadrao
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 40
          Top = 112
          Width = 654
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DsPadrao
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 40
          Top = 152
          Width = 134
          Height = 21
          DataField = 'DATA_CADASTRO'
          DataSource = DsPadrao
          Enabled = False
          TabOrder = 3
        end
      end
    end
  end
  inherited DsPadrao: TDataSource
    DataSet = conexao.cdsFornecedores
    Left = 156
    Top = 225
  end
end
