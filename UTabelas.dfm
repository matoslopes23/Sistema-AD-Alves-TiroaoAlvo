object Tabelas: TTabelas
  OldCreateOrder = True
  Left = 390
  Top = 144
  Height = 428
  Width = 486
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\pcct\ARMA.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 176
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 248
    Top = 16
  end
  object ibclientes: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'RG'
        Attributes = [faRequired]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'APELIDO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 70
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY5'
        Fields = 'RG'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$6'
        Fields = 'NOME'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CLIENTES'
    Left = 24
    Top = 88
  end
  object ibfuncionario: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'FUNCAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SALARIO'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY7'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$8'
        Fields = 'NOME'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'FUNCIONARIOS'
    Left = 24
    Top = 136
  end
  object ibarmas: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CALIBRE'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY9'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'ARMAS'
    Left = 24
    Top = 184
  end
  object ibservicos: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DEFARMA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TIPOREP'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VALTOT'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'FORMPAG'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DATASERV'
        DataType = ftDate
      end
      item
        Name = 'HORASERV'
        DataType = ftTime
      end
      item
        Name = 'DATAPREV'
        DataType = ftDate
      end
      item
        Name = 'DATADEV'
        DataType = ftDate
      end
      item
        Name = 'HORADEV'
        DataType = ftTime
      end
      item
        Name = 'RGCLI'
        Attributes = [faRequired]
        DataType = ftString
        Size = 14
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY10'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN11'
        Fields = 'RGCLI'
      end>
    StoreDefs = True
    TableName = 'SERVICOS'
    Left = 24
    Top = 240
  end
  object ibitens: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODARMA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODSERV'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$FOREIGN12'
        Fields = 'CODARMA'
      end
      item
        Name = 'RDB$FOREIGN13'
        Fields = 'CODSERV'
      end>
    StoreDefs = True
    TableName = 'ITENS'
    Left = 24
    Top = 296
  end
  object dsclientes: TDataSource
    DataSet = ibclientes
    Left = 96
    Top = 88
  end
  object dsfuncionarios: TDataSource
    DataSet = ibfuncionario
    Left = 96
    Top = 136
  end
  object dsarmas: TDataSource
    DataSet = ibarmas
    Left = 96
    Top = 184
  end
  object dsservicos: TDataSource
    DataSet = ibservicos
    Left = 96
    Top = 240
  end
  object dsitens: TDataSource
    DataSet = ibitens
    Left = 96
    Top = 296
  end
  object iblogin: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SENHA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY14'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'LOGIN'
    Left = 160
    Top = 88
  end
  object dslogin: TDataSource
    DataSet = iblogin
    Left = 216
    Top = 88
  end
  object dsrelserv: TDataSource
    DataSet = relserv
    Left = 216
    Top = 144
  end
  object relserv: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *from SERVICOS')
    Left = 168
    Top = 144
  end
end
