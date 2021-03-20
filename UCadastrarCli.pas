unit UCadastrarCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Mask, DB, IBCustomDataSet,
  IBTable;

type
  TCadastrarCli = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rg: TEdit;
    ape: TEdit;
    endere: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    IBTable1: TIBTable;
    nome: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastrarCli: TCadastrarCli;

implementation

uses UTabelas;

{$R *.dfm}

procedure TCadastrarCli.BitBtn1Click(Sender: TObject);
begin
if rg.Text='' then
  begin
    ShowMessage('O codigo deve ser informado');
    RG.SetFocus;
    exit;
  end;

  if Tabelas.ibclientes.locate('RG',RG.Text,[locaseinsensitive])=true then
  begin
    ShowMessage('Este nome já foi cadastrado');
    RG.SetFocus;
    exit;
  end;

   tabelas.ibclientes.Last;
   tabelas.ibclientes.Append;
   tabelas.ibclientes.Edit;
   tabelas.ibclientes.FieldByName('Rg').AsString:=RG.text;
   tabelas.ibclientes.FieldByName('Nome').AsString:=nome.text;
   tabelas.ibclientes.FieldByName('Apelido').AsString:=ape.text;
   tabelas.ibclientes.FieldByName('Endereco').AsString:=endere.text;
   tabelas.ibclientes.post;
   tabelas.ibclientes.ApplyUpdates;
   tabelas.IBTransaction1.CommitRetaining;
   ShowMessage('Cliente cadastrado com sucesso');
   close;



end;

procedure TCadastrarCli.BitBtn2Click(Sender: TObject);
begin
  close
end;

end.
