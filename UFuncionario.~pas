unit UFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, Buttons, DB,
  IBCustomDataSet, IBTable;

type
  Tfuncionario = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox3: TGroupBox;
    RBnome: TRadioButton;
    RBfone: TRadioButton;
    Edit1: TEdit;
    cad: TBitBtn;
    Button1: TButton;
    IBTable1: TIBTable;
    procedure BitBtn6Click(Sender: TObject);
    procedure cadClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  funcionario: Tfuncionario;

implementation

uses UTabelas, UCadastrarFuncionario, Ualterarfunc;

{$R *.dfm}

procedure Tfuncionario.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure Tfuncionario.cadClick(Sender: TObject);
begin
   CadastrarFuncionario.showmodal;
end;

procedure Tfuncionario.BitBtn3Click(Sender: TObject);
begin
 tabelas.ibfuncionario.Edit; // permite a edição dos dados
  AlterarFunc.showModal;
end;

procedure Tfuncionario.BitBtn4Click(Sender: TObject);
begin
  if Application.MessageBox('Confirma a Exclusão do Contato?','Confirmação de Exclusão',MB_YESNO)=IDYES then
  Tabelas.ibfuncionario.Delete;
end;

procedure Tfuncionario.Button1Click(Sender: TObject);
begin
   If RBnome.Checked=true then
  begin
    If Tabelas.ibfuncionario.Locate('NOME',Edit1.Text,[loPartialKey])=False then
      ShowMessage('Nome não encontrado');
    end;
  If RBfone.Checked=true then
  begin
    if Tabelas.ibfuncionario.Locate('TELEFONE',Edit1.Text,[loCaseInsensitive])=false then
      ShowMessage('Fone não encontrado');
  end;
end;

end.
