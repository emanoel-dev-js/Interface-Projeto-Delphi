object FrmLocCliente: TFrmLocCliente
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Localizar Cliente'
  ClientHeight = 236
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConteudo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 93
    Width = 633
    Height = 140
    Align = alBottom
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 9
    Padding.Top = 9
    Padding.Right = 9
    Padding.Bottom = 9
    ParentBackground = False
    TabOrder = 0
    object GridLocalizarcliente: TDBGrid
      AlignWithMargins = True
      Left = 12
      Top = 12
      Width = 609
      Height = 116
      Align = alClient
      DataSource = DataSourceLocCliente
      GradientEndColor = clGray
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = GridLocalizarclienteKeyDown
    end
  end
  object pnlEdit: TPanel
    Left = 0
    Top = 44
    Width = 639
    Height = 46
    Align = alClient
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 9
    Padding.Top = 9
    Padding.Right = 9
    Padding.Bottom = 9
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 43
    object edt1: TEdit
      Left = 9
      Top = 9
      Width = 621
      Height = 28
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 21
    end
  end
  object pnlRadio: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    ParentBackground = False
    TabOrder = 2
    object RadioGroup1: TRadioGroup
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 625
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
  object QryLocCliente: TIBQuery
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    Active = True
    SQL.Strings = (
      
        'select CHAVE, CLIE_NOME, CLIE_SEXO, CLIE_TIPO_PESSOA from CLIENT' +
        'ES')
    Left = 464
    Top = 160
  end
  object DataSourceLocCliente: TDataSource
    DataSet = QryLocCliente
    Left = 560
    Top = 160
  end
end
