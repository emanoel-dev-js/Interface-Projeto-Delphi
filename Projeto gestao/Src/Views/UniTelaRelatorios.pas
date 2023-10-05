unit UniTelaRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, qrpBaseCtrls, QRCtrls;

type
  TFrmResultadoRel = class(TForm)
    pnlConteudo: TPanel;
    QuickRep1: TQRPQuickrep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResultadoRel: TFrmResultadoRel;

implementation

{$R *.dfm}

end.
