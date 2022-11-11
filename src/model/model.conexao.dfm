object conexao: Tconexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 440
  Width = 446
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\temp\PDV\src\model\DB\DATABASE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 56
    Top = 128
  end
  object FDCliente: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from cliente')
    Left = 208
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 72
  end
  object dspCliente: TDataSetProvider
    DataSet = FDCliente
    Left = 272
    Top = 32
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 344
    Top = 32
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClienteNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 10
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsClienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsClienteIDCLIENTE: TLargeintField
      FieldName = 'IDCLIENTE'
    end
  end
  object FDProduto: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from produto')
    Left = 208
    Top = 104
  end
  object dspProduto: TDataSetProvider
    DataSet = FDProduto
    Left = 280
    Top = 104
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 344
    Top = 104
    object cdsProdutoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsProdutoESTOQUE: TCurrencyField
      FieldName = 'ESTOQUE'
    end
    object cdsProdutoPRECO_UNITARIO: TCurrencyField
      FieldName = 'PRECO_UNITARIO'
    end
  end
  object FDFornecedores: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from Fornecedor')
    Left = 208
    Top = 176
  end
  object dspFornecedores: TDataSetProvider
    DataSet = FDFornecedores
    Left = 280
    Top = 176
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedores'
    Left = 352
    Top = 176
    object cdsFornecedoresIDFORNECEDORE: TLargeintField
      FieldName = 'IDFORNECEDORE'
      Required = True
    end
    object cdsFornecedoresNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornecedoresDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object FDConsulta: TFDQuery
    Connection = FDConn
    Left = 48
    Top = 304
  end
  object dspconsulta: TDataSetProvider
    DataSet = FDConsulta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 112
    Top = 304
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta'
    Left = 184
    Top = 304
  end
end
