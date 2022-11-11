object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = '  Sistema de Venda'
  ClientHeight = 437
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 418
    Width = 840
    Height = 19
    Panels = <
      item
        Text = 'Hora'
        Width = 100
      end
      item
        Text = 'Usu'#225'rio'
        Width = 50
      end>
  end
  object pnlButton: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Button1: TButton
    Left = 336
    Top = 80
    Width = 185
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 336
    Top = 128
    Width = 313
    Height = 209
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 208
    Top = 136
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        ShortCut = 16451
        OnClick = Cliente1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        ShortCut = 16464
        OnClick = Produtos1Click
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = Fornecedor1Click
      end
      object Cliente2: TMenuItem
        Caption = 'Usu'#225'rio'
        ShortCut = 16469
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        ShortCut = 16467
        OnClick = Sair1Click
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object PDV1: TMenuItem
        Caption = 'PDV'
        OnClick = PDV1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
      end
      object Usurios2: TMenuItem
        Caption = 'Usu'#225'rios'
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Help1: TMenuItem
        Caption = 'Help'
      end
    end
  end
end
