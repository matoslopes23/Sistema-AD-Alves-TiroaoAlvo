unit UImprimirRelCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TImprimirCli = class(TForm)
    QuickRep1: TQuickRep;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRBand2: TQRBand;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImprimirCli: TImprimirCli;

implementation

uses UTabelas;

{$R *.dfm}

end.
