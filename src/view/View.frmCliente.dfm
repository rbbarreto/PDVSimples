inherited frmCliente: TfrmCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 597
  ClientWidth = 902
  ExplicitWidth = 918
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 902
    Height = 597
    ActivePage = TbCadastro
    ExplicitWidth = 902
    ExplicitHeight = 597
    inherited TbLista: TTabSheet
      ExplicitWidth = 894
      ExplicitHeight = 569
      inherited pnlBusca: TPanel
        Width = 894
        ExplicitWidth = 894
        inherited btnPesquisa: TButton
          Left = 724
          ExplicitLeft = 724
        end
      end
      inherited pnlBotao: TPanel
        Top = 522
        Width = 894
        ExplicitTop = 522
        ExplicitWidth = 894
        inherited btnEditar: TButton
          Left = 781
          ExplicitLeft = 781
        end
        inherited btnAdicionar: TButton
          Left = 551
          ExplicitLeft = 551
        end
        inherited btnExcluir: TButton
          Left = 666
          ExplicitLeft = 666
        end
      end
      inherited pnlClient: TPanel
        Width = 894
        Height = 449
        ExplicitWidth = 894
        ExplicitHeight = 449
        inherited DBGrid1: TDBGrid
          Width = 892
          Height = 447
        end
      end
    end
    inherited TbCadastro: TTabSheet
      ExplicitWidth = 894
      ExplicitHeight = 569
      inherited pnlBotaoCad: TPanel
        Top = 514
        Width = 894
        ExplicitTop = 514
        ExplicitWidth = 894
        inherited btnCancelar: TButton
          Left = 787
          Width = 103
          ExplicitLeft = 787
          ExplicitWidth = 103
        end
        inherited btnSalvar: TButton
          Left = 672
          ExplicitLeft = 672
        end
      end
      inherited pnlClientCad: TPanel
        Width = 894
        Height = 514
        ExplicitWidth = 894
        ExplicitHeight = 514
        object Label2: TLabel
          Left = 32
          Top = 96
          Width = 29
          Height = 13
          Caption = 'NOME'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 32
          Top = 139
          Width = 54
          Height = 13
          Caption = 'ENDERECO'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 32
          Top = 179
          Width = 43
          Height = 13
          Caption = 'NUMERO'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 32
          Top = 219
          Width = 75
          Height = 13
          Caption = 'COMPLEMENTO'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 32
          Top = 259
          Width = 39
          Height = 13
          Caption = 'BAIRRO'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 32
          Top = 299
          Width = 38
          Height = 13
          Caption = 'CIDADE'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 32
          Top = 336
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit7
        end
        object Label9: TLabel
          Left = 32
          Top = 376
          Width = 19
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 32
          Top = 419
          Width = 88
          Height = 13
          Caption = 'DATA_CADASTRO'
          FocusControl = DBEdit9
        end
        object Label11: TLabel
          Left = 32
          Top = 53
          Width = 52
          Height = 13
          Caption = 'IDCLIENTE'
          FocusControl = DBEdit10
        end
        object DBEdit1: TDBEdit
          Left = 32
          Top = 115
          Width = 654
          Height = 21
          DataField = 'NOME'
          DataSource = DsPadrao
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 32
          Top = 155
          Width = 654
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DsPadrao
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 32
          Top = 195
          Width = 134
          Height = 21
          DataField = 'NUMERO'
          DataSource = DsPadrao
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 32
          Top = 235
          Width = 264
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = DsPadrao
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 32
          Top = 275
          Width = 134
          Height = 21
          DataField = 'BAIRRO'
          DataSource = DsPadrao
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 32
          Top = 315
          Width = 264
          Height = 21
          DataField = 'CIDADE'
          DataSource = DsPadrao
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 32
          Top = 355
          Width = 30
          Height = 21
          DataField = 'UF'
          DataSource = DsPadrao
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 32
          Top = 395
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DsPadrao
          TabOrder = 7
          OnKeyPress = DBEdit8KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 32
          Top = 435
          Width = 134
          Height = 21
          DataField = 'DATA_CADASTRO'
          DataSource = DsPadrao
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 32
          Top = 69
          Width = 199
          Height = 21
          DataField = 'IDCLIENTE'
          DataSource = DsPadrao
          TabOrder = 9
        end
      end
    end
  end
  inherited DsPadrao: TDataSource
    DataSet = conexao.cdsCliente
    Left = 404
    Top = 265
  end
end
