object FrmItensVenda: TFrmItensVenda
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form4'
  ClientHeight = 245
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'ITENS VENDAS'
    Color = 5395026
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -3
    ExplicitWidth = 676
  end
  object pnlRodaPe: TPanel
    Left = 0
    Top = 178
    Width = 686
    Height = 67
    Align = alBottom
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 168
    ExplicitWidth = 676
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 127
      Height = 47
      Margins.Left = 10
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'CANCELAR!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCancelarClick
    end
    object btnGravar: TButton
      AlignWithMargins = True
      Left = 546
      Top = 10
      Width = 137
      Height = 47
      Margins.Left = 10
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = '&GRAVAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnGravarClick
      ExplicitLeft = 536
    end
  end
  object pnlConteudo: TPanel
    Left = 0
    Top = 49
    Width = 686
    Height = 129
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 676
    ExplicitHeight = 119
    object lbItem_ID: TLabel
      Left = 24
      Top = 9
      Width = 17
      Height = 21
      Caption = 'ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVenda_Id: TLabel
      Left = 135
      Top = 6
      Width = 71
      Height = 21
      Caption = 'Id Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblProdutoID: TLabel
      Left = 376
      Top = 6
      Width = 87
      Height = 21
      Caption = 'ID Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQUantidade: TLabel
      Left = 228
      Top = 76
      Width = 94
      Height = 21
      Caption = 'Quantidade '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValor: TLabel
      Left = 24
      Top = 80
      Width = 40
      Height = 21
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtID: TEdit
      Left = 47
      Top = 9
      Width = 50
      Height = 21
      Color = clBtnShadow
      TabOrder = 0
    end
    object edtVenda: TEdit
      Left = 228
      Top = 6
      Width = 121
      Height = 21
      Color = clBtnShadow
      TabOrder = 1
    end
    object edtValor: TEdit
      Left = 85
      Top = 80
      Width = 121
      Height = 21
      Color = clBtnShadow
      TabOrder = 2
    end
    object edtQuantidade: TEdit
      Left = 328
      Top = 80
      Width = 121
      Height = 21
      Color = clBtnShadow
      TabOrder = 3
    end
    object cbbProduto: TDBLookupComboBox
      Left = 488
      Top = 9
      Width = 145
      Height = 21
      Color = clBtnShadow
      KeyField = 'CHAVE'
      ListField = 'PRO_DESCRICAO'
      ListSource = DataSourceProdutos
      TabOrder = 4
    end
  end
  object Qry_ItensVendas: TIBQuery
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    Left = 192
    Top = 184
  end
  object SP_INSERIR_ITENS_VENDA: TIBStoredProc
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    StoredProcName = 'SP_INSERIR_ITEM_VENDA'
    Left = 312
    Top = 184
  end
  object QUERY_PRODUTOS: TIBQuery
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTOS'
      'ORDER BY 2 ASC')
    Left = 440
    Top = 184
  end
  object DataSourceProdutos: TDataSource
    DataSet = QUERY_PRODUTOS
    Left = 544
    Top = 184
  end
end
