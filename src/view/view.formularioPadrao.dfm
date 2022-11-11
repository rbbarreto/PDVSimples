object frmPadrao: TfrmPadrao
  Left = 0
  Top = 0
  Caption = 'frmPadrao'
  ClientHeight = 467
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 786
    Height = 467
    ActivePage = TbLista
    Align = alClient
    TabOrder = 0
    object TbLista: TTabSheet
      Caption = 'Lista'
      object pnlBusca: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 73
        Align = alTop
        TabOrder = 0
        DesignSize = (
          778
          73)
        object lblPadrao: TLabel
          Left = 184
          Top = 13
          Width = 145
          Height = 19
          Caption = 'Valor para Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 16
          Top = 13
          Width = 46
          Height = 18
          Caption = 'Campo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtPesquisa: TEdit
          Left = 184
          Top = 37
          Width = 273
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnPesquisa: TButton
          Left = 608
          Top = 19
          Width = 145
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Pesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnPesquisaClick
        end
        object cbxField: TComboBox
          Left = 16
          Top = 37
          Width = 145
          Height = 21
          TabOrder = 2
        end
      end
      object pnlBotao: TPanel
        Left = 0
        Top = 392
        Width = 778
        Height = 47
        Align = alBottom
        TabOrder = 1
        object btnEditar: TButton
          AlignWithMargins = True
          Left = 665
          Top = 4
          Width = 109
          Height = 39
          Align = alRight
          Caption = 'Editar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnEditarClick
        end
        object btnAdicionar: TButton
          AlignWithMargins = True
          Left = 435
          Top = 4
          Width = 109
          Height = 39
          Align = alRight
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnAdicionarClick
        end
        object btnExcluir: TButton
          AlignWithMargins = True
          Left = 550
          Top = 4
          Width = 109
          Height = 39
          Align = alRight
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnExcluirClick
        end
      end
      object pnlClient: TPanel
        Left = 0
        Top = 73
        Width = 778
        Height = 319
        Align = alClient
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 776
          Height = 317
          Align = alClient
          DataSource = DsPadrao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TbCadastro: TTabSheet
      Caption = 'TbCadastro'
      ImageIndex = 1
      object pnlBotaoCad: TPanel
        Left = 0
        Top = 384
        Width = 778
        Height = 55
        Align = alBottom
        DockSite = True
        TabOrder = 0
        object btnCancelar: TButton
          AlignWithMargins = True
          Left = 665
          Top = 4
          Width = 109
          Height = 47
          Align = alRight
          Caption = 'Cancelar'
          TabOrder = 0
          OnClick = btnCancelarClick
        end
        object btnSalvar: TButton
          AlignWithMargins = True
          Left = 550
          Top = 4
          Width = 109
          Height = 47
          Align = alRight
          Caption = 'Salvar'
          TabOrder = 1
          OnClick = btnSalvarClick
        end
      end
      object pnlClientCad: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 384
        Align = alClient
        TabOrder = 1
      end
    end
  end
  object DsPadrao: TDataSource
    Left = 100
    Top = 209
  end
end
