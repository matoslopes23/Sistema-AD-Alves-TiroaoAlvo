unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, DB, IBCustomDataSet, IBTable;

type
  TLogin = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    usuario: TEdit;
    senha: TEdit;
    IBTable1: TIBTable;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses UPrincipal, UTabelas;

{$R *.dfm}

procedure TLogin.BitBtn2Click(Sender: TObject);
begin
  close;

end;

procedure TLogin.BitBtn1Click(Sender: TObject);
  var nome1,pass:string;
begin
  nome1:=usuario.Text;
  pass:=senha.Text;
 if tabelas.iblogin.locate('USUARIO',nome1,[locaseinsensitive])=true then
 begin
   if tabelas.iblogin.FieldByName('SENHA').AsString=pass then
    begin
     usuario.Clear;
     senha.Clear;
     usuario.SetFocus;
     Principal.ShowModal;
    end
    else
   begin
    showmessage('Usu?rio ou Senha incorreto');
    usuario.Clear;
    senha.Clear;
    usuario.SetFocus;
   end;
   end
    else
   begin
    showmessage('Usu?rio ou Senha incorreto');
    usuario.Clear;
    senha.Clear;
    usuario.SetFocus;
   end;
end;

procedure TLogin.FormShow(Sender: TObject);
begin
 usuario.SetFocus;
end;

end.
