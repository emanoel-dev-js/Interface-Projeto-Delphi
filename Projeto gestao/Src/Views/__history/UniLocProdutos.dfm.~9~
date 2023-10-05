object FrmLocProdutos: TFrmLocProdutos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FrmLocProdutos'
  ClientHeight = 240
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRadio: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    ParentBackground = False
    TabOrder = 0
    object RadioGroup1: TRadioGroup
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 631
      Height = 30
      Align = alClient
      Caption = 'Filtro Pesquisa:'
      Color = clWhite
      Items.Strings = (
        'Descricao')
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
    end
  end
  object pnlConteudo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 94
    Width = 639
    Height = 143
    Align = alBottom
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 9
    Padding.Top = 9
    Padding.Right = 9
    Padding.Bottom = 9
    ParentBackground = False
    TabOrder = 1
    object dbgrdGridLocalizarProdutos: TDBGrid
      AlignWithMargins = True
      Left = 12
      Top = 12
      Width = 615
      Height = 119
      Align = alClient
      DataSource = DataSource1
      GradientEndColor = clGray
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = dbgrdGridLocalizarProdutosKeyDown
    end
  end
  object pnlEdit: TPanel
    Left = 0
    Top = 44
    Width = 645
    Height = 47
    Align = alClient
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 9
    Padding.Top = 9
    Padding.Right = 9
    Padding.Bottom = 9
    ParentBackground = False
    TabOrder = 2
    object edt1: TEdit
      Left = 9
      Top = 9
      Width = 627
      Height = 29
      Align = alClient
      TabOrder = 0
      OnKeyDown = edt1KeyDown
      ExplicitHeight = 21
    end
  end
  object QryLocProdutos: TIBQuery
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    SQL.Strings = (
      'select * from PRODUTOS')
    Left = 424
    Top = 144
    object QryLocProdutosPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = '"PRODUTOS"."PRO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLocProdutosPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PRODUTOS"."PRO_NOME"'
      Size = 100
    end
    object QryLocProdutosPRO_TIPO: TIBStringField
      FieldName = 'PRO_TIPO'
      Origin = '"PRODUTOS"."PRO_TIPO"'
      Size = 2
    end
    object QryLocProdutosPRO_VALOR: TIBBCDField
      FieldName = 'PRO_VALOR'
      Origin = '"PRODUTOS"."PRO_VALOR"'
      Precision = 9
      Size = 2
    end
    object QryLocProdutosPRO_CODIGO_BARRAS: TIBStringField
      FieldName = 'PRO_CODIGO_BARRAS'
      Origin = '"PRODUTOS"."PRO_CODIGO_BARRAS"'
      Size = 25
    end
    object QryLocProdutosPRO_DESCRICAO: TIBStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = '"PRODUTOS"."PRO_DESCRICAO"'
      Size = 125
    end
    object QryLocProdutosFOR_ID: TIntegerField
      FieldName = 'FOR_ID'
      Origin = '"PRODUTOS"."FOR_ID"'
    end
    object QryLocProdutosPRO_DATA_CAD: TDateField
      FieldName = 'PRO_DATA_CAD'
      Origin = '"PRODUTOS"."PRO_DATA_CAD"'
    end
  end
  object DataSource1: TDataSource
    DataSet = QryLocProdutos
    Left = 512
    Top = 144
  end
end
