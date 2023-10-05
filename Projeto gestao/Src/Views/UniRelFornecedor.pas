unit UniRelFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, IBCustomDataSet, IBQuery;

type
  TFrmRelFornecedor = class(TForm)
    pnlConteudo: TPanel;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    SummaryBand1: TQRBand;
    QryMovFornecedor: TIBQuery;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFornecedor: TFrmRelFornecedor;

implementation

{$R *.dfm}

end.
