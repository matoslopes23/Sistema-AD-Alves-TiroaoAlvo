unit UServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, Mask, DB,
  IBCustomDataSet, IBTable;

type
  Tservicos = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    IBTable1: TIBTable;
    data: TMaskEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  servicos: Tservicos;

implementation

uses UNovoServico, UTabelas, UCliente;

{$R *.dfm}

procedure Tservicos.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tservicos.BitBtn1Click(Sender: TObject);
begin
  NovoServico.Showmodal;
end;

procedure Tservicos.BitBtn2Click(Sender: TObject);
  var codemp: string;
begin
  if Application.MessageBox
    ('Confirmar a devolução de Arma?',
    'Confirmação de Devolução',MB_YESNO)=IDYES then
  begin
    codemp:=Tabelas.ibservicos.FieldByName('CODIGO').AsString;
    Tabelas.ibservicos.Edit;
    Tabelas.ibservicos.FieldByName('DATADEV').
                               AsDateTime:=Date();
    Tabelas.ibservicos.FieldByName('HORADEV').
                               AsDateTime:=Time();
    Tabelas.ibservicos.Post;
    Tabelas.ibservicos.ApplyUpdates;
  end;

end;

procedure Tservicos.BitBtn4Click(Sender: TObject);
begin
  if Tabelas.ibclientes.Locate('DATASERV',data.Text,
           [loPartialKey])=True then
    Cliente.Visible:=True
  else
  begin
    ShowMessage('Data inexistente!! Informe uma outra data');
    Cliente.Visible:=False;
 
  end;
end;

end.
