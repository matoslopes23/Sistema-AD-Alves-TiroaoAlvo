unit Ucadastrologin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBTable;

type
  TCadastro = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    usu: TEdit;
    senha: TEdit;
    IBTable1: TIBTable;
    exibir: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure exibirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro: TCadastro;

implementation

uses UTabelas;

{$R *.dfm}

procedure TCadastro.BitBtn1Click(Sender: TObject);
 var cod:integer;
begin
if usu.Text='' then
    begin
    showmessage('O Login e a senha devem ser informados');
    usu.SetFocus;
    exit;
   end;

   if tabelas.iblogin.locate('USUARIO',usu.Text,[locaseInsensitive])=true then
     begin
       showmessage('Usuário já foi cadastrado');
       usu.Clear;
       usu.SetFocus;
       exit;
     end;
    if tabelas.iblogin.Locate('SENHA',senha.Text,[locaseInsensitive])=true then
      begin
      ShowMessage('Esta senha já foi cadastrada');
      senha.Clear;
      senha.SetFocus;
      exit;
      end;
     tabelas.iblogin.Last; // vai para o último registro
     cod:=tabelas.iblogin.fieldbyname('CODIGO').asinteger+1;
     tabelas.iblogin.Append; // cria um registro vazio
     tabelas.iblogin.Edit; // permite a edição do registro
     tabelas.iblogin.FieldByName('CODIGO').asinteger:=cod;
     tabelas.iblogin.FieldByName('USUARIO').asString:=usu.Text;
     tabelas.iblogin.FieldByName('SENHA').asString:=senha.Text;
     tabelas.iblogin.Post;
     tabelas.iblogin.ApplyUpdates;
     tabelas.IBTransaction1.CommitRetaining;
     showmessage('Salvo com sucesso');
     usu.Clear;
     senha.Clear;
     exibir.Checked:=false;
     close;
end;

procedure TCadastro.exibirClick(Sender: TObject);
begin
 if exibir.Checked=true then
  begin
   senha.PasswordChar:=#0;
  end else
  begin
   if exibir.Checked=false then
    begin
     senha.PasswordChar:='*';
   end;
    end;
 end;
procedure TCadastro.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
