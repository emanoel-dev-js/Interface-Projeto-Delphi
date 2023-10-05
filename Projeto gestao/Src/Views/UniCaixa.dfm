object FrmCaixa: TFrmCaixa
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FrmCaixa'
  ClientHeight = 286
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Caixa'
    Color = 5395026
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnlConteudo: TPanel
    Left = 0
    Top = 41
    Width = 702
    Height = 179
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    object lblID_TRAN: TLabel
      Left = 25
      Top = 0
      Width = 21
      Height = 21
      Caption = 'ID:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDATA_TRAN: TLabel
      Left = 155
      Top = 3
      Width = 38
      Height = 17
      Caption = 'DATA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDESCRICAO: TLabel
      Left = 24
      Top = 56
      Width = 75
      Height = 17
      Caption = 'DESCRICAO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVALOR: TLabel
      Left = 458
      Top = 74
      Width = 66
      Height = 25
      Caption = 'VALOR:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTIPO: TLabel
      Left = 413
      Top = 2
      Width = 34
      Height = 17
      Caption = 'TIPO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnLocalizar: TSpeedButton
      Left = 104
      Top = 21
      Width = 46
      Height = 33
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = BtnLocalizarClick
    end
    object pnlCODIGO: TPanel
      Left = 24
      Top = 20
      Width = 78
      Height = 34
      Color = 5395026
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 0
      object CX_ID_TRAN: TEdit
        Left = 4
        Top = 4
        Width = 70
        Height = 26
        Align = alClient
        Color = clScrollBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 23
      end
    end
    object pnlDATA: TPanel
      Left = 152
      Top = 20
      Width = 177
      Height = 34
      Color = 5395026
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 1
      object DateTimePicker1: TDateTimePicker
        Left = 4
        Top = 4
        Width = 169
        Height = 26
        Align = alClient
        Date = 45194.411106701390000000
        Time = 45194.411106701390000000
        Color = clGrayText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlDESCRICAO: TPanel
      Left = 24
      Top = 79
      Width = 305
      Height = 94
      Color = 5395026
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 2
      object CX_DESCRICAO: TEdit
        Left = 4
        Top = 4
        Width = 297
        Height = 86
        Align = alClient
        Color = clScrollBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object pnlVALOR: TPanel
      Left = 415
      Top = 105
      Width = 177
      Height = 41
      Color = 5395026
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 3
      object CX_VALOR: TCurrencyEdit
        Left = 4
        Top = 4
        Width = 169
        Height = 33
        Margins.Left = 6
        Margins.Top = 1
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlTIPO: TPanel
      Left = 411
      Top = 20
      Width = 177
      Height = 34
      Color = 5395026
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 4
      object CBB_TIPO: TComboBox
        Left = 4
        Top = 4
        Width = 169
        Height = 25
        Align = alClient
        Color = clScrollBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Items.Strings = (
          'Entrada'
          'Saida')
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 220
    Width = 702
    Height = 66
    Align = alBottom
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 2
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 127
      Height = 46
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
      Left = 562
      Top = 10
      Width = 137
      Height = 46
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
    end
  end
  object QryCAIXA: TIBQuery
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    Left = 248
    Top = 224
  end
  object SP_CAIXA: TIBStoredProc
    Database = ViewPrincipal.IbBanco
    Transaction = ViewPrincipal.TrBanco
    StoredProcName = 'SP_CAIXA'
    Left = 368
    Top = 224
  end
end
