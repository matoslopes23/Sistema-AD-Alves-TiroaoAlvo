unit URelClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TRelCli = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelCli: TRelCli;

implementation

uses UTabelas, UImprimirRelCli;

{$R *.dfm}

procedure TRelCli.BitBtn1Click(Sender: TObject);
begin
   ImprimirCli.QuickRep1.Preview;
end;

end.
