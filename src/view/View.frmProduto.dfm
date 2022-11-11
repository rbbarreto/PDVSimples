inherited frmProduto: TfrmProduto
  Caption = 'Cadatro de Produto'
  ClientHeight = 389
  ExplicitWidth = 802
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 389
    ActivePage = TbCadastro
    ExplicitHeight = 389
    inherited TbLista: TTabSheet
      ExplicitHeight = 361
      inherited pnlBotao: TPanel
        Top = 314
        ExplicitTop = 314
      end
      inherited pnlClient: TPanel
        Height = 241
        ExplicitHeight = 241
        inherited DBGrid1: TDBGrid
          Height = 239
        end
      end
    end
    inherited TbCadastro: TTabSheet
      ExplicitHeight = 361
      inherited pnlBotaoCad: TPanel
        Top = 306
        ExplicitTop = 306
      end
      inherited pnlClientCad: TPanel
        Height = 306
        ExplicitHeight = 306
        object Label2: TLabel
          Left = 48
          Top = 48
          Width = 41
          Height = 13
          Caption = 'CODIGO'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 48
          Top = 88
          Width = 59
          Height = 13
          Caption = 'DESCRICAO'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 48
          Top = 128
          Width = 47
          Height = 13
          Caption = 'ESTOQUE'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 48
          Top = 168
          Width = 90
          Height = 13
          Caption = 'PRECO_UNITARIO'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 48
          Top = 64
          Width = 199
          Height = 21
          DataField = 'CODIGO'
          DataSource = DsPadrao
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 48
          Top = 104
          Width = 654
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = DsPadrao
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 48
          Top = 144
          Width = 134
          Height = 21
          DataField = 'ESTOQUE'
          DataSource = DsPadrao
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 48
          Top = 184
          Width = 134
          Height = 21
          DataField = 'PRECO_UNITARIO'
          DataSource = DsPadrao
          TabOrder = 3
        end
      end
    end
  end
  inherited DsPadrao: TDataSource
    DataSet = conexao.cdsProduto
    Left = 260
    Top = 265
  end
end
