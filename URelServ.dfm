object relserv: Trelserv
  Left = 185
  Top = 124
  Width = 1041
  Height = 516
  Caption = 'Relat'#243'rio de Servi'#231'os'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object RelServ: TDBGrid
    Left = 8
    Top = 8
    Width = 1009
    Height = 233
    DataSource = Tabelas.dsrelserv
    FixedColor = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
  end
  object op: TRadioGroup
    Left = 8
    Top = 248
    Width = 705
    Height = 153
    Caption = '  Extrair Relat'#243'rio de Alunos por  '
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Per'#237'odo')
    TabOrder = 1
    OnClick = opClick
  end
  object GrupoPeriodo: TGroupBox
    Left = 128
    Top = 278
    Width = 297
    Height = 107
    Caption = '  Informe o Per'#237'odo  '
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 83
      Height = 19
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 16
      Top = 76
      Width = 75
      Height = 19
      Caption = 'Data Final:'
    end
    object DataInicial: TMaskEdit
      Left = 128
      Top = 32
      Width = 120
      Height = 27
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object DataFinal: TMaskEdit
      Left = 128
      Top = 68
      Width = 120
      Height = 27
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object BitBtn1: TBitBtn
    Left = 464
    Top = 280
    Width = 188
    Height = 105
    Caption = 'Executar'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object GroupBox1: TGroupBox
    Left = 733
    Top = 248
    Width = 284
    Height = 153
    Caption = '  Navegadores  '
    TabOrder = 4
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 48
      Width = 248
      Height = 73
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object btVisualizar: TBitBtn
    Left = 208
    Top = 400
    Width = 241
    Height = 65
    Caption = '&Visualizar Impress'#227'o'
    TabOrder = 5
    OnClick = btVisualizarClick
    Glyph.Data = {
      6E110000424D6E11000000000000360000002800000026000000260000000100
      18000000000038110000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFFFF
      FFFCFDFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFE
      FFFFFFFFFFFFFFFFFFFDFEFDF8F8F8F1F0F0E8EAE6D6D7D3CCCCCCDADCDCFFFF
      FFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFEFEFEFEFDFE
      FEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFDFDFDFCFCFCFCFCFDFFFFFFFEFEFEF8F9F8EDECECDFDDDC
      D8D7D5D6D7D3D2D3CED6D5D1CACBC79E9D9CB0B0AFFFFFFFF4F4F4E9E9E9C2C2
      C2C6C6C8FEFDFDFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEE7E7E5D9DAD8D3D1CDD5D4D0D5D5D1D9D9D3DBDBD6DEDED9E2E1DB
      E9E7E2EEEDE881817EACACAFD5D5D5D0D0D0B6B6B76F6F6B727978DCE8F0FFFF
      FFD3DEEDB3B1BFD3DEEAFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FDFDFDF9F9F9F1F1F1D8D8D9C1C0BFC8CBC3D3D4CFE0
      DFD7DFDFD5E0E0D9E2E1DEE3E2DEE7E5E1E7E6E1E7E5E1EEECE9FFFFFF8C8C8B
      A8A9A9BCBCBCB2B2AFB2B7BE736663654729965B18BA5F00C665008540046752
      4BC2CED3FFFFFFFFFFFFFCFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF0000F7F7
      F7C4C5C3AEAEAAAFAEA8CDCBC5D9D7D2E2E1DDE3E2DEE3E2DFE7E5E1E9E8E3E8
      E7E3EAE9E5EDECE7EEEDE8EFEEE9FFFFF8D1D2D24E4F4F8181809293958D8E8F
      D48021EA8102F7930EFFA118F99C24F6A727AC620B542D1F9FA0A1FAFEFFFFFF
      FFFEFDFDFEFEFEFFFFFFFFFFFFFFFFFF0000FBFCFAF3F2F2EBEAE8E2E2DCD9D8
      D3DEDDD9E9E6E3EBEAE5E9E9E4ECEBE6F0EFEAEFEEE9F2F1ECF5F4EEF4F4EEF8
      F7F3F9F9F2FAFAF96E6F6F3A3B3A6B6B6B4E535CAD7C27FFB52DF19716CD983F
      D7A45AE4BE67CA93397F3A00532003866C68D6E1E5FFFFFFFFFFFEFEFEFFFEFE
      FFFEFEFD0000FEFEFEFFFFFFEDEDEEB9B9BAB5B5B4EDEFE6EFF3E6EEEEEAEFED
      EAF2F2EEF5F5F0F7F6F1F9F7F4FAF9F6FBFAF8FDFCF7FEFDF8FFFFFFBBBABB18
      1717070706000000251F11907340ADADAC95A7C1DDA73DF3A719BD7510494845
      22282F441E0E603521AEB3B0FFFFFFFFFFFFFDFDFDFBFAFA0000FFFFFFFFFFFF
      D5D4D4BAB8B8B5B5B8C2C5CBF9FFFBF9F9F3F6F5F0FAFAF5FCFBF6FCFCF6FBFB
      F7FEFEF8FDFEF8FEFEF8FDFDF7FFFFFCFCFCFE5B5A5D090A094A484957595D56
      606769727B4D5362D1870BED9200BF75074947451F2327303C3F41332A401502
      8B797AE7F2F3FFFFFFFBFCFC0000FFFFFFFFFFFFFFFFFFF5FCFFC2C7CB8B8072
      BAAFA2FFFFFFFCFCF8FDFCF8FEFCFAFEFDFAFEFDFAFFFFFDFFFFFDFFFFFEFFFF
      FFFCFCF8FFFFFFEDECEA4B4A471F1F203531313C3A38545554444851C9881BD1
      9D45B975234C473F191C212D2C2D404C4F4E4A4E3E1F09604F48CFD1D3FFFFFF
      0000FFFFFFFEFEFEFBFFFFE5D4B2D88B33DC7F07863A0AC3AFABFFFFFFFEFDF8
      FFFEFBFFFEFCFFFFFFFEFEF9F7F6F4F0EEEBE4E4E0C7C6C1B3B4AFABACA68C8A
      8416171500000019171445474A313337B8823BB0A290A7682E4F474213191B25
      23233634345154535157584036368F9090FFFFFF0000FFFFFFFFFFFFF7FFFFE4
      982FF38400FFA817D6770D774030FEFFFFFFFFFFF9FAF5F6F4F2E7E6E2D5D5CF
      BEBEB9A7A6A18F8F8B676761454540292A2522211C1E1E1E2021222F2D2A2E30
      321D2124B1732EC88E67AB5D2A514B4A10171821202026262846464756545353
      5656676767F3F3F30000FFFFFFFEFFFDFAFFFFFFECD1E6942BDFAF63B7A7891D
      1715787F82F3F4E7D0D1C9ADAFA694948C727269585A532F302B12121009090B
      1C1C1D23232429292A30302F27282824201F171A1B050608BF8A57BEC4B99367
      455C514B0B0E0F1D1D1D1E1E1E3939384B4B4B5252514D4D4DE8E8E80000FFFF
      FFFDFEFEFDFFFFEEF1D9F0B329B39A653645650000020000001C1C1748474539
      37332622200B09080101021616163030313434332727272424241D1D1D121211
      0C0E0F080707000103000000A15E39B9663EA747265E56590A0E0E1616161B1B
      1B2929293F3F3F494949484848E8E8E80000FFFFFFFDFEFFFFFFFFC4A5798361
      259C8A723A3A400101000504040606070B0B0C100F101615152B2B2B30303025
      24261818190B0B0B0A0A0A0505050000000000000303030708080E111210171A
      C76845E47C539D5034625F5F0407091312111818181E1E1E3C3C3C4444443D3D
      3DE6E6E60000FFFFFFFEFFFEFFFFFFD4B084B76C14A37F522B31381A191A2323
      232A2A2A2626262525252222221414140404040000000000000101010303030B
      0B0B111111191919272525313232444646464D51CC8D70EFAC88BE7B5E766763
      0004040C0B0B1315151818192F2F2F3C3C3C333333E3E3E30000FFFFFFFFFFFD
      FFFFFFE4B97DDC720090714D1B212A2021221E1E1E1818180F0F0F0606060000
      000000001212123D3D3D3F3F3F2222221A1A1A21212135353551515166666679
      7B7B8D8D8D939799EEC3A8FFD5BADCC1A28F65663040420000000B0A07131312
      2323233939392C2C2CE3E3E30000FFFFFFFDFFFDFFFFFFDDB183D16806806047
      0108100203020101010000000000000303031212121C1C1C4B4B4B4C4B4B4142
      415757577878789D9D9DADADADBBBBBBBBBBBBBCBCBCB4B4B49393979FA39FFC
      F1BFFFF6BDBD8E5C8E606A4F545B080C1C080B0E0A0B0A272725232222E2E2E2
      0000FFFFFFFFFFFEFFFFFFDEAC8BD2611C77574400020C0807070D0D0D111111
      2121213535354A4A4A6262627E7F7F939494B2AFB1CAC8C8CACBCBC1C0C0BFBF
      BCAFAEB09192917474745C5C5C4C4D4D424045B49964F0AE3AEBA603D27B00B7
      65198D684F3B3A4412151F0E151B131414E1E2E10000FFFFFFFEFFFFFFFFFFD7
      A286C85219724A3D0C131A2323224A4A4A747474939393ADADADC4C4C4D1D1D1
      D7D9D8D6DAD9CACDCCC2C6C4B5BABD96A2A867666B4847495E5F5F7F7F7F8989
      89C1C1C0D0D2D7E0DFDEE8E6D1E0BA80DD950FE79300DF8C00C47E1A845C343E
      2F35040D13D7DBDA0000FFFFFFFFFFFFFFFFFFDCA08BBE5735937B6C9BA0A3CD
      CECDE1E1E1E6E6E6E3E3E3E3E3E3E4E4E4DADADABCBABCA6A7A3969DA96B7286
      473C3E524333A0B8D0EAEAF0F0F0F0F9FBFAF7F7F7F4F4F5F2F2F2EBECEFE1DE
      EED2E3E3DCE0F4D7B880D28F06E79800E59E00AF5E00512014E6E4E90000FFFF
      FFFFFFFFF9FEFFF6F6F4FFFFFEFFFFFFF9FDFFEEECF2E8E7E4D8D7D6C3C3C3B4
      B5B59393937D7E7E858C9083817D82540CC07300FBAC32F9A314F5B700C1C098
      DCDDE5DCD8DBD6D6D3C1BDBFB1B1ABA1A19DA2A799ABAAB394907F978972CC91
      30DD8900D99710EBBC3DF3E5AAFDFFFF0000FFFFFFFFFFFFFDFDFEFFFFFEFCFA
      F6F9F2E8F0EFE4CCCED0A4B0C0ACB3C0B0AEADA9A7A6CACACCDDDDDEF1F3F3FF
      FFFFFFFFF1DACD89DCC692D3BD8BC2B65FA8A17EB3B4B6AEACA49F9E999D9C98
      A1A196A4A79BADAAA1B2B6B3BEB5A98A62219D7E4D7E8076B0B1A9FFFFFFFEFF
      FFFBFCFB0000FFFFFFFEFFFFFAFEFEFDFEFBFCFDFEF4E8D3F2C15EC8861C9A6B
      269C9486C6D7ECFFFFFFFCF9F3FFFFF6EBEFF0B3B4B793959767687633353B89
      8A8EAFB5BFA7ACA6ADADA3B2B2AABABCB2C2C3BAC7C8BFCACDC2CCCCC5D2CFCB
      DFE1E09597988A8476A89C8DF4FAFFFDFEFFFCFAFCFAFBF80000FFFFFFFEFFFF
      FEFFFFFFFFFFFEFCFBF8FBF9F4F1DCF0DBBCD89A1BD07800AF700D745F51C0D6
      E58398BA000512000008150E0E1A1D1D0000006F6E6CD5D4D0CACCC1D0D1C8D4
      D5CCD2D3CAD3D4CAD3D4CBD5D6CBD6D5CFD4D4CFD5D7D7D3D0C5AC6A25B56E0A
      DEDCDDFFFFFFFDFEFFFEFEFE0000FFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFCFBFB
      FCFFFFF8FFFFFCFFFFFFF4E8F5BF69F3A315B26000A46400D29100B289285853
      4754565A5D5E5D303033E3E5E3DCDED3DEDFD6DCDDD3DDDED4E0E1D8DDDED5DD
      E0D5E1E0DBE0E0DBE1E1DDE5EBEABC8E4BC47804C1A079FFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFCFBFDFCFEFDFEFEFCFFFCFFFF
      FFFFFFF7FBF4FEF0C8FFF1C4FFF5D2FFFFF0F7F3F2DEE0E0D3D5D9BEB497DBCC
      ABDFE2E9DADBCFDCDCD6DDDDD9DFDFDBE6E4E0E8E7E3E9E8E4E9E8E4E9E8E3EF
      F2F9D5C0A0D28E1DD29C58EFF3FAFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFCFFFF
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDECBA8A40EBF9FFDCDBD0DFE0D7DEDF
      DAE0E0DCE1E0DBE3E1DCE4E5DFE7E6E1E6E6E0E8ECECE2DDDADB9D3EE1A344E6
      DDD2FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFCFEFEFCFEFEFDFEFFFFFFFDFDFDFDFCFC
      FBFDFDFEFFFFD4B374E1D8C8E7EAE9E4E4DBE2E2DEE5E5E0E5E4E1E8E6E2E8E7
      E3E9E8E4E9E8E2E9ECE7EFF6FFDDAB6AF6BD4CD3BEA5FCFEFFFDFFFE0000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFCFDFAFFFFFCEAD3DCB472
      E7F5FFEBE8E0E9E8E3EBEBE5EAE9E5EDECE7EEEEE8EFEFEAEFEEE8F0EDE9F0F6
      FAECE3CCF1B02ECEA76BECEAEEFBFEFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFDFEFEF9FCFFF3FDFBF4C07CEAEEE4EEF3EFF0EEEAF1F0EC
      F0EEE9F0EFEBF1EFEBF0F0EBF0F1EBEFEEE9F0F3F0F4F4FBF2BE5CEED39DECED
      F4FBFDFC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
      FEFEFFFFFFFADB9FEAD7B2EEEEF3F1F1EBEFEEEAF1F1ECF1F1ECF0EFEBF2F0EB
      F0F0ECF2F0ECF0EFE9F1F3EFF4FDFFFFFFFFFFFFFFFFFFFE0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEF5E1E5D3AED6
      D5D2DCDDD8E6E5E1E8E9E3EFEEE9F3F2EEF3F1EBF1F0ECF2F1EDF1EFECE8E9E3
      F2F2F0FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9ECEAC4C5C0CACAC5D2D2CDD7D6D2DD
      DCD9E1E0DCE2E3DFE8E7E3E8E7E3E5E5E2E0E1DBE5E5E3FEFFFEFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF2F4F2B7B7B0B0AFAAB6B7B0BAB7B4BBBCB6C1BEB9C3C2BCC5C5C1CB
      C9C3CDCDC8CCD0C8D8D9D8FDFDFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F2F29E9E9B898B
      84999A959D9F99A8A9A3B4B5B1C1C0BDC9C9C7D3D2CFE1E0DEE6E6E3F5F4F2FD
      FDFEFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFEFEF2F2F3ADADADACAEA9CECFCCDFE1DDE7E9E5EFF0
      EFF9F8F9FDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF0000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD
      FCFCFCFAFBFBFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
  end
  object btImprimir: TBitBtn
    Left = 448
    Top = 400
    Width = 241
    Height = 65
    Caption = '&Imprimir'
    TabOrder = 6
  end
  object BitBtn4: TBitBtn
    Left = 688
    Top = 400
    Width = 241
    Height = 65
    Caption = '&Fechar'
    TabOrder = 7
    OnClick = BitBtn4Click
  end
end
