unit UAlterusu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TalterarUsuario = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    exibir: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    sen: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure exibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  alterarUsuario: TalterarUsuario;

implementation

uses UTabelas;

{$R *.dfm}

procedure TalterarUsuario.BitBtn1Click(Sender: TObject);
begin
  Tabelas.iblogin.Post; //salvar as alterações
  tabelas.iblogin.ApplyUpdates; // atualiza tabelas
  tabelas.IBTransaction1.CommitRetaining; // salva no HD
  ShowMessage('Usuário e senha alterado com sucesso!!');
  Close;
end;

procedure TalterarUsuario.BitBtn2Click(Sender: TObject);
begin
  Tabelas.iblogin.Cancel;
  Tabelas.iblogin.CancelUpdates;
  Tabelas.IBTransaction1.RollbackRetaining;
  Close;
end;

procedure TalterarUsuario.exibirClick(Sender: TObject);
begin
  if  exibir.Checked= true then
          sen.PasswordChar:=#0
     else
          sen.PasswordChar:='*';
end;

end.
