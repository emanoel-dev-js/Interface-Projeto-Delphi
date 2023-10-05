object LocFuncionarios: TLocFuncionarios
  Left = 0
  Top = 0
  Caption = 'LOCALIZAR FUNCIONARIOS'
  ClientHeight = 232
  ClientWidth = 633
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
  object pnlConteudo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 89
    Width = 627
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
    ExplicitLeft = 2
    ExplicitTop = 93
    ExplicitWidth = 633
    object dbgrdGridLocalizarFuncionario: TDBGrid
      AlignWithMargins = True
      Left = 12
      Top = 12
      Width = 603
      Height = 116
      Align = alClient
      DataSource = DataSource1
      GradientEndColor = clGray
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = dbgrdGridLocalizarFuncionarioKeyDown
    end
  end
  object pnlRadio: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -4
    ExplicitWidth = 639
    object RadioGroup1: TRadioGroup
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 619
      Height = 30
      Align = alClient
      Caption = 'Filtro Pesquisa:'
      Color = clWhite
      Items.Strings = (
        'Descricao')
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 625
    end
  end
  object pnlEdit: TPanel
    Left = 0
    Top = 44
    Width = 633
    Height = 42
    Align = alClient
    BevelOuter = bvNone
    Color = 5395026
    Padding.Left = 9
    Padding.Top = 9
    Padding.Right = 9
    Padding.Bottom = 9
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -4
    ExplicitWidth = 639
    ExplicitHeight = 46
    object edt1: TEdit
      Left = 9
      Top = 9
      Width = 615
      Height = 24
      Align = alClient
      TabOrder = 0
      OnKeyDown = edt1KeyDown
      ExplicitWidth = 621
      ExplicitHeight = 21
    end
  end
  object QryFuncionarios: TIBQuery
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    SQL.Strings = (
      'select * from FUNCIONARIOS')
    Left = 152
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = QryFuncionarios
    Left = 256
    Top = 160
  end
end
