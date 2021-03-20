unit UArmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB,
  IBCustomDataSet, IBTable;

type
  Tarmas = class(TForm)
    GroupBox3: TGroupBox;
    Rtipo: TRadioButton;
    RBcodigo: TRadioButton;
    Edit1: TEdit;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid1: TDBGrid;
    bitbtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBTable1: TIBTable;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  armas: Tarmas;

implementation

uses UTabelas, UCadastarArmas, Ualterarfunc, UAlterarArmas;

{$R *.dfm}

procedure Tarmas.BitBtn6Click(Sender: TObject);
begin
  close
end;

procedure Tarmas.BitBtn3Click(Sender: TObject);
begin
  tabelas.ibarmas.Edit; // permite a edição dos dados
  AlterarArmas.showModal;
end;

procedure Tarmas.bitbtn1Click(Sender: TObject);
begin
  CadastrarArmas.showmodal;
end;

procedure Tarmas.BitBtn4Click(Sender: TObject);
begin
  if Application.MessageBox('Confirma a Exclusão da arma?','Confirmação de Exclusão',MB_YESNO)=IDYES then
  Tabelas.ibarmas.Delete;
end;

procedure Tarmas.BitBtn2Click(Sender: TObject);
begin
   If Rtipo.Checked=true then
  begin
    If Tabelas.ibarmas.Locate('TIPO',Edit1.Text,[loPartialKey])=False then
      ShowMessage('Nome não encontrado');
    end;
  If RBCodigo.Checked=true then
  begin
    if Tabelas.ibarmas.Locate('CODIGO',Edit1.Text,[loCaseInsensitive])=false then
      ShowMessage('Fone não encontrado');
  end;
end;

end.
