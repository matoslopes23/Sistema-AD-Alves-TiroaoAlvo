unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Buttons, DB,
  IBCustomDataSet, IBTable;

type
  Tcliente = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    RBnome: TRadioButton;
    Edit1: TEdit;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBNavigator1: TDBNavigator;
    cad: TBitBtn;
    aplido: TRadioButton;
    BitBtn1: TBitBtn;
    IBTable1: TIBTable;
    procedure BitBtn6Click(Sender: TObject);
    procedure cadClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cliente: Tcliente;

implementation

uses UTabelas, UCadastrarCli, UAlterarArmas, UAlterarCli;

{$R *.dfm}

procedure Tcliente.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure Tcliente.cadClick(Sender: TObject);
begin
  CadastrarCli.showmodal;
end;

procedure Tcliente.BitBtn4Click(Sender: TObject);
begin
 if Application.MessageBox('Confirma a Exclusão da arma?','Confirmação de Exclusão',MB_YESNO)=IDYES then
  Tabelas.ibclientes.Delete; 
end;

procedure Tcliente.BitBtn3Click(Sender: TObject);
begin
  tabelas.ibclientes.Edit; // permite a edição dos dados
  AlterarCli.showModal;
end;

procedure Tcliente.BitBtn1Click(Sender: TObject);
begin
   If RBnome.Checked=true then
  begin
    If Tabelas.ibclientes.Locate('NOME',Edit1.Text,[loPartialKey])=False then
      ShowMessage('Nome não encontrado');
    end;
  If aplido.Checked=true then
  begin
    if Tabelas.ibclientes.Locate('APELIDO',Edit1.Text,[loCaseInsensitive])=false then
      ShowMessage('Fone não encontrado');
  end;
end;

end.
