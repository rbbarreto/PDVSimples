object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'PDV '
  ClientHeight = 540
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 65
    Align = alTop
    Color = 4227072
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 918
    object edtcodigo: TLabeledEdit
      Left = 32
      Top = 35
      Width = 193
      Height = 22
      EditLabel.Width = 38
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtDescricao: TLabeledEdit
      Left = 231
      Top = 35
      Width = 250
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o'
      TabOrder = 1
    end
    object btrnBusca: TButton
      Left = 487
      Top = 24
      Width = 161
      Height = 35
      Caption = 'Busca  F2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btrnBuscaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 948
    Height = 244
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object pnlItens: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 547
      Height = 232
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      ExplicitHeight = 213
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 539
        Height = 224
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object edtButtons: TPanel
      AlignWithMargins = True
      Left = 561
      Top = 4
      Width = 383
      Height = 236
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 545
      ExplicitWidth = 369
      ExplicitHeight = 217
      object Label1: TLabel
        Left = 16
        Top = 26
        Width = 240
        Height = 42
        Caption = 'Total de itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 95
        Width = 166
        Height = 42
        Caption = 'SubTotal '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlButton: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 176
        Width = 375
        Height = 56
        Align = alBottom
        TabOrder = 0
        object Button1: TButton
          AlignWithMargins = True
          Left = 254
          Top = 4
          Width = 117
          Height = 48
          Align = alRight
          Caption = 'Fechar F6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
          ExplicitLeft = 249
          ExplicitHeight = 46
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 8
          Top = 4
          Width = 117
          Height = 48
          Align = alRight
          Caption = 'Limpar F3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = -21
          ExplicitHeight = 46
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 131
          Top = 4
          Width = 117
          Height = 48
          Align = alRight
          Caption = 'Finalizar F5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = 240
          ExplicitHeight = 46
        end
      end
    end
  end
  object pnlProduto: TPanel
    Left = 0
    Top = 65
    Width = 948
    Height = 231
    Align = alClient
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    ExplicitHeight = 259
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 940
      Height = 223
      Align = alClient
      DataSource = dsProduto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 121
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 296
    Top = 121
  end
end
