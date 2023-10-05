object FrmLocCaixa: TFrmLocCaixa
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FrmLocCaixa'
  ClientHeight = 243
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
  object pnlEdit: TPanel
    Left = 0
    Top = 44
    Width = 645
    Height = 50
    Align = alClient
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 9
    Padding.Top = 9
    Padding.Right = 9
    Padding.Bottom = 9
    ParentBackground = False
    TabOrder = 1
    object edt1: TEdit
      Left = 9
      Top = 9
      Width = 627
      Height = 32
      Align = alClient
      TabOrder = 0
      OnKeyDown = edt1KeyDown
      ExplicitHeight = 21
    end
  end
  object pnlConteudo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 97
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
    TabOrder = 2
    object dbgrdGridLocalizarCaixa: TDBGrid
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
      OnKeyDown = dbgrdGridLocalizarCaixaKeyDown
    end
  end
  object QryLocCaixa: TIBQuery
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    SQL.Strings = (
      'select * from CAIXA')
    Left = 400
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = QryLocCaixa
    Left = 520
    Top = 160
  end
end
