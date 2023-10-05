unit UniRelVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TFrmRelVenda = class(TForm)
    pnlConteudo: TPanel;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    SummaryBand1: TQRBand;
    QryMovVenda: TIBQuery;
    QryMovVendaVEN_ID: TIntegerField;
    QryMovVendaFUN_ID: TIntegerField;
    QryMovVendaCLI_ID: TIntegerField;
    QryMovVendaVEN_DATA: TDateField;
    QryMovVendaVEN_VALOR: TIBBCDField;
    QryMovVendaVEN_TIPO_PAGAMENTO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVenda: TFrmRelVenda;

implementation

{$R *.dfm}

end.
